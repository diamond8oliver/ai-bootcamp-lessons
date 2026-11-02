#!/usr/bin/env bash
# Build lesson materials into out/ (in the repo that holds each source file).
#   Decks  (*-slides.md, lessons/slides/*.md)  -> .pptx (pandoc, EDITABLE, with speaker notes)
#                                                + .pdf  (Marp, polished)
#   Docs   (lessons, artifacts, intake, retro) -> .docx (pandoc) + .pdf (pandoc HTML -> headless Chrome)
#
# Usage:
#   scripts/build.sh <file.md> [<file.md> ...]   # files from this repo or the private sessions repo
#   scripts/build.sh --templates                 # slide, lesson and artifact templates (smoke test)
#   scripts/build.sh --all [dir]                 # every deck, lesson and artifact under dir (default: this repo)
#
# Output names follow the team convention so files can be copied into
# "Session N Materials" as-is:  t1s4-comms-slides.md -> "Session 4 - Comms - Deck.pptx"
set -euo pipefail

MARP_VERSION="4.5.1"   # pinned; bump deliberately
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CSS="$ROOT/scripts/print.css"
MARP2PPTX="$ROOT/scripts/marp2pptx.py"

die() { echo "build.sh: $*" >&2; exit 1; }

find_chrome() {
  if [[ -n "${CHROME_PATH:-}" && -x "${CHROME_PATH}" ]]; then echo "$CHROME_PATH"; return; fi
  local c
  for c in \
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
    "$HOME/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
    "$(command -v google-chrome 2>/dev/null || true)" \
    "$(command -v chromium 2>/dev/null || true)"; do
    [[ -n "$c" && -x "$c" ]] && { echo "$c"; return; }
  done
  return 1
}

check_tools() {
  command -v pandoc >/dev/null  || die "pandoc not found. Install: brew install pandoc"
  command -v npx >/dev/null     || die "npx not found. Install Node 18+ (https://nodejs.org)"
  command -v python3 >/dev/null || die "python3 not found"
  CHROME="$(find_chrome)"       || die "Google Chrome not found. Install it, or set CHROME_PATH"
  export CHROME_PATH="$CHROME"
}

# out/ inside the git repo that holds the source file (falls back to this repo)
out_dir_for() {
  local top
  top="$(git -C "$(dirname "$1")" rev-parse --show-toplevel 2>/dev/null || echo "$ROOT")"
  mkdir -p "$top/out"
  echo "$top/out"
}

# t1s4-comms-slides.md -> "Session 4 - Comms - Deck"; t2s1-x-lesson.md -> "Track 2 Session 1 - X - Peer Leader Guide"
out_name() {
  local base kind="$2"
  base="$(basename "$1" .md)"
  if [[ "$base" =~ ^t([0-9]+)s([0-9]+)-(.+)-(slides|artifact|lesson|intake|retro)$ ]]; then
    local track="${BASH_REMATCH[1]}" sess="${BASH_REMATCH[2]}" topic="${BASH_REMATCH[3]}"
    topic="$(echo "$topic" | tr '-' ' ' | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2); if($i=="Ai") $i="AI" }}1')"
    local prefix="Session $sess"
    [[ "$track" != "1" ]] && prefix="Track $track Session $sess"
    echo "$prefix - $topic - $kind"
  elif [[ "$base" =~ ^t([0-9]+)s([0-9]+)-(intake|retro)$ ]]; then
    local prefix="Session ${BASH_REMATCH[2]}"
    [[ "${BASH_REMATCH[1]}" != "1" ]] && prefix="Track ${BASH_REMATCH[1]} Session ${BASH_REMATCH[2]}"
    echo "$prefix - $kind"
  else
    echo "$base - $kind"
  fi
}

build_deck() {
  local src="$1" name out tmp
  name="$(out_name "$src" "Deck")"; out="$(out_dir_for "$src")"
  echo "deck   $src -> ${out}/$name.{pptx,pdf}"
  tmp="$(mktemp -d)"
  python3 -I "$MARP2PPTX" "$src" > "$tmp/deck.md" || { rm -rf "$tmp"; die "marp2pptx failed on $src"; }
  pandoc "$tmp/deck.md" -t pptx --resource-path="$(dirname "$src")" -o "$out/$name.pptx" \
    || { rm -rf "$tmp"; die "pandoc (pptx) failed on $src"; }
  rm -rf "$tmp"
  (cd "$(dirname "$src")" && \
    npx --yes "@marp-team/marp-cli@$MARP_VERSION" --allow-local-files --pdf \
      -o "$out/$name.pdf" "$(basename "$src")" >/dev/null 2>&1) \
    || die "Marp (pdf) failed on $src"
}

build_doc() {
  local src="$1" kind="$2" name out tmp
  name="$(out_name "$src" "$kind")"; out="$(out_dir_for "$src")"
  echo "doc    $src -> ${out}/$name.{docx,pdf}"
  (cd "$(dirname "$src")" && pandoc "$(basename "$src")" -o "$out/$name.docx") \
    || die "pandoc (docx) failed on $src"
  tmp="$(mktemp -d)"
  (cd "$(dirname "$src")" && pandoc "$(basename "$src")" --standalone --embed-resources \
      --css "$CSS" --metadata pagetitle="$name" -o "$tmp/doc.html") \
    || { rm -rf "$tmp"; die "pandoc (html) failed on $src"; }
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf-no-header \
    --print-to-pdf="$out/$name.pdf" "file://$tmp/doc.html" >/dev/null 2>&1 \
    || { rm -rf "$tmp"; die "Chrome PDF failed on $src"; }
  rm -rf "$tmp"
  [[ -s "$out/$name.pdf" ]] || die "empty PDF for $src"
}

build_one() {
  local src="$1"
  [[ -f "$src" ]] || die "no such file: $src"
  src="$(cd "$(dirname "$src")" && pwd)/$(basename "$src")"
  case "$src" in
    *-slides.md|*/lessons/slides/*.md)              build_deck "$src" ;;
    *-artifact.md|*/lessons/artifacts/*.md)         build_doc "$src" "Artifact" ;;
    *-lesson.md|*/lesson-template.md)               build_doc "$src" "Peer Leader Guide" ;;
    *-intake.md)                                    build_doc "$src" "Intake" ;;
    *-retro.md)                                     build_doc "$src" "Retro" ;;
    *.md)                                           build_doc "$src" "Doc" ;;
    *)                                              die "not a markdown file: $src" ;;
  esac
}

TEMPLATES=(
  "$ROOT/lessons/slides/template.md"
  "$ROOT/lessons/lesson-template.md"
  "$ROOT/lessons/artifacts/artifact-template.md"
)

[[ $# -ge 1 ]] || die "usage: scripts/build.sh <file.md>... | --templates | --all [dir]"
check_tools

files=()
case "$1" in
  --templates) files=("${TEMPLATES[@]}") ;;
  --all)
    dir="$(cd "${2:-$ROOT}" && pwd)" || die "no such directory: ${2:-}"
    [[ "$dir" == "$ROOT" ]] && files=("${TEMPLATES[@]}")
    shopt -s nullglob
    for f in "$dir"/lessons/slides/*.md "$dir"/lessons/artifacts/*.md "$dir"/lessons/*-lesson.md; do
      case "$f" in */template.md|*/artifact-template.md|*/README.md) continue ;; esac
      files+=("$f")
    done
    ;;
  *) files=("$@") ;;
esac

[[ ${#files[@]} -gt 0 ]] || die "nothing to build"
for f in "${files[@]}"; do build_one "$f"; done
echo "done: ${#files[@]} source file(s)"
