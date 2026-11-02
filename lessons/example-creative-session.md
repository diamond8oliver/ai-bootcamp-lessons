# Example: a redesigned "AI for research & synthesis" session

> **ILLUSTRATIVE: NOT TEACHABLE AS WRITTEN.** This shows the *shape*
> of a lesson built with this pipeline. Every factual slot points to
> a row in the November 2026 topic radar
> (`research/t1-topic-radar-2026-11.md`), written as
> `[R2-01 → C-xx, unverified]`. A radar row is a lead, not evidence.
> Before teaching, stage 2 (`prompts/research-agent.md`) must
> re-verify it into a claim matrix.

## The old version vs. the redesign

| Old pattern | Redesign |
|---|---|
| Slides on "how to use AI for research", then a demo that works | Students run a real research task and find the fabrications themselves |
| "AI sometimes makes mistakes" | Named, current, sourced failure modes with dates |
| Lecture on citation formats | The verification routine (SIFT + lateral reading), practised twice |
| Ends with a recap slide | Ends with a sourced brief the student defends live |

## Run sheet (50 min)

| Min | Segment | What happens | Talk | Basis |
|---|---|---|---|---|
| 0–4 | Recall + cold open | Recall: "Name one failure mode from last week." Cold open: a polished, AI-written executive summary of a news story is on screen. **Vote:** would you forward it to your boss? | 1 | T-02, T-20; people check polished output less, per vendor-run data (T-14, Anthropic) |
| 4–6 | Delegation | Pairs decide: what in a research brief can AI draft, and what must you verify yourself? | 0.5 | T-13 |
| 6–16 | Attempt → failure | Pairs ask Claude for a short brief with sources on a narrow, recent topic, then open **every** link and check whether each source says what the brief claims. Expected: links mostly work, but some claims aren't in the source `[R2-01 → C-01, unverified]`, and some URLs don't resolve `[R2-02 → C-02, unverified]` | 0.5 | T-01, citation-forensics pattern |
| 16–19 | Name it + frame | Name: **"Cited, but not true."** Frame: the model generates text shaped like a citation, and generating it isn't checking it `[mechanism claim → C-05, needs a source]`; T-19 covers only the framing *move*. Reveal the cold open: the summary had invented quotes. Before the reveal, students check two of its quotes themselves `[R2-05 → C-03, unverified]` | 2.5 | T-19, T-21 |
| 19–27 | Primary source | Predict: "What share of cited claims will check out?" Then read the abstract of the study that measured it `[R2-01 → C-01, unverified]` (handout), and judge it: how many models, which ones (older than today's?), preprint or peer-reviewed, who ran it, and does it show cause or a pattern? Reveal the measured range | 1 | H-05 |
| 27–33 | Debate | "Fake references are showing up in published research `[R2-03 → C-04, unverified]`. Should journals **retract** papers with a fabricated citation, or **correct** them?" Needs **two named positions** from the matrix (e.g. a publisher's or editor's stated policy vs. a researcher-integrity group), **still to be sourced**. Vote → 3 min → re-vote → explain | 1.5 | T-03 |
| 33–45 | Produce + verify + live check | Each student drafts the in-class half of a sourced brief, runs the verification routine (SIFT plus lateral reading) on every source, and fills in the "what I verified" table. Co-leaders ask each student one "How do you know?" The AI-use statement is finished at home | 1 | T-07, T-06, T-04, T-24, T-26 |
| 45–50 | Teach-back + exit ticket | One student explains "cited, but not true" and their check. Exit item: one new citation to judge | 1 | adjacent to T-02 |
| | | | **9** | |

**Alternative debate**, from the critic test's skeptical-student
reviewer: "If checking every link takes 12 minutes, why use AI for
research at all?" Arguably the more honest question. Pick whichever has
two named, verified positions in the matrix.

## Why this is more interesting than the old version

- **Surprising:** most of the links *work*. The failure hides behind
  working links, so "click to check it exists" isn't enough
  `[R2-01, unverified]`.
- **Debatable:** retract vs. correct has real stakes and no settled
  answer. Students can argue either side from the sources.
- **Students produce:** a brief they could actually send, plus a
  verification log they defend live.
- **College-level:** students read a real preprint's abstract, predict
  its result, and judge its evidence (models tested, sample, peer
  review, cause vs. pattern), then defend a position between two named
  sides. Once the C-rows are verified, that clears all five parts of
  the rigor bar (H-05).

## What still has to happen before teaching

1. Write the intake. Run `prompts/research-agent.md` on R2-01, R2-02,
   R2-03 and R2-05: re-fetch every source, find a critique for each
   claim, source the mechanism claim (C-05), and find two named
   positions for the debate.
2. Test the failure prompt on the students' Claude plan the day
   before. If it no longer fails, switch the attempt segment to a
   prepared polished-output trap (T-14), with the backup screenshot.
3. Run `prompts/slide-critic.md`. Its first test on this file
   (2026-11-01) returned NOT READY, rigor 2/5: unverified claims,
   placeholders, an over-full 18–24 segment, and unnamed debate sides.
   This version fixes the timing and structure; the evidence gaps
   remain until stage 1 runs.
