# Slide design guide

Decks are a backdrop for the activity, not the lesson itself.
Students should spend most of the 50 minutes working, not watching.

## Rules

1. **One claim per slide.** If a slide makes two points, it becomes
   two slides, or one point gets cut.
2. **Every headline is a full sentence.** On a **claim slide** (one
   that asserts something factual), it states the claim. On an
   **activity slide** (an instruction, vote, or prompt), it's a
   full-sentence question or instruction.
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
   **Primary-source slide:** show 1–3 quoted key sentences plus the
   "judge it" line. The full 150–300-word excerpt goes on the printed
   handout.
6. **No summary slide at the end.** The last slide launches the
   production task or the teach-back.
7. **Every live demo has a backup.** Screenshot the failure the day
   before and name the file in the speaker notes (H-02, T-23).
   **Redact every screenshot**: crop out the account name, sidebar
   chat titles, and the memory panel.
8. **Predictions before reveals.** Every reveal, including a
   research number, follows a moment where students commit an answer
   (T-20).
9. **Slide minutes match the run sheet.** Any time on a slide (in the
   instructions or the notes) must agree with the Peer Leader Guide.

## Slide budget (house rule H-01)

About **12–15 slides** for a 50-minute session, and under 15 minutes
of facilitator talk in total. The Session 1 deck ran 32 slides in 50
minutes, and that pace was flagged as a likely cause of the
slideshow problem. This budget has no external source; it is a house
rule until the research supports or replaces it.

Typical shape:

The template (`lessons/slides/template.md`) uses 12:

| # | Slide | Type | Run-sheet minutes |
|---|---|---|---|
| 1 | Recall | activity | 0–2 |
| 2 | Cold open + vote | activity | 2–4 |
| 3 | Delegation decision | activity | 4–6 |
| 4 | Attempt | activity | 6–16 |
| 5 | Failure named (+ backup screenshot) | claim | 16–17 |
| 6 | Frame: why it happens | claim | 17–19 |
| 7 | Primary source: predict + judge | activity | 19–27 |
| 8 | Measured result (reveal) | claim | 19–27 |
| 9 | Debate vote 1 | activity | 27–33 |
| 10 | Re-vote | activity | 27–33 |
| 11 | Produce + verify + live check | activity | 33–45 |
| 12 | Teach-back + exit ticket | activity | 45–50 |

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

`scripts/build.sh` turns one Marp source into two outputs:

| Output | Built by | Good for | Notes |
|---|---|---|---|
| `Deck.pptx` | `scripts/marp2pptx.py` + pandoc | Presenting and editing in PowerPoint | **Editable** text boxes and **real speaker notes**. Plain default layout: apply a theme in PowerPoint (Design → Themes). The `_footer` source line becomes an italic "Source:" line at the bottom of the slide. Marp-only styling (`style:`, `_class: lead`) is dropped |
| `Deck.pdf` | Marp (pinned) | Printing, read-only sharing | Matches the Marp preview exactly. No speaker notes |

- **The markdown is the source of truth.** If someone edits the .pptx in
  PowerPoint, copy the changes back into the markdown, or they'll be
  lost at the next build.
- Keep slides simple enough to survive the conversion: headings,
  short text, one table or one image. Complex Marp CSS won't carry
  over into the .pptx.
- An SU-styled `reference.pptx` (pandoc's `--reference-doc`) is
  deferred until there's a branded template to copy.
