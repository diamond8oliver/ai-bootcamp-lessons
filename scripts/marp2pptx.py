#!/usr/bin/env python3
"""Convert a Marp deck into pandoc markdown for an editable .pptx.

Marp keeps presenter notes in HTML comments and per-slide settings in
directive comments. pandoc's PowerPoint writer wants notes in a
`::: notes` div and ignores raw HTML. This script bridges the two:

- front matter: keeps `title`, drops Marp settings (theme, style, ...)
- `---` lines stay slide breaks
- directive comments (`<!-- _class: lead -->`, `<!-- _footer: ... -->`) are
  removed; a non-empty `_footer` becomes an italic "Source:" line
- every other comment becomes a `::: notes` div
- Marp image size hints (`![w:700](...)`) are stripped from alt text

Usage: marp2pptx.py deck.md > deck.pandoc.md   (stdlib only)
"""
import re
import sys

# Marp/Marpit directive keys (global + local); `_` prefix = this slide only.
DIRECTIVES = {
    "theme", "style", "headingDivider", "size", "math", "title", "author",
    "description", "keywords", "url", "image", "marp", "lang", "transition",
    "paginate", "header", "footer", "class", "backgroundColor",
    "backgroundImage", "backgroundPosition", "backgroundRepeat",
    "backgroundSize", "color",
}
COMMENT = re.compile(r"<!--(.*?)-->", re.DOTALL)
DIRECTIVE_LINE = re.compile(r"^\s*_?([A-Za-z]+)\s*:\s*(.*?)\s*$")
IMG_SIZE = re.compile(r"!\[((?:\s*(?:w|h|width|height):\S+)+)\s*\]")


def split_front_matter(text):
    lines = text.splitlines()
    if lines and lines[0].strip() == "---":
        for i in range(1, len(lines)):
            if lines[i].strip() == "---":
                return lines[1:i], "\n".join(lines[i + 1:])
    return [], text


def split_slides(body):
    slides, cur, fenced = [], [], False
    for line in body.splitlines():
        if line.lstrip().startswith("```"):
            fenced = not fenced
        if line.strip() == "---" and not fenced:
            slides.append("\n".join(cur))
            cur = []
        else:
            cur.append(line)
    slides.append("\n".join(cur))
    return [s for s in slides if s.strip()]


def directive(comment):
    """Return {key: value} if every non-empty line is a known directive."""
    found = {}
    for line in comment.strip().splitlines():
        if not line.strip():
            continue
        m = DIRECTIVE_LINE.match(line)
        if not m or m.group(1) not in DIRECTIVES:
            return None
        found[line.strip().split(":", 1)[0].strip()] = m.group(2).strip().strip("\"'")
    return found or None


def convert_slide(slide):
    notes, source = [], None

    def repl(m):
        nonlocal source
        d = directive(m.group(1))
        if d is None:
            notes.append(m.group(1).strip())
        elif d.get("_footer"):
            source = d["_footer"]
        return ""

    body = COMMENT.sub(repl, slide)
    body = IMG_SIZE.sub("![]", body).strip()
    parts = [body]
    if source:
        parts.append(f"*Source: {source}*")
    if notes:
        parts.append("::: notes\n" + "\n\n".join(notes) + "\n:::")
    return "\n\n".join(parts)


def main(path):
    text = open(path, encoding="utf-8").read()
    meta, body = split_front_matter(text)
    out = []
    for line in meta:
        m = DIRECTIVE_LINE.match(line)
        if m and m.group(1) == "title" and not line.startswith("_"):
            out += ["---", f"title: {m.group(2)}", "---", ""]
    out.append("\n\n---\n\n".join(convert_slide(s) for s in split_slides(body)))
    sys.stdout.write("\n".join(out) + "\n")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit("usage: marp2pptx.py deck.md")
    main(sys.argv[1])
