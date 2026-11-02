# AI Bootcamp Peer Leaders: Lesson Lab README

Draft for team review. This adapts the Lesson Lab pipeline to what is
actually in the Group-AI Bootcamp Peer Leaders team, General shared
documents, as inventoried Nov 1, 2026. Nothing in this draft has been
posted to Teams yet.

> **Public copy.** People's names, the room, the address and the
> schedule were removed before publishing. Nothing from the team
> files themselves is in this repo, only folder names and short
> descriptions.

## What is in the shared documents right now

Team: Group-AI Bootcamp Peer Leaders, channel General.
43 files across 10 folders, plus 2 Loop components at the root.
No README currently exists in the team files.

### By folder

- **Employee Important Information** (3 files)
  Clocking in and out instructions, direct deposit signup, and a
  Session 1 peer leader deck copy. Administrative, not lesson content.
- **General Information** (5 files)
  Flyer, series information, peer leader roster/info, one-pager,
  and the revised AI Professional Skills program document.
- **Needs Printing** — empty.
- **Overall Tool Kit** (1 file)
  SU AI Bootcamp Toolkit, Oct 21.
- **Pairings and Classroom Assignments** — empty.
- **Session 1, The Art of the Prompt** (3 files)
  Peer leader deck, facilitator run sheet, train-the-peer-leader deck.
- **Session 2 Materials** (9 files)
  Activity and answer key, citation forensics handout, quiz,
  badge review rubric, executive brief template and reflection,
  facilitator guide and deck comparison, peer leader training,
  scenario cards.
- **Session 3 Materials** (11 files, including an extra data sets
  subfolder)
  Session deck, peer leader training, challenge question cards,
  dashboard prompt handout, data analysis report template, and
  practice datasets (coffee orders, internship applications, online
  store orders, home prices, student org events).
- **Session 4 Materials** (7 files, most recent, Nov 1)
  AI for Professional Communication deck, backup writing samples,
  editorial charter template, peer leader kit and training,
  three-audience document template and scenario cards.
- **Session 5 Materials** (2 files)
  AI Professional Showcase deck and peer leader training.

## Session map: Teams folder → this repo

| Teams folder | Slug | Session (Track 1) | Take-home artifact | Current-topics radar rows |
|---|---|---|---|---|
| Session 1 The Art of the prompt | `t1s1` | The Art of the Prompt | Communication Strategy Document | R1-01 to R1-07 |
| Session 2 Materials | `t1s2` | AI for Research & Synthesis | Sourced Executive Brief | R2-01 to R2-07 |
| Session 3 Materials | `t1s3` | AI for Data & Decisions | Mini Data Analysis Report | R3-01 to R3-05 |
| Session 4 Materials | `t1s4` | AI for Professional Communication | 3-Audience Communication Portfolio | R4-01 to R4-05 |
| Session 5 Materials | `t1s5` | Capstone: AI Professional Showcase | AI Professional Portfolio | R5-01 to R5-05 |

The radar rows are in `research/t1-topic-radar-2026-11.md`, a dated
snapshot that must be refreshed before teaching. Session files
(intake, lesson, deck, artifact) stay local and are not pushed to the
public repo; see `Guardrails.md`.

## What is missing, honestly

- **No research files.** Nothing in the folders maps to source
  research or a cross-comparison of references. That is the gap
  this Lesson Lab is built to close.
- **No student-produced artifacts.** The session folders are
  facilitator-facing: decks, training guides, run sheets, templates,
  handouts, and practice datasets. Student work itself is not here.
- **Two empty folders.** Needs Printing and Pairings and Classroom
  Assignments have nothing in them yet. Either fill them or remove
  them so new peer leaders do not hunt through empty folders.

## How to use this going forward

For each session, in order (the full 8-stage pipeline is in
`README.md`):

0. **Intake.** Record the approved plan's objectives, artifact and
   locked items (`lessons/approved-plan-intake-template.md`).
1. **Topic radar.** Find current AI developments that fit the
   approved objectives, each with a failure case and a debate angle
   (`prompts/topic-radar.md`).
2. **Research.** Add a research brief for the topic, with 3 to 5
   sources, dated. Do not start from a single deck or video.
3. **Cross-compare.** Add a claim matrix: one row per claim, which
   sources agree, which disagree, confidence level. Teach only
   claims at least two credible sources agree on; flag conflicts
   in the lesson instead of hiding them.
4. **Build the lesson from the matrix.** Slides and student
   artifacts come from the same matrix, so they never contradict
   each other. Name the copies placed in Teams by session, for
   example `Session 6 - [Topic] - Research Brief` and
   `Session 6 - [Topic] - Claim Matrix`.
5. **Teach it the Lesson Lab way.** The sourced version is in
   `docs/creative-teaching-playbook.md`. In short:
   - **Decide before prompting.** Students choose what to hand to
     AI and what to keep (Anthropic AI Fluency; T-13).
   - **Students try first and hit a real failure.** The debrief uses
     their own attempts (productive-failure meta-analysis; T-01).
     Re-test the failure the day before, because demos stop failing
     as models update (T-23).
   - **Short frames, predictions first.** One concept in under 2
     minutes, with students committing a prediction before the
     reveal (borrowed from strong YouTube explainers; T-19, T-20).
   - **Debate as vote → discuss → re-vote** (peer instruction; T-03).
   - **End with students producing and defending something,** with
     a process log and a live "how do you know?" check (T-07). Never
     a summary slide.
6. **Review before teaching.** Use `CHECKLIST.md`: no bullet-wall
   slides, one claim per slide with evidence on the slide and
   explanation in speaker notes, demo tested before class, and every
   lesson claim backed by the matrix.
7. **Retro after teaching.** Use `lessons/retro-template.md` within
   48 hours, so the next run starts from what actually happened.

(An earlier draft of this list described the DeepLearning.AI style as
"code-first". That does not fit a no-coding program, and the
"Stanford" and "YouTube" styles had no sources. They were replaced
with the sourced moves above.)

## File conventions for new material

- One folder per session, named `Session N Materials`, matching
  the existing folders.
- Research briefs and claim matrices live with their session, not
  in a separate pile, so a new peer leader can find the evidence
  for a deck in the same place as the deck.
- Do not put student names, grades, or private class data in
  shared documents.

## Deep inventory notes, Nov 1, document by document

A second, document-by-document pass confirmed the folder counts
above and added the actual contents. Read-only, nothing changed.

Program, from the flyer and series information: Professional Skills
Track, one evening a week, five sessions: Art of the Prompt, AI for
Research and Synthesis, AI for Data and Decisions, AI for
Professional Communication, Capstone Showcase. Certificate via
Accredible, counts toward the SU AI Fluency Credential. No coding,
all exercises built around Claude, taught by student peer leaders.

What is actually strong already, and worth stealing:

- Session 2 Citation Forensics: students check a set of citations
  under a time limit, where some do not exist, some are real but
  misquoted, and some are accurate, plus a leaders-only answer key.
  This is already a catch-the-failure lesson, not a lecture.
- Session 3 messy datasets: deliberately broken data, including
  truncated text, a duplicate dataset, and planted flaws, plus
  business questions like where a second register should go.
  Students have to defend cleaning choices, not just run a tool.
- Session 4 Editorial Charter: students log every AI edit decision
  as accepted, modified, or rejected, with a reason. That is
  already a judgment artifact, not a worksheet.
- Session 5 AI Philosophy Cards: students state positions and
  note where they disagreed. That is already a debate artifact.

What still needs the Lesson Lab, even with that strength:

- No research files anywhere. The citation activity references
  real papers only inside the handouts, not as a research brief
  or claim matrix a new peer leader could reuse or update.
- No completed student work, only blank artifact templates:
  Executive Brief, Data Analysis Report, Editorial Charter,
  Three-Audience Doc.
- Slide decks are long: Session 1 is 32 slides in 50 minutes,
  with a 34-slide copy also in the folders. That pace is a
  likely cause of the slideshow problem, regardless of content.
- Session 4, the next session, has a timing collision noted in its
  peer leader kit at minute 44, with Activity 3 on an 11-minute
  timer. Fix that timing before teaching it, and use Session 4 as
  the first test of the new approach, since its materials are
  freshest.

## Next step for the team

Agree on two things before Session 5 teaching: first, whether
Needs Printing and Pairings and Classroom Assignments get filled
or removed; second, who owns the research brief and claim matrix
for the next session, so the pipeline starts with evidence, not
with a deck.
