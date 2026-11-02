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

Stage numbers match the pipeline table in `README.md`.

0. **Intake.** Fill `lessons/approved-plan-intake-template.md` from
   the approved lesson plan. Objectives, the artifact, and badge
   criteria are locked. Check and date the platform facts.
1. **Topic radar.** Run `prompts/topic-radar.md` with the intake.
   Write `research/[session]-radar.md`, then pick 1–3 rows for the
   lesson. Copy any stale claims into the intake.
2. **Research.** Read `docs/up-to-date-research-playbook.md` and
   `docs/research-method.md`, then run `prompts/research-agent.md` for
   the chosen rows. Write the research brief to `research/` and the
   claim matrix to `comparisons/`.
3. **Design.** Read `docs/creative-teaching-playbook.md` and run
   `prompts/lesson-designer.md`. Write the lesson to `lessons/`.
4. **Build.** Make the deck from `lessons/slides/template.md` and the
   artifact from `lessons/artifacts/artifact-template.md`, both from
   the same claim matrix. Export with `scripts/build.sh <file>` (or
   `--all`), then open every output. Check that the .pptx has speaker
   notes and that the .docx/.pdf have every section.
5. **Critic.** Run `prompts/slide-critic.md` on the deck and the
   artifact. Fix every issue the critic finds, or explicitly flag it
   in the lesson as an open question. Then run Part A of
   `CHECKLIST.md`.
6. **Prep.** Work through the `CHECKLIST.md` timeline. The day
   before, re-run every failure prompt on the students' plan and
   capture backup screenshots. Failure demos decay.
7. **Retro.** Within 48 hours of teaching, fill in
   `lessons/retro-template.md`. Update the matrix rows it flags, and
   add unanswered questions to the next radar run.

## Quality bar

A lesson passes only if you can answer all of these yes:

- What is the cold open, and what question does it leave unanswered?
- What AI failure do students see, and do they catch it themselves?
- What will students argue or disagree about in this lesson?
- What do students produce, and how is it checked live?
- What is the most up-to-date claim in the lesson, and when was
  it verified?

## File naming

`[session]` is a track+session slug: `t1s4` = Track 1, Session 4.

- Intake: `lessons/[session]-intake.md`
- Radar: `research/[session]-radar.md`
- Retro: `lessons/[session]-retro.md`
- Research: `research/[topic]-brief.md`
- Matrix: `comparisons/[topic]-matrix.md`
- Lesson: `lessons/[session]-[topic]-lesson.md`
- Deck: `lessons/slides/[session]-[topic]-slides.md`
- Artifact: `lessons/artifacts/[session]-[topic]-artifact.md`

## Build and export

- `scripts/build.sh` needs pandoc, `npx` (Node 18+), and Google
  Chrome. It fails loudly if any are missing. Don't work around it.
- Decks → `.pptx` + `.pdf` via Marp (pinned version in the script).
  The .pptx slides are images with speaker notes, so all edits go in
  the markdown.
- Lessons and artifacts → `.docx` (pandoc) + `.pdf` (pandoc HTML →
  headless Chrome).
- Outputs land in `out/` (gitignored), with team-convention names
  (`Session 4 - [Topic] - Deck.pptx`) ready for `Session N Materials`.
- Copy outputs into the shared Teams folder only when asked to.

## Publishing (public repo)

Read `Guardrails.md` before any commit. Session files (`t[N]s[N]-*`)
are gitignored until the program lead clears publishing. Never commit
anything from the Teams folder, people's names, rooms or schedules,
or absolute local paths.

## Tone

Direct, plain language, no filler, no hype about AI. Show the
limits as clearly as the capabilities. Students should leave more
skeptical and more capable, not more impressed.
