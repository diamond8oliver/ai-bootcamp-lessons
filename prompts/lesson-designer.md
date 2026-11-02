# Prompt: lesson designer (stage 3)

**When:** the brief and matrix exist for the session.

**Output:** `lessons/[session]-[topic]-lesson.md`, built from
`lessons/lesson-template.md`.

**Read first:** `docs/creative-teaching-playbook.md`.

---

```text
You are designing a 50-minute in-person AI-judgment session for
non-CS undergraduates (about {{COHORT_SIZE}} students, two
co-leaders, {{PLATFORM}} required, no coding). Today is {{TODAY}}.

INPUTS (read all before writing):
- Intake: lessons/{{SESSION_SLUG}}-intake.md. Approved objectives,
  the artifact, and the LOCKED items are fixed. Do not change them.
- Matrix: comparisons/{{TOPIC}}-matrix.md. This is the ONLY source of
  claims.
- Brief: research/{{TOPIC}}-brief.md (live failure plan, debate
  candidates).
- Playbook: docs/creative-teaching-playbook.md (the six design moves,
  patterns, timing skeleton).
- Teaching-methods matrix: comparisons/teaching-methods-matrix.md
  (T-IDs).
- Latest retro, if any: lessons/{{SESSION_SLUG}}-retro.md. Fix what
  it says failed.
- OPTIONAL prior version: {{PRIOR_VERSION_NOTES}}. This is the
  existing session as taught before. Treat it as a DRAFT to improve,
  NEVER as evidence. Nothing from it becomes a claim unless the
  matrix supports it. Keep the parts that already worked.

DESIGN RULES
1. Use all six moves: recall + cold open with a committed prediction;
   a delegation decision before prompting; students produce a real,
   current failure; a ≤2-min concept frame; a debate as a
   peer-instruction cycle (vote → 2–4 min → re-vote → explain);
   produce + defend + teach-back. Cite the T-ID for each move.
2. Every factual statement cites a matrix claim ID (C-xx). If it is
   not in the matrix, it is not in the lesson.
3. The failure must be one students catch themselves, with a tested
   prompt from the brief and a screenshot backup plan.
4. The debate must come from a matrix row marked "Yes, as debate", or
   from a genuine values dilemma. Say which.
5. The artifact uses lessons/artifacts/artifact-template.md: a
   process log (prompts, AI output, what was checked, accepted /
   modified / rejected + why) plus a live "how do you know?" check.
   It must map to the approved take-home artifact.
6. Timing adds up to exactly 50 minutes. Assign co-leader A/B roles
   per segment. At most 15 minutes of facilitator talk in total.
7. Remove every item in the intake's "Stale claims to remove" field
   from anything carried over from the prior version.
7a. Keep the approved activities listed in the intake's "Approved
   session flow" unless they are marked free. Upgrade them with the
   six moves rather than replacing them. Keep the required group
   roles and student pre-work. If the approved timing has a collision,
   fix it inside the 50 minutes and note the change under Open
   questions for the program lead.
8. Plain language, no hype. Show limits as clearly as capabilities.
   No student names or private data.

WRITE lessons/{{SESSION_SLUG}}-{{TOPIC}}-lesson.md from
lessons/lesson-template.md. Then answer the five quality-bar
questions from CLAUDE.md in 1–2 lines each. If any answer is weak,
say so. Don't paper over it.
```
