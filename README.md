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
turns each one into a researched, current, rehearsed session, and
gets better every time it runs.

| # | Stage | Input → output | Use |
|---|---|---|---|
| 0 | **Intake** | Approved plan → objectives, artifact, locked vs. free to redesign, platform facts to check | `lessons/approved-plan-intake-template.md` |
| 1 | **Topic radar** | Intake → current AI developments that fit the objectives, each with a live failure and a debate angle | `prompts/topic-radar.md` |
| 2 | **Research, fresh** | Chosen radar rows → research brief + claim matrix. No lesson starts without both | `docs/up-to-date-research-playbook.md`, `docs/research-method.md`, `prompts/research-agent.md` |
| 3 | **Design for thinking, not coverage** | Matrix + intake → lesson with a cold open, a failure students catch, a debate, and a teach-back | `docs/creative-teaching-playbook.md`, `prompts/lesson-designer.md` |
| 4 | **Build from the same matrix** | Lesson → Marp deck + student artifact, exported to .pptx / .pdf / .docx | `lessons/slides/template.md`, `lessons/artifacts/artifact-template.md`, `scripts/build.sh` |
| 5 | **Critic** | Deck + artifact → fixes, or open questions flagged in the lesson | `prompts/slide-critic.md` |
| 6 | **Prep** | T-7d / T-1d / T-1h: re-run failure demos, capture backups, rehearse, print | `CHECKLIST.md` |
| 7 | **Retro** | Taught session → timing actuals, what landed, claims to update. Feeds the next run | `lessons/retro-template.md` |

If the critic cannot name what is surprising, what is debatable, and
what students will argue about, the lesson is not ready.

The research behind the design rules is in
`research/teaching-methods-brief.md` (claims T-01… in
`comparisons/teaching-methods-matrix.md`). A November 2026 snapshot
of current AI topics for every Track 1 session is in
`research/t1-topic-radar-2026-11.md`.

## Repo layout

```
README.md                  this file: the approach
CLAUDE.md                  instructions for Claude Code
Guardrails.md              scope, publishing rules, prohibited actions
CHECKLIST.md               pre-teach review + prep timeline
README-team-adapted.md     version mapped to the real Teams folders
LICENSE                    CC BY 4.0
docs/
  creative-teaching-playbook.md   how to make lessons intriguing
  up-to-date-research-playbook.md  how to stay current
  research-method.md              cross-compare, claim by claim
  slide-design-guide.md           one claim per slide, no bullet walls
prompts/
  topic-radar.md           current AI topics that fit an approved plan
  research-agent.md        find and compare the best current sources
  lesson-designer.md       turn a matrix into a thought-provoking lesson
  slide-critic.md          review a deck like a skeptical student
research/                  briefs + radar snapshots (public sources)
  teaching-methods-brief.md
  t1-topic-radar-2026-11.md
comparisons/               one claim matrix per topic
  teaching-methods-matrix.md
lessons/
  approved-plan-intake-template.md
  lesson-template.md
  retro-template.md
  example-creative-session.md   a redesigned, thought-provoking session
  slides/template.md       Marp deck template
  artifacts/artifact-template.md
scripts/
  build.sh                 Marp → .pptx/.pdf, markdown → .docx/.pdf
out/                       build outputs (gitignored)
```

Session files (`lessons/t1s4-…`, decks, artifacts) are gitignored
until the program lead clears publishing. See `Guardrails.md`.

## The three non-negotiables

- **No claim without a source in the matrix.** If it is not in
  the matrix, it is not in the lesson.
- **No lesson without a failure.** Every session shows AI failing,
  convincingly, and students have to catch it.
- **No lesson without student production.** Students make, defend,
  or debate something in class. Watching is not learning.

## How to hand this to Claude Code

Give Claude Code this repo and say: "Follow CLAUDE.md. Start with
intake for [session], then the topic radar, the research agent
prompt, the lesson designer prompt, and the slide critic prompt. Do
not skip the claim matrix or the critic pass." That is the whole
handoff. The prompts in `prompts/` are written to be pasted in
as-is.

## Build

Requirements: [pandoc](https://pandoc.org) (`brew install pandoc`),
Node 18+ (for `npx`), and Google Chrome (used by Marp for .pptx and
.pdf, and for markdown→PDF).

```bash
scripts/build.sh lessons/slides/t1s4-comms-slides.md   # one file
scripts/build.sh --all                                 # every deck, lesson, artifact
scripts/build.sh --templates                           # the templates (smoke test)
```

| Source | Outputs (in `out/`) |
|---|---|
| `lessons/slides/*.md` | `.pptx` (slides as images + speaker notes) and `.pdf` |
| `lessons/artifacts/*.md`, `lessons/*-lesson.md` | `.docx` and `.pdf` |

The .pptx slides are images: edit the markdown and rebuild, not the
PowerPoint. Session slugs (`t1s4`) are renamed to the team convention
(`Session 4 - …`) so the files can go straight into
`Session N Materials`.

## License

CC BY 4.0 (see `LICENSE`). The research files cite third-party
sources, which keep their own licenses.

## Next Steps

1. **Session 4 (Nov 4): first pilot.** Run intake → design on the
   approved Session 4 plan. The radar rows are ready (R4-01 voice
   drift, R4-02 disclosure penalty, R4-03 detector policy, R4-04
   workslop). Fix the minute-44 timing collision flagged in
   `README-team-adapted.md`. Re-verify the radar rows before
   teaching (they are a Nov 1 snapshot).
2. **Session 5 (Nov 18).** Same flow, using R5-01 to R5-04
   (entry-level jobs debate, NACE numeracy trap, AI-use statement).
3. **Check which Claude plan SU students are on.** That decides
   whether memory is on by default (R1-05), which matters for demos.
4. **Ask the program lead** whether finished SU session content can
   be published. Until then it stays gitignored (`Guardrails.md`).
5. **Fill the research gaps** listed in
   `research/teaching-methods-brief.md` (backward design, university
   teaching-center guidance, worked examples) on the next research
   run.
