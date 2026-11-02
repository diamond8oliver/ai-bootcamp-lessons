# Research method: cross-compare, claim by claim

A lesson is only as good as the claims it rests on. This method turns
a pile of sources into a **claim matrix**: one row per claim, showing
which sources agree, which disagree, and how sure we are. The slides
and the artifact are both built from this one matrix, so they never
contradict each other.

## Rules

1. **At least 3 sources per lesson, of mixed types** (CLAUDE.md). The
   tiers are in `docs/up-to-date-research-playbook.md`.
2. **Teach a claim only if at least 2 credible sources agree.** A
   claim with one source is either cut or taught explicitly as "one
   source says…" with that caveat on the slide.
3. **Conflicts are content, not noise.** When credible sources
   disagree, the disagreement becomes a debate or dilemma in the
   lesson (`docs/creative-teaching-playbook.md`).
4. **Every row is dated:** the source's publication date and the date
   you fetched it.
5. **Name who ran it.** Vendor research about its own product, and
   vendor-sponsored surveys, are labeled in the row.
6. **Separate evidence from inference.** The matrix holds what
   sources say. Your reasoning across sources goes in the brief,
   labeled as inference.

## Matrix format

File: `comparisons/[topic]-matrix.md`. Claim IDs are prefixed by
topic so lessons can cite them (for example `C-` for content claims;
the teaching-methods matrix uses `T-`).

```markdown
| ID | Claim | Source A | Source B | Source C | Agreement | Who ran it | Source dates | Fetched | Confidence | Teachable |
|---|---|---|---|---|---|---|---|---|---|---|
| C-01 | One plain-language sentence | supports — title, URL | supports — title, URL | silent | 2 agree, 0 contradict | academic / vendor / press | 2026-05-07; 2026-04-03 | 2026-11-01 | High | Yes |
| C-02 | ... | supports | contradicts | — | conflict | ... | ... | ... | Medium | Yes, as debate |
| C-03 | ... | supports (snippet only) | — | — | 1 source | ... | ... | — | Low | No: UNVERIFIED |
```

**Stance values:** supports · contradicts · partly supports · silent
(the source does not address the claim).

**Teachable values:**
- **Yes:** at least 2 credible sources agree.
- **Yes, as debate:** credible sources conflict, and the conflict is
  taught as a debate.
- **Yes, caveated:** one strong source, with the caveat shown on the
  slide.
- **No: UNVERIFIED:** not taught.

## Confidence

| Level | Meaning |
|---|---|
| High | 2+ independent credible sources agree, at least one primary (study, docs, official record) |
| Medium | Credible but single-type (e.g. two vendor sources), older models, or abstract-only reading |
| Low | One source, secondary, vendor-run survey, or a small sample |

## Process

1. Start from the topic radar rows chosen for the session.
2. For each row, fetch every source. Write each distinct claim as
   one sentence.
3. For each claim, look for confirming and contradicting sources.
   Search for the critique too, not just support.
4. Fill in the matrix. Mark the status of anything not fully read
   (ABSTRACT, PARTIAL, UNVERIFIED).
5. In the brief, write the inference section: what the claims mean
   together, labeled as your reasoning.
6. List the gaps: what you could not establish.

## Worked example

The real `comparisons/teaching-methods-matrix.md` shows the format in
use, including ABSTRACT and UNVERIFIED rows and house rules (H-IDs)
that are labeled as having no source.
