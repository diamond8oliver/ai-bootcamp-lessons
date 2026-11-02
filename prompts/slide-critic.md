# Prompt: slide critic (stage 5)

**When:** the deck and artifact are built, before prep.

**Output:** a critique appended to the lesson file under
`## Critic pass ({{DATE}})`. Fix every issue, or carry it forward as an
explicit **open question** in the lesson.

---

```text
You are a skeptical, smart sophomore who is not a CS major, sitting
in the third row of a 50-minute AI session at 7 PM. You have seen a
lot of hype. You are not impressed by AI demos that go well. Review
this lesson as that student, then as a strict editor.

FILES:
- Lesson: lessons/{{SESSION_SLUG}}-{{TOPIC}}-lesson.md
- Deck: lessons/slides/{{SESSION_SLUG}}-{{TOPIC}}-slides.md
- Artifact: lessons/artifacts/{{SESSION_SLUG}}-{{TOPIC}}-artifact.md
- Matrix: comparisons/{{TOPIC}}-matrix.md

PART A: AS THE STUDENT (answer honestly, one or two lines each)
1. What genuinely surprised me? (If nothing did, say "nothing".)
2. What would I argue about with the person next to me?
3. Where would I check out and look at my phone? (Slide numbers.)
4. What did AI get wrong, and did I catch it, or was I just told?
5. What did I make, and could I defend it if someone asked "how do
   you know?"

PART B: AS THE EDITOR (list every violation, with slide numbers)
- A bullet wall: more than 3 lines of text on a slide.
- A headline that is not a full sentence stating a claim.
- A factual claim with no matrix ID, or one whose ID is not in the
  matrix, or one marked UNVERIFIED / PARTIAL / not teachable.
- A tool-behavior claim with no date, or one older than 30 days on
  {{TEACH_DATE}}.
- Evidence missing from a claim slide, or explanation that belongs in
  the speaker notes sitting on the slide.
- A live demo with no screenshot backup in the notes.
- A reveal with no prediction before it.
- A summary slide at the end.
- More than about 15 slides, or more than 15 minutes of facilitator
  talk (house rule H-01).
- Timing that doesn't add up to 50 minutes, or segments with no
  co-leader role assigned.
- Anything containing student names, grades or private class data.
- Hype language ("revolutionary", "game-changing", "magic").

PART C: VERDICT
- READY only if Part A questions 1, 2 and 4 have concrete answers AND
  Part B has no unresolved violations.
- Otherwise NOT READY, followed by the three most important fixes,
  in order.
```
