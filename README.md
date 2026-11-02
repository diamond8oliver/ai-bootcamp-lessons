# AI Lesson Lab: Best Practice README

How to build AI lessons that are creative, intriguing, and thought
provoking, not slide decks students forget by lunch. Built for the
AI Bootcamp Peer Leaders (NCC 100, AI Professional Skills, 25-student
cohort, five sessions), and written so Claude Code can run the whole
pipeline from this repo alone.

Read this first, then hand Claude Code `CLAUDE.md`. Everything else
in this repo is a template or a prompt Claude Code can execute.

## Why the current version sucks, and what replaces it

Most AI lessons fail in the same four ways:

1. They teach buttons before they teach judgment. Students leave
   knowing where to click, not when to trust the output.
2. They show only successes. AI looks magic, so students never
   learn its failure modes.
3. They lecture, then ask students to repeat. No tension, no
   surprise, no reason to care.
4. They are built from one source, once, and never updated. AI
   tools change monthly, so a static lesson rots fast.

This repo fixes all four, in this order: find what is true and
current, design for tension and thinking, build slides and artifacts
from the same evidence, then review like a critic, not a fan.

## The niche, stated plainly

You are not teaching computer science students. You are teaching
undergraduates and early professionals how to use AI well at work:
prompting, checking citations, analyzing data, communicating
professionally, and presenting work. The skill that matters is not
coding. It is judgment: when to use AI, how to check it, where it
breaks, and how to say what you did with it honestly.

Every lesson in this repo must therefore answer, in plain language:
what decision does this skill improve, what does a bad version look
like, and how do you catch it when it goes wrong.

## The pipeline (Claude Code runs this)

Lesson plans arrive already approved by the program. This pipeline
turns each one into a researched, current, rehearsed, college-level
session, and gets better every time it runs. **This table is the only
full description of the pipeline.** Other files link here.

| # | Stage | When | Input → output | Use |
|---|---|---|---|---|
| — | **Track radar** | Semester start | All approved plans → current AI developments that fit them, each with a live failure, a debate angle, and who funded it | `prompts/topic-radar.md` |
| 0 | **Intake** | When plans arrive | Approved plan → objectives, artifact, approved activity flow, locked vs. free, platform facts | `lessons/approved-plan-intake-template.md` |
| 1 | **Research** | Build time, then **refresh at T-30 days** | Chosen radar rows → brief + claim matrix. The refresh re-verifies every claim before teaching | `prompts/research-agent.md`, `docs/up-to-date-research-playbook.md`, `docs/research-method.md` |
| 2 | **Design + build** | Build time | Matrix + intake → lesson (exported as the Peer Leader Guide), deck, and artifact, in one pass from one matrix | `prompts/lesson-designer.md`, `docs/creative-teaching-playbook.md`, templates in `lessons/`, `scripts/build.sh` |
| 3 | **Critic** | After build and after each refresh | Deck + artifact → READY, or a list of fixes. Includes the evidence, deck, privacy, and **rigor-bar** checks | `prompts/slide-critic.md` |
| 4 | **Prep** | T-7d / T-1d / T-1h | Re-run failure demos, capture backups, rehearse, print | `CHECKLIST.md` |
| 5 | **Retro** | Within 48 h of teaching | Timing actuals, what landed, exit-ticket counts, claims to update. Feeds the next run | `lessons/retro-template.md` |

If the critic cannot name what is surprising, what is debatable, and
what students will argue about, the lesson is not ready.

**Where things live.** This public repo holds the method: playbooks,
prompts, templates, the build script, and research from public
sources. Real session content (intake, lessons, decks, artifacts,
retros) lives in the **private** `ai-bootcamp-sessions` repo, cloned
next to this one. See `Guardrails.md`. `QUICKSTART.md` is the one-page
version for peer leaders.

The research behind the design rules is in
`research/teaching-methods-brief.md` (claims T-01… in
`comparisons/teaching-methods-matrix.md`). A November 2026 snapshot
of current AI topics, built against the Fall 2026 Track 1 plans, is in
`research/t1-topic-radar-2026-11.md`.

## Repo layout

```
README.md                  this file: the approach + the pipeline
QUICKSTART.md              one page: peer leaders + semester timeline
CLAUDE.md                  instructions for Claude Code
Guardrails.md              scope, publishing rules, prohibited actions
CHECKLIST.md               prep timeline (T-7d / T-1d / T-1h) + after
README-team-adapted.md     version mapped to the real Teams folders
LICENSE                    CC BY 4.0
docs/
  creative-teaching-playbook.md   how to make lessons intriguing
  up-to-date-research-playbook.md  how to stay current
  research-method.md              cross-compare, claim by claim
  slide-design-guide.md           one claim per slide, no bullet walls
prompts/
  topic-radar.md           semester-start scan of current AI topics
  research-agent.md        build + T-30 refresh of a session's claim matrix
  lesson-designer.md       lesson + deck + artifact from one matrix
  slide-critic.md          skeptical-student review + evidence/rigor checks
research/                  briefs + radar snapshots (public sources)
  teaching-methods-brief.md
  t1-topic-radar-2026-11.md
comparisons/               claim matrices for public-source research
  teaching-methods-matrix.md
lessons/
  approved-plan-intake-template.md
  lesson-template.md       exports as "Peer Leader Guide"
  retro-template.md
  example-creative-session.md   illustrative redesign (not teachable as-is)
  slides/template.md       Marp deck template
  artifacts/artifact-template.md
scripts/
  build.sh                 decks → editable .pptx + .pdf; docs → .docx + .pdf
  marp2pptx.py             Marp → pandoc converter (speaker notes kept)
  print.css                PDF styling
out/                       build outputs (gitignored)
```

Session files (`t1s4-…`) are also gitignored here, as a safety net in
case one is saved in the wrong repo.

## The four non-negotiables

- **No claim without a source in the matrix.** If it is not in
  the matrix, it is not in the lesson.
- **No lesson without a failure.** Every session shows AI failing,
  convincingly, and students have to catch it.
- **No lesson without student production.** Students make, defend,
  or debate something in class. Watching is not learning.
- **No lesson below college level.** Students read part of a real
  study, policy, or official document, judge how strong its evidence
  is, defend a claim with it, and see two named positions disagree
  (the rigor bar, house rule H-05 in
  `comparisons/teaching-methods-matrix.md`).

## How to hand this to Claude Code

From the private sessions repo, say: "Follow ../AI Bootcamp Lessons/CLAUDE.md.
Run intake for [session], then the research agent, the lesson designer,
and the slide critic. Do not skip the claim matrix or the critic pass."
At the start of a semester, run the track radar first. The prompts in
`prompts/` are written to be pasted in as-is.

## Build

Requirements: [pandoc](https://pandoc.org) (`brew install pandoc`),
Node 18+ (for `npx`), Python 3, and Google Chrome (for the PDFs).

```bash
scripts/build.sh ../"AI Bootcamp Sessions"/lessons/slides/t1s2-research-slides.md  # one file
scripts/build.sh --all ../"AI Bootcamp Sessions"                                   # a whole repo
scripts/build.sh --templates                                                       # smoke test
```

| Source | Outputs (in `out/` of the repo holding the source) |
|---|---|
| Decks: `*-slides.md` | **Editable** `.pptx` with speaker notes (pandoc), plus a polished `.pdf` (Marp) |
| `*-lesson.md` | `Peer Leader Guide` `.docx` + `.pdf` |
| `*-artifact.md`, `*-intake.md`, `*-retro.md` | `.docx` + `.pdf` |

The .pptx uses PowerPoint's plain default layout. Apply a theme in
PowerPoint (Design → Themes), or add an SU-styled `reference.pptx`
later. Each slide's source line (`_footer`) becomes an italic
"Source:" line, and presenter-note comments become real speaker notes.
Session slugs (`t1s4`) are renamed to the team convention
(`Session 4 - …`), so the files can go straight into
`Session N Materials`.

## License

CC BY 4.0 (see `LICENSE`). The research files cite third-party
sources, which keep their own licenses.

## Next Steps

Target: **next semester's** sessions. This semester's remaining
sessions are taught as-is.

1. **Get next semester's approved plans** from the program lead and put
   them in the private repo's `plans/` (gitignored there too).
2. **Run intake** for every session. Note which approved activities are
   locked, and the platform facts (which Claude plan students are on,
   memory default).
3. **Re-run the track radar** (`prompts/topic-radar.md`) against those
   plans. The Nov 2026 snapshot is leads only.
4. **Build session 1 as the reference example** (research → design +
   build → critic), review it with your co-leader, then batch the rest.
5. **At T-30 days per session:** research refresh + critic again.
6. **Ask the program lead** whether finished SU session content may
   ever be published. Until then it stays in the private repo.
7. **Next research run:** fill gaps T-30 to T-32 (backward design,
   teaching-center guidance, worked examples).
