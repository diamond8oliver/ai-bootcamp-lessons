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

| Min | Segment | What happens | Basis |
|---|---|---|---|
| 0–4 | Recall + cold open | Recall: "Name one failure mode from last week." Cold open: a polished, AI-written executive summary of a news story is on screen. **Vote:** would you forward it to your boss? | T-02, T-20, T-14 |
| 4–6 | Delegation | Pairs decide: what in a research brief can AI draft, and what must you verify yourself? | T-13 |
| 6–18 | Attempt → failure | Pairs ask Claude for a short brief with sources on a narrow, recent topic, then open **every** link and check whether each source says what the brief claims. Expected: links mostly work, but some claims aren't in the source `[R2-01 → C-01, unverified]`, and some URLs don't resolve `[R2-02 → C-02, unverified]` | T-01, citation-forensics pattern |
| 18–22 | Name it + frame | Name: **"Cited, but not true."** Frame: the model writes text that *looks* like a citation, and nothing checks that the source says it (T-19). Reveal the cold open: the summary had invented quotes, the same mechanism as a real newsroom case `[R2-05 → C-03, unverified]` | T-19, T-21 |
| 22–30 | Verification routine | Second attempt: SIFT plus lateral reading. Leave the chat, find each source independently, and trace each quote to its original. Log what was checked | T-06, T-04 |
| 30–38 | Debate | "Fake references are showing up in published research `[R2-03 → C-04, unverified]`. Should journals **retract** papers with a fabricated citation, or **correct** them?" Vote → 3 min of discussion → re-vote → explain using the sources | T-03 |
| 38–47 | Produce + live check | Each student writes a half-page sourced brief: the process log, a "what I verified" table, and an AI-use statement. Co-leaders ask each student one "How do you know?" | T-07, T-24, T-26 |
| 47–50 | Teach-back | One student explains "cited, but not true" and their check, in their own words | T-02 |

## Why this is more interesting than the old version

- **Surprising:** most of the links *work*. The failure hides behind
  working links, so "click to check it exists" isn't enough
  `[R2-01, unverified]`.
- **Debatable:** retract vs. correct has real stakes and no settled
  answer. Students can argue either side from the sources.
- **Students produce:** a brief they could actually send, plus a
  verification log they defend live.

## What still has to happen before teaching

1. Run `prompts/research-agent.md` on R2-01, R2-02, R2-03 and R2-05.
   Re-fetch every source, and find a critique for each claim.
2. Test the failure prompt on the students' Claude plan the day
   before. If it no longer fails, switch the attempt segment to a
   prepared polished-output trap (T-14), with the backup screenshot.
3. Run `prompts/slide-critic.md`, then `CHECKLIST.md`.
