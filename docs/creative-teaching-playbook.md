# Creative teaching playbook

How to make a 50-minute AI session college-level, intriguing, and
something students argue about afterwards, rather than a slideshow
they forget by lunch.

Every "why this works" line cites a row in
`comparisons/teaching-methods-matrix.md` (T-IDs). Rules with no source
are house rules (H-IDs). Each move is tagged with how strong its
evidence is, so nobody mistakes our design choices for settled
science.

| Evidence tag | Meaning | Rows |
|---|---|---|
| **Strong** | Meta-analysis or controlled experiments (still caveated for AI tasks) | T-01, T-02 |
| **Moderate** | Observational or field studies, expert/novice studies | T-03, T-04, T-05, T-14 |
| **Practice** | What skilled educators and providers do; not tested here | T-06, T-07, T-12, T-13, T-17 to T-26 |
| **House** | Our own design rule, to be tuned using retro data | H-01 to H-05 |

No source in the matrix measures any of these moves on **AI-judgment**
skills specifically. Applying them to AI tasks is our inference
everywhere. The retros are how we find out.

The audience is non-CS undergraduates and early professionals. The
skill is **judgment**: when to use AI, how to check it, where it
breaks, and how to say honestly what you did with it.

## The one-sentence version

Students **decide** what to hand to Claude, **try** it, **hit** a
real failure, **read the evidence** behind it, **argue** about what it
means, then **produce and defend** something. The facilitator talks
for under 15 minutes in total (H-01).

## Upgrade, don't replace

Lesson plans arrive **already approved**, usually with named
activities and a timing. Keep those activities. Upgrade each one with
the moves below, rather than throwing it out for a new design. The
intake records which activities are locked. If the approved timing
collides, fix it inside the 50 minutes and flag the change for the
program lead.

**Worked example: Session 4 (AI for Professional Communication).**
Radar rows R4-01 to R4-05 are in `research/t1-topic-radar-2026-11.md`.

| Approved activity | Keep | Upgrade with |
|---|---|---|
| Show-and-tell (5 min) | Cohort identity | **Recall:** each student names one AI failure they caught in Sessions 1–3 (T-02, Strong) |
| Three-Audience Challenge (13 min) | Same message, three audiences | **Predict first:** "Will Claude's three versions actually sound different?" Students vote (T-20), then run it. **Failure:** the plan itself notes the common failure mode, three versions that all sound the same. Students catch it, then fix it with real audience context |
| AI as Your Editor (15 min) | The Editorial Charter (accept / modify / reject) | **Primary source:** students read the ACL 2026 abstract on AI editing pulling writers' style toward LLM text (R4-01). **Check:** compare your before and after drafts. Can you still hear yourself? (rigor bar a + b) |
| Slide Deck Architect (11 min) | Outline with a 5-slide arc | **Polished-output trap:** an AI-generated slide with a misleading chart and an unsupported claim (R4-05; vendor test, so label it). Students find what's wrong before they build their own (T-14, Moderate) |
| Share-out (5 min) | "Most interesting rejected edit" | **Debate as a peer-instruction cycle:** "Should you disclose AI help on a cover letter?" Vote → 3 min of discussion → re-vote, using the Atlassian disclosure-penalty study (R4-02, vendor-run) against Syracuse's policy (R4-03) (T-03, Moderate) |
| Wrap-up (1 min) | Badge criteria | **Teach-back** in place of a preview (adjacent to T-02) |

## Through-line vocabulary: the 4Ds

Use Anthropic's AI Fluency vocabulary across sessions, so students
build one mental model rather than five (T-12, Practice):

| D | Question students ask | Where it shows up |
|---|---|---|
| **Delegation** | Should AI do this, and which parts do I keep? | Before any prompting (T-13) |
| **Description** | Did I give real context, goal, audience, and what "done" means? | The attempt |
| **Discernment** | Are the facts right, is the reasoning sound, does it fit the audience? | Catching the failure; judging the evidence |
| **Diligence** | What did I check, what do I disclose, and who is accountable? | The artifact and its defense |

This is a vendor framework with no outcome data. Use it as shared
language, not as proven science.

## The rigor bar: what makes it college-level (H-05)

A workshop teaches what to click. A college class teaches students to
weigh evidence. Every session clears all five:

1. **Read a primary source.** Students read part of a real study,
   policy, or official document: an abstract, a methods paragraph, a
   policy clause. Not a summary of it. Pull it from the claim matrix.
2. **Judge the evidence.** Sample size. Who ran or funded it. When.
   Which model was tested, since results on older models may not hold.
   Descriptive or causal. The radar's "who ran it" column exists for
   this.
3. **Claim + evidence.** Students state a position and back it with a
   source, not an opinion.
4. **Show genuine disagreement.** At least one question where **two
   named, verified positions** (people, studies, or institutions)
   actually disagree, from claim-matrix rows marked "Yes, as debate".
   Don't fake a consensus, and don't invent an opponent.
5. **No button-teaching** unless it serves a judgment. "Where is the
   upload button" is not a learning objective. "When should you not
   upload this file" is.

Basis: partly supported by lateral reading and source evaluation
(T-04, T-06), by "critical evaluation of claims made about AI" as a
course outcome (T-18), and by UNESCO's emphasis on critical judgement
(T-28). The five-part bar as a package is our design (House).

## Design moves (every lesson uses all six)

### 1. Recall + a cold open that leaves a question open
- **Recall (2 min).** One question on the last session, answered from
  memory (T-02, Strong: testing beats restudying on delayed tests,
  shown with prose passages).
- **Cold open (2 min).** Show one artifact or claim, and have students
  **commit to a prediction** before anything is revealed: "Would you
  send this?" or "Is this citation real?", by show of hands or poll
  (T-20, Practice). Don't reveal the answer. The open question carries
  the session.

### 2. A delegation decision before any prompting
Pairs decide what they'll hand over and what they'll keep (T-13,
Practice). The default: "reserve the critical analysis and final
conclusions for yourself." The decision is written down, because it
goes into the artifact.

### 3. Students produce the failure; they don't watch it
- Students **attempt** the task first. The debrief then builds on their
  own attempts (T-01, Strong, with caveats: mostly STEM studies, and
  it reverses for domain-general skills and for younger learners. Keep
  the attempt short).
- The failure must be **real, current, and caught by students**. Pull
  it from the radar's "live failure" column.
- **Failure demos decay** (T-23, Practice). Re-run the prompt the day
  before, and keep a screenshot backup (H-02).
- Once found, give the failure a **vivid name** (T-21, Practice), e.g.
  "cited, but not true".

### 4. One concept frame, under 2 minutes, plus the evidence
- Explain the mechanism with one familiar frame in under 2 minutes
  (T-19, Practice). Show variation instead of math: run the same prompt
  twice and compare. Make invisible risks visible (T-22, Practice).
- Then put the **primary source** in their hands (rigor bar 1–2): the
  study that measured this failure. Who ran it? How many cases? Which
  model?

### 5. A debate run as a peer-instruction cycle
Use a matrix row marked "Yes, as debate" (T-03, Moderate):
1. Pose one dilemma question.
2. Individual vote, no talking.
3. 2–4 minutes of discussion in pairs or trios.
4. Re-vote.
5. The facilitator explains, citing the sources on each side.

Aim for a question that roughly half the room gets "right" at first.
That is a heuristic from physics data, not a law.

**The best debate is often the students' own objection.** In the critic
test, the skeptical-student reviewer didn't want to argue the planned
question. It wanted to ask: "If checking every link takes 12 minutes,
why use AI for research at all?" Collect objections like that in the
retro, and promote the strongest one to next run's debate.

### 6. Produce, defend, teach back
- Students **make** something they would actually use: a brief, a
  report, a disclosure statement, an edited message.
- Grade the **documented process**: prompts, AI output, what was
  checked, and what was kept or rejected and why (T-07, T-24, T-26,
  Practice). This also removes any need for AI detectors, which are
  unreliable, and Syracuse policy bars detector-only cases (T-09).
- **Live check:** each student answers one "how do you know?" (T-07).
- **Teach-back (final 3 min):** one student explains the failure and
  the fix in their own words. This is adjacent to retrieval practice
  (T-02), not directly tested.
- **Exit ticket (optional, 2 min):** one new spot-the-flaw item. The
  retro records the count of students who caught it. That is our only
  measure of whether the session worked, so use it when you can.

## Reusable activity patterns

| Pattern | How it works | Basis |
|---|---|---|
| **Citation forensics** | Some citations don't exist, some are real but misquoted, some are accurate. Timed; students sort them by lateral reading + SIFT | T-04, T-06 (Moderate/Practice); radar R2-01, R2-02 |
| **Messy dataset** | Planted flaws (duplicates, truncation, a boundary error) plus a real business question. Students defend their cleaning choices | T-01; radar R3-01: the same error repeated in every run, so agreement ≠ verification |
| **Editorial charter** | Log every AI edit as accepted, modified, or rejected, with a reason. Then check the before/after drafts for voice drift | T-07, T-26; radar R4-01 |
| **Position cards** | Take a position on an AI dilemma, argue it with a source, record whether you changed your mind | T-03; radar R5-01, R5-02 |
| **Polished-output trap** | A finished-looking, partly wrong artifact; students find every error | T-14 (Moderate): users check less when output looks polished. The activity itself is our design |
| **Study autopsy** | Students get a real study's abstract plus one headline about it. Does the headline match the evidence (n, who funded it, model, causal claim)? | Rigor bar; radar R5-02 (the NACE numeracy trap), RX-03 |
| **Make Claude coach, not answer** | Students write a prompt that makes Claude ask questions instead of answering, then compare it with a bare prompt | T-25 |
| **Same prompt, twice** | Two pairs run the identical prompt and compare. Which would you trust? | T-19 |

## 50-minute timing skeleton (house rule H-04)

Use this **only when the approved plan doesn't fix its own flow**.
Otherwise upgrade the approved activities (above).

| Min | Segment | Talk | Moves |
|---|---|---|---|
| 0–4 | Recall + cold open (prediction committed) | 1 | T-02, T-20 |
| 4–6 | Delegation decision in pairs | 0.5 | T-13 |
| 6–16 | Attempt with Claude → students hit the failure | 0.5 | T-01 |
| 16–19 | Name it + 2-min frame | 2.5 | T-21, T-19 |
| 19–27 | Primary source: predict (1) → read (3) → judge in pairs (3) → share (1) | 1 | H-05 |
| 27–33 | Debate: vote → discuss 3 min → re-vote → explain both named positions | 1.5 | T-03 |
| 33–45 | Produce the artifact **using the verification routine** + live "how do you know?" | 1 | T-07, T-06, T-04 |
| 45–50 | Teach-back + exit ticket (no summary slide) | 1 | adjacent to T-02 |

About 9 minutes of facilitator talk and 12 slides, inside H-01.
Verification is practised on the student's own artifact rather than
as a separate "try again" round. A critic test showed a repeat round
gave students no new task.

Two co-leaders: A runs the room, B runs the demo machine and the timer
(H-03).

## Anti-patterns (what the old lessons did)

| Anti-pattern | Replace with |
|---|---|
| Buttons before judgment | The delegation decision first; rigor bar 5 |
| Success-only demos | A real, current failure students catch |
| Lecture, then repeat | Attempt first, then consolidate (T-01) |
| One source, built once | A claim matrix, refreshed at T-30 days |
| "Studies show…" with no study in sight | A primary source in students' hands (rigor bar 1–2) |
| A 30+ slide deck for 50 minutes | About 12–15 slides; talk under 15 minutes (H-01) |
| Ending with a summary slide | Production, a teach-back, and an exit ticket |
| "AI detectors will catch it" | Process-graded artifacts plus a live defense (T-09) |

## Before calling a design done

Run `prompts/slide-critic.md`. If the critic cannot name **what is
surprising, what is debatable, and what students will argue about**,
or the lesson misses any part of the rigor bar, it is not ready.
