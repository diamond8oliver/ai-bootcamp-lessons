# Slide design guide

Decks are a backdrop for the activity, not the lesson itself.
Students should spend most of the 50 minutes working, not watching.

## Rules

1. **One claim per slide.** If a slide makes two points, it becomes
   two slides, or one point gets cut.
2. **The headline is a full sentence that states the claim.**
   - Not: "Citation accuracy"
   - Yes: "Links in AI research reports usually work. The claims
     behind them often don't."
3. **Evidence goes on the slide:** a screenshot, a number, a quote,
   or a chart. **The source and date go in the footer** of every slide
   that makes a claim, with the claim ID from the matrix, e.g.
   `C-04 · arXiv 2605.06635 · 2026-05-07`.
4. **The explanation goes in the speaker notes**, not on the slide.
   The notes are where the facilitator's talking points and the
   backup screenshot description live.
5. **No bullet walls.** At most 3 short lines of text on any slide.
   A slide with more needs to be split or turned into a handout.
6. **No summary slide at the end.** The last slide launches the
   production task or the teach-back.
7. **Every live demo has a backup.** Screenshot the failure the day
   before and reference it in the speaker notes (H-02, T-23).
8. **Predictions before reveals.** A reveal slide follows a slide
   where students commit an answer (T-20).

## Slide budget (house rule H-01)

About **12–15 slides** for a 50-minute session, and under 15 minutes
of facilitator talk in total. The Session 1 deck ran 32 slides in 50
minutes, and that pace was flagged as a likely cause of the
slideshow problem. This budget has no external source; it is a house
rule until the research supports or replaces it.

Typical shape:

| Slide type | Count |
|---|---|
| Recall + cold open (prediction) | 2 |
| Delegation decision | 1 |
| Attempt instructions + timer | 1–2 |
| Failure reveal + name | 1–2 |
| Concept frame (≤ 2 min) | 1–2 |
| Evidence slides (claim + source) | 2–4 |
| Debate question + re-vote | 2 |
| Production launch + criteria | 1 |
| Teach-back prompt | 1 |

## Marp mechanics

Decks are Marp markdown (`lessons/slides/*.md`), exported by
`scripts/build.sh` to .pptx and .pdf.

```markdown
---
marp: true
theme: default
paginate: true
footer: "Session N · Topic"
---

# A full-sentence headline that states the claim

![w:700](images/evidence.png)

<!-- _footer: "C-04 · Source title · 2026-05-07" -->

<!--
Speaker notes go in an HTML comment that is NOT a directive.
Explain the claim here. Backup: if the live demo passes, show
images/backup-failure.png (captured 2026-11-03).
-->
```

- `---` separates slides.
- `<!-- _footer: "..." -->` sets the footer for **this slide only**.
  Use it for the source line.
- Any other HTML comment becomes a **presenter note**, and it survives
  the .pptx export.
- Images go in `lessons/slides/images/`. Never commit screenshots
  that show student names or private data.

## Export behavior (know before you edit)

- `.pptx` export renders each slide as an image and **keeps the
  speaker notes**. The slide text **cannot be edited in PowerPoint**.
  Edit the markdown and rebuild.
- Marp has an editable-PPTX mode, but it needs LibreOffice and
  **drops speaker notes**, so we don't use it.
- `.pdf` export is for printing and for sharing a read-only copy.
