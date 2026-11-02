# Creative teaching playbook

How to make a 50-minute AI session that students argue about
afterwards, rather than a slideshow they forget by lunch. Every "why
this works" line cites a row in `comparisons/teaching-methods-matrix.md`
(T-IDs). Rules with no source are labeled house rules (H-IDs).

The audience is non-CS undergraduates and early professionals. The
skill is **judgment**: when to use AI, how to check it, where it
breaks, and how to say honestly what you did with it.

## The one-sentence version

Students **decide** what to hand to Claude, **try** it, **hit** a
real failure, **argue** about what it means, then **produce and
defend** something. The facilitator talks for under 15 minutes in
total (H-01).

## Through-line vocabulary: the 4Ds

Use Anthropic's AI Fluency vocabulary across sessions, so students
build one mental model rather than five (T-12):

| D | Question students ask | Where it shows up |
|---|---|---|
| **Delegation** | Should AI do this, and which parts do I keep? | Cold open, before any prompting (T-13) |
| **Description** | Did I give real context, goal, audience, and what "done" means? | The attempt |
| **Discernment** | Are the facts right, is the reasoning sound, does it fit the audience? | Catching the failure |
| **Diligence** | What did I check, what do I disclose, and who is accountable? | The artifact and its defense |

This vocabulary comes from a vendor's framework with no outcome data
(T-12). Use it as shared language, not as proven science.

## Design moves (every lesson uses all six)

### 1. Recall + cold open that leaves a question open
- **Recall (2 min).** Open with a quick question on the last session,
  answered from memory, not from notes. Testing beats restudying on
  delayed tests (T-02).
- **Cold open (2 min).** Show one artifact or claim and make students
  **commit to a prediction** before anything is revealed: "Would you
  send this?" or "Is this citation real?", answered by show of hands
  or poll (T-20). Do not reveal the answer yet. The open question
  carries the session.

### 2. A delegation decision before any prompting
Before students touch Claude, they decide in pairs what they will
hand over and what they will keep (T-13). The default answer is to
"reserve the critical analysis and final conclusions for yourself"
(T-13). This decision is written down, because it goes into the
artifact.

### 3. Students produce the failure; they don't watch it
- Students **attempt** the task with Claude first. Then the
  consolidation builds on their own attempts (T-01). Keep the attempt
  short: productive failure reverses when the skill is too general or
  the learners lack footing (T-01 caveats).
- The failure must be **real, current, and caught by students**, not
  narrated by the facilitator. Pull it from the topic radar (rows with
  a "live failure" column).
- **Failure demos decay.** Models get patched (T-23). Re-run the
  failure prompt the day before, and keep a screenshot backup in the
  speaker notes (H-02, `CHECKLIST.md`).
- Give the failure a **vivid name** once students have found it, such
  as "LLM dreams" or "the polished-output trap" (T-21).

### 4. One concept, framed in under 2 minutes
After the failure, explain why it happened using one familiar frame
(a script being completed, a whiteboard filling up) in under 2 minutes
(T-19). Show variation instead of explaining math: run the same prompt
twice and compare (T-19). If the risk is invisible, make it visible,
for example hidden text that steers the model (T-22).

### 5. A debate run as a peer-instruction cycle
Use the conflicts in the claim matrix (rows marked "Yes, as debate").
The structure (T-03):
1. Pose one dilemma question.
2. Individual vote, no talking.
3. 2–4 minutes of discussion in pairs or trios.
4. Re-vote.
5. Facilitator explains, using the matrix sources.

Aim for a question that roughly half the room gets "right" at first.
In Mazur's data that is where discussion helped most. Treat this as a
heuristic, not a law (T-03).

### 6. Produce, defend, teach back
- Students **make** something they would actually use: a brief, a
  report, a disclosure statement, an edited message. A worksheet does
  not count.
- Grade the **documented process**, not just the product: prompts, AI
  output, what was checked, and what was kept or rejected and why
  (T-07, T-24, T-26). This also removes any need for AI detectors,
  which are unreliable, and Syracuse policy bars detector-only cases
  (T-09).
- A **live check** in class: a partner or a co-leader asks one
  "how do you know?" question per artifact (T-07).
- **Teach-back (final 3 min).** One student explains the failure and
  the fix to the room in their own words (T-02, T-10 "AI as student"
  idea, inverted).

## Reusable activity patterns

Patterns from sessions that already worked, described generically,
plus patterns that come out of the research.

| Pattern | How it works | Basis |
|---|---|---|
| **Citation forensics** | A set of citations: some do not exist, some are real but misquoted, some are accurate. Timed. Students sort them using lateral reading (leave the chat, search the source independently) and SIFT. The answer key is for leaders only | T-04, T-06; current failure data in radar R2-01, R2-02 |
| **Messy dataset** | A dataset with planted flaws (duplicates, truncation, a boundary error) and a real business question. Students must defend their cleaning choices, not just run the tool | T-01; radar R3-01 (repeat errors show agreement ≠ verification) |
| **Editorial charter** | Students log every AI edit as accepted, modified, or rejected, with a reason. Then they compare the before and after versions for voice drift | T-07, T-26; radar R4-01 |
| **Position cards** | Students take a position on an AI dilemma, argue it, and record where they disagreed and whether they changed their minds | T-03; radar R5-01, R5-02 |
| **Polished-output trap** | Give students a finished-looking, partly wrong artifact (a report, a slide, a summary) and have them find every error. People check less when output looks polished | T-14 (inference: our design) |
| **Make Claude coach, not answer** | Students write a prompt that makes Claude ask questions and give hints instead of answers, then compare it with a bare prompt | T-25 |
| **Same prompt, twice** | Two pairs run the identical prompt and compare outputs. Why do they differ, and which one would you trust? | T-19 |
| **Classify your own chats** | Students label their last 10 AI conversations as "answer-seeking" vs. "collaborative" and discuss the split | T-15; radar RX-02 |

## 50-minute timing skeleton (house rule H-04)

A default to adapt. The minute marks are a house rule; the moves
inside them cite T-rows.

| Min | Segment | Moves |
|---|---|---|
| 0–4 | Recall + cold open (prediction committed) | T-02, T-20 |
| 4–6 | Delegation decision in pairs | T-13 |
| 6–18 | Attempt with Claude → students hit the failure | T-01, radar row |
| 18–22 | Name it + one 2-minute concept frame | T-19, T-21 |
| 22–30 | Second attempt with the verification routine | T-06, T-04 |
| 30–38 | Debate: vote → discuss → re-vote → explain | T-03 |
| 38–47 | Produce the artifact + live "how do you know?" check | T-07 |
| 47–50 | Teach-back + artifact handoff (no summary slide) | T-02 |

Two co-leaders: A runs the room, B runs the demo machine and the timer
(H-03).

## Anti-patterns (what the old lessons did)

| Anti-pattern | Replace with |
|---|---|
| Teaching buttons before judgment | The delegation decision first (move 2) |
| Success-only demos | A real, current failure that students catch (move 3) |
| Lecture, then ask students to repeat | Attempt first, then consolidate using their attempts (T-01) |
| One source, built once | A claim matrix from the topic radar, refreshed before teaching |
| A 30+ slide deck for 50 minutes | About 12–15 slides; talk under 15 minutes in total (H-01) |
| Ending with a summary slide | Ending with production and a teach-back |
| "AI detectors will catch it" | Process-graded artifacts plus a live defense (T-09) |

## Before calling a design done

Run `prompts/slide-critic.md`. If the critic cannot name **what is
surprising, what is debatable, and what students will argue about**,
the lesson is not ready.
