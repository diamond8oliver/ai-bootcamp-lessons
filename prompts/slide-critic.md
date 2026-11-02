# Prompt: critic (stage 3)

**When:** after design + build, and again after every T-30 refresh.

**Output:** a critique appended to the lesson file under
`## Critic pass ({{DATE}})`. Prep (`CHECKLIST.md`) starts only after a
**READY** verdict.

**What can carry forward:** only **design judgment calls** (e.g. "the
debate may run long") may be logged as open questions in the lesson.
**Hard-rule violations can't carry forward**: evidence, privacy,
rigor bar, timing, or a removed locked activity must be fixed before
READY.

---

```text
Review this lesson three ways, in order. Be specific: cite slide
numbers, run-sheet minutes, and claim IDs. Do not soften findings.

FILES (private sessions repo):
- Lesson (Peer Leader Guide): lessons/{{SESSION_SLUG}}-{{TOPIC}}-lesson.md
- Deck: lessons/slides/{{SESSION_SLUG}}-{{TOPIC}}-slides.md
- Artifact: lessons/artifacts/{{SESSION_SLUG}}-{{TOPIC}}-artifact.md
- Matrix: comparisons/{{TOPIC}}-matrix.md
- Intake: lessons/{{SESSION_SLUG}}-intake.md
RULES (public repo, ../AI Bootcamp Lessons): CLAUDE.md (hard rules,
quality bar, rigor bar), docs/slide-design-guide.md,
lessons/lesson-template.md, comparisons/teaching-methods-matrix.md
(house rules H-01 to H-05).
Teach date: {{TEACH_DATE}}

MISSING INPUTS: if the intake or the matrix is missing, the verdict is
automatically NOT READY (blocked). Still review everything else, and
list what couldn't be judged.

DEFINITIONS
- Tool-behavior claim: what a product does today (features, defaults,
  limits, plan differences). It must be verified within 30 days of
  the teach date.
- Study claim: a measured result. It must name the models or sample
  tested and the date. It doesn't expire after 30 days, but it must be
  re-fetched at the T-30 refresh.
- Claim slide: a slide that asserts something factual. Activity
  slides (instructions, votes, prompts) are not claim slides.

PART A: AS THE STUDENT
You are a skeptical, smart sophomore, not a CS major, in the third row
at 7 PM. You've seen a lot of AI hype and aren't impressed by demos
that go well. Answer honestly, one or two lines each:
1. What genuinely surprised me? (If nothing did, say "nothing".)
2. What would I argue about with the person next to me? (If your
   argument isn't the lesson's debate, say so. That's a signal.)
3. Where would I check out and look at my phone? (Slide numbers.)
4. What does AI get wrong, and do I catch it myself or get told?
   Judge from the recorded failure test in the lesson. If it is
   untested, that's a Part B violation.
5. What did I make, and could I defend it if asked "how do you know?"
6. Did this feel like a college class or a software tutorial? Why?

PART B: AS THE STRICT EDITOR (list every violation)
Evidence
- A factual claim with no matrix ID, an ID not in the matrix, or a
  claim marked UNVERIFIED / PARTIAL / not teachable. A teaching-method
  ID (T-xx) cited as evidence for a content claim.
- A tool-behavior claim verified more than 30 days before the teach
  date; a study claim that doesn't name the models tested.
- A vendor-run source not labeled as vendor-run.
- An item from the intake's "Stale claims to remove" still present.
- A failure prompt with no recorded test result (date, plan, failed
  Y/N).
Deck (docs/slide-design-guide.md)
- A claim slide whose headline isn't a full-sentence claim; an
  activity slide whose headline isn't a full-sentence question or
  instruction.
- More than 3 lines of text on a slide. Exception: the primary-source
  slide may show up to 3 quoted key sentences plus the "judge it"
  line; the full excerpt belongs on the printed handout.
- A claim slide with no `_footer` source line; a slide with no
  presenter notes; a live demo with no backup screenshot named in the
  notes; a backup pointer to the wrong slide.
- A reveal (including any research number) with no prediction before
  it; a summary slide at the end.
- Minutes on slides that don't match the run sheet.
Session
- Run-sheet minutes that don't add up to exactly 50; a segment with no
  co-leader A/B role; a segment too full for its minutes (estimate
  them).
- Total "Talk (min)" in the run sheet over 15, or more than about 15
  slides (H-01).
- A LOCKED approved activity removed or replaced rather than upgraded.
- The artifact doesn't map to every approved component and badge
  criterion, or doesn't say which parts are built in class and which
  are finished at home.
Privacy
- Any student name, grade, pairing, identifiable quote, or private
  class data. A screenshot not marked as redacted (account name,
  sidebar chat titles, memory panel).
Hype
- "Revolutionary", "game-changing", "magic", or limits shown less
  clearly than capabilities.

PART C: THE RIGOR BAR (H-05). Pass or fail each, with the evidence:
1. Students read part of a named, verified primary source in class
   (which source, which minute, and enough minutes for it).
2. Students judge all five: n, who ran or funded it, date, model
   tested, descriptive vs. causal.
3. Students defend a claim with evidence.
4. A genuine disagreement: two NAMED, verified positions (people,
   studies, or institutions), shown honestly.
5. No button-teaching that doesn't serve a judgment.

PART D: VERDICT
- READY only if: Part A questions 1, 2, 4 and 6 have concrete answers;
  Part B has no violations (design judgment calls may be listed
  separately as open questions); and Part C passes 5/5.
- Otherwise NOT READY, with the three most important fixes in order.

META (2 lines): any rule you couldn't apply, and why.
```
