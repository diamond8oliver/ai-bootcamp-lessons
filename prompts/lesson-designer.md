# Prompt: lesson designer (stage 2: design + build)

**When:** the session's brief and claim matrix exist.

**Output (private sessions repo), in one pass from one matrix:**
- `lessons/[session]-[topic]-lesson.md`: exports as the **Peer Leader
  Guide**
- `lessons/slides/[session]-[topic]-slides.md`: Marp, exports as an
  editable .pptx plus a .pdf
- `lessons/artifacts/[session]-[topic]-artifact.md`: the student
  handout

Then run `scripts/build.sh` on all three.

**Read first:** `docs/creative-teaching-playbook.md`,
`docs/slide-design-guide.md`.

---

```text
You are designing a 50-minute, college-level, in-person AI-judgment
session for non-CS undergraduates (about {{COHORT_SIZE}} students, two
co-leaders, {{PLATFORM}} required, no coding). Today is {{TODAY}}. The
goal: a class students find intriguing and argue about afterwards,
that the peer leaders are proud to teach.

INPUTS (read all of them before writing):
- Intake: lessons/{{SESSION_SLUG}}-intake.md. Approved objectives, the
  artifact, badge criteria, and LOCKED activities are fixed.
- Matrix: comparisons/{{TOPIC}}-matrix.md. This is the ONLY source of
  claims.
- Brief: research/{{TOPIC}}-brief.md (primary source for class, live
  failure plan, debate candidates, likely student questions).
- Public repo: docs/creative-teaching-playbook.md (moves, rigor bar,
  upgrade-don't-replace, patterns), docs/slide-design-guide.md,
  comparisons/teaching-methods-matrix.md (T-IDs), and templates in
  lessons/.
- Latest retro, if any: lessons/{{SESSION_SLUG}}-retro.md. Fix what it
  says failed.
- OPTIONAL prior version: {{PRIOR_VERSION_NOTES}}. Treat it as a DRAFT
  to improve, NEVER as evidence. Keep what worked.

DESIGN RULES
1. UPGRADE, DON'T REPLACE: keep every approved activity in the intake's
   "Approved session flow" unless it is marked free. Upgrade each one
   with the six moves (see the playbook's worked example). Keep the
   required group roles and student pre-work. If the approved timing
   collides, fix it inside 50 minutes and note it under Open
   questions.
2. Use all six moves. Cite the T-ID and the evidence tag
   (Strong/Moderate/Practice/House) for each one.
3. Clear the RIGOR BAR: students read the brief's primary source in
   class, judge its evidence (n, who ran it, date, model, causal or
   not), defend a claim with it, see one genuine disagreement, and do
   no button-teaching.
4. Every factual statement cites a matrix claim ID (C-xx). If it is not
   in the matrix, it is not in the lesson, the deck, or the artifact.
5. The failure is caught by students, with a tested prompt and a
   screenshot backup plan.
6. Timing adds up to exactly 50 minutes, with co-leader A/B roles for
   every segment and at most 15 minutes of facilitator talk.
7. Remove every item in the intake's "Stale claims to remove".
8. Plain language, no hype. Show limits as clearly as capabilities.
   No student names or private data.

WRITE
a) The lesson, from lessons/lesson-template.md. Fill every section,
   including "Why this works" (to train the co-leader) and "Likely
   student questions" (answers cite C-IDs).
b) The deck, from lessons/slides/template.md and
   docs/slide-design-guide.md: about 12–15 slides, one claim per
   slide, a full-sentence headline, a `_footer` source line on every
   claim slide, presenter notes on every slide, a backup screenshot
   referenced in the notes for each live demo, a prediction before
   every reveal, and no summary slide. Keep the markup simple, since
   it converts to an editable .pptx.
c) The artifact, from lessons/artifacts/artifact-template.md, mapped
   to the approved take-home artifact and badge criteria. If the
   approved artifact has several components, include all of them.

Then run scripts/build.sh on all three files, and open the outputs to
check them. Answer the five quality-bar questions and the five
rigor-bar checks from CLAUDE.md in one line each. If an answer is weak,
say so. Don't paper over it.
```
