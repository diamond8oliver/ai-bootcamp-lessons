# [slug]: [Title]: lesson

> Stage 3 output. Built by `prompts/lesson-designer.md` from the
> intake, the claim matrix, and the playbook. Every factual statement
> cites a matrix claim ID (C-xx). Every design move cites a T-ID.
> Session files stay local until publishing is cleared.

| Field | Value |
|---|---|
| Intake | `lessons/[slug]-intake.md` |
| Claim matrix | `comparisons/[topic]-matrix.md` |
| Brief | `research/[topic]-brief.md` |
| Deck | `lessons/slides/[slug]-[topic]-slides.md` |
| Artifact | `lessons/artifacts/[slug]-[topic]-artifact.md` |
| Teach date | |
| Most recent claim + date verified | [C-xx, YYYY-MM-DD] |

## Objectives (from intake, verbatim)

1.
2.

## Materials and tech setup

- Student devices with [platform]; plan defaults checked on [date]
- Demo machine (co-leader B), logged in, history cleared, memory
  setting confirmed
- Backup screenshots in the deck's speaker notes
- Printed: [handouts, cards, answer key (leaders only)]

## Run sheet (exactly 50 minutes)

| Min | Segment | Students do | Co-leader A | Co-leader B | Slides | Basis |
|---|---|---|---|---|---|---|
| 0–4 | Recall + cold open | Answer recall Q from memory; **commit** a prediction | Asks, takes the vote | Shows cold-open artifact | 1–2 | T-02, T-20 |
| 4–6 | Delegation decision | Pairs write what they'll hand to AI vs. keep | Circulates | Timer | 3 | T-13 |
| 6–18 | Attempt → failure | Run the task with [platform]; find what's wrong | Coaches, doesn't reveal | Runs the demo machine; backup ready | 4–5 | T-01, C-xx |
| 18–22 | Name it + frame | Listen; name the failure | 2-min concept frame | Shows the "same prompt, twice" comparison | 6–7 | T-19, T-21, C-xx |
| 22–30 | Second attempt with verification routine | Re-run with the routine; log what was checked | Coaches | Timer | 8 | T-06, T-04 |
| 30–38 | Debate | Vote → discuss 2–4 min → re-vote | Facilitates | Records the votes | 9–10 | T-03, C-xx |
| 38–47 | Produce + live check | Build the artifact; answer one "how do you know?" | Live checks, half the room | Live checks, other half | 11 | T-07 |
| 47–50 | Teach-back + handoff | One student explains failure + fix | Hands off the artifact | — | 12 | T-02 |

Facilitator talk total: [≤ 15 min] (H-01)

## Cold open

- **Shown:** [artifact or claim, C-xx]
- **Prediction students commit to:** [the question]
- **Question left open until minute [x]:**

## Failure case

- **Prompt students run:** `[exact prompt]`
- **Expected failure:** [what goes wrong, C-xx]
- **Tested on:** [date, plan type, did it fail? Y/N]
- **If it doesn't fail live:** [backup screenshot in the notes of slide
  #; or switch to the polished-output trap with a prepared artifact]
- **How students catch it themselves:** [the check they run]

## Debate

- **Question:** [one dilemma]
- **Source of the disagreement:** [matrix row marked "Yes, as debate"
  (C-xx), or a values dilemma]
- **Target first-vote split:** about half the room "right" (T-03)
- **What the facilitator explains after the re-vote:** [cite C-xx]

## Production + live check

- **Students make:** [maps to the approved artifact]
- **The process log captures:** prompts · AI output · what was checked
  · accepted / modified / rejected + why
- **Live check question:** "How do you know [x]?"
- **Done looks like:** [criteria]

## Teach-back

- **Prompt:** "Explain to the room what went wrong and how you'd catch
  it next time."

## Quality bar (CLAUDE.md)

| Question | Answer |
|---|---|
| Cold open, and what question does it leave unanswered? | |
| What AI failure do students see, and do they catch it themselves? | |
| What will students argue about? | |
| What do students produce, and how is it checked live? | |
| Most up-to-date claim, and when was it verified? | |

## Open questions

-

## Critic pass ([date])

[Output of `prompts/slide-critic.md`. Mark each item fixed or still
open.]
