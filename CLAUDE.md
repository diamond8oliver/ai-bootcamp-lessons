# CLAUDE.md: Instructions for Claude Code working in this repo

You are building AI lessons for undergraduate and early professional
students in an AI skills boot camp. The students are not computer
science majors. The goal is judgment with AI, not tool trivia.

## Hard rules

- Never invent a source, a statistic, a quote, or a link. If you
  cannot verify it from a source you actually read, mark it as
  unverified and do not teach it.
- Never write a lesson from a single source. Minimum 3 sources,
  mixed types, with a claim matrix in `comparisons/`.
- Never produce a bullet-wall deck. One claim per slide, full
  sentence headline, evidence on the slide, explanation in speaker
  notes.
- Never end a lesson with a summary slide. End with students
  producing or defending something.
- Never include student names, grades, or private class data.
- Never claim a tool behaves a certain way unless the research
  brief confirms it, with a date. AI tools change fast; date every
  tool claim.

## Workflow, in order, no skipping steps

The stages, timing, and files are defined **only** in the pipeline
table in `README.md`. Short version:

- **Semester start:** track radar (`prompts/topic-radar.md`) against all
  the approved plans.
- **0 Intake** → **1 Research** (claim matrix; refresh at T-30 days) →
  **2 Design + build** (lesson, deck, and artifact in one pass) →
  **3 Critic** (must say READY) → **4 Prep** (`CHECKLIST.md`) →
  **5 Retro**.
- Session content is written to the **private** sessions repo
  (`../AI Bootcamp Sessions`), never to this one.
- Approved activities are **upgraded, not replaced**
  (`docs/creative-teaching-playbook.md`).

## Quality bar

A lesson passes only if you can answer all of these yes:

- What is the cold open, and what question does it leave unanswered?
- What AI failure do students see, and do they catch it themselves?
- What will students argue or disagree about in this lesson?
- What do students produce, and how is it checked live?
- What is the most up-to-date claim in the lesson, and when was
  it verified?

## Rigor bar (college level, house rule H-05)

Every session also clears all five:

1. Students read part of at least one **primary source** (a study,
   policy, or official document), not a summary of it.
2. Students **judge the evidence**: sample size, who ran or funded it,
   date, which model was tested, and descriptive vs. causal.
3. Students make a **claim and defend it with evidence**, not opinion.
4. At least one **genuine disagreement** between two **named,
   verified** positions (people, studies, or institutions) is shown
   honestly.
5. **No button-teaching** unless it serves a judgment.

## File naming

`[session]` is a track+session slug: `t1s4` = Track 1, Session 4.

Track radar (public, this repo): `research/t[N]-topic-radar-YYYY-MM.md`.
Everything below lives in the **private sessions repo**, at the same
relative paths:

- Intake: `lessons/[session]-intake.md`
- Retro: `lessons/[session]-retro.md`
- Research: `research/[topic]-brief.md`
- Matrix: `comparisons/[topic]-matrix.md`
- Lesson: `lessons/[session]-[topic]-lesson.md`
- Deck: `lessons/slides/[session]-[topic]-slides.md`
- Artifact: `lessons/artifacts/[session]-[topic]-artifact.md`

## Build and export

- `scripts/build.sh` needs pandoc, `npx` (Node 18+), Python 3, and
  Google Chrome. It fails loudly if any are missing. Don't work around
  it.
- Decks → an **editable** `.pptx` with speaker notes (via
  `scripts/marp2pptx.py` + pandoc) and a polished `.pdf` (Marp, pinned
  version). Edit the markdown, then rebuild.
- Lessons → "Peer Leader Guide" `.docx` + `.pdf`. Artifacts, intake,
  and retros → `.docx` + `.pdf`.
- Outputs land in `out/` of the repo holding the source, with
  team-convention names (`Session 4 - [Topic] - Deck.pptx`).
- Copy outputs into the shared Teams folder only when asked to.

## Publishing

Read `Guardrails.md` before any commit. This repo is **public**: it
holds the method and public-source research only. Session content
goes in the private sessions repo. Never commit anything from the
Teams folder, people's names, rooms, schedules, or absolute local
paths, in either repo.

## Tone

Direct, plain language, no filler, no hype about AI. Show the
limits as clearly as the capabilities. Students should leave more
skeptical and more capable, not more impressed.
