---
topic: How to turn technical AI topics into teachable 50-minute sessions for non-CS undergraduates
researched: 2026-11-01
method: 3 parallel research agents (course providers, YouTube transcripts, higher-ed and learning science); ~40 pages, abstracts and transcripts read
matrix: comparisons/teaching-methods-matrix.md
refresh: before each new track, or when a T-row's source is more than 12 months old
---

# Teaching-methods research brief

## Question

What do the best AI educators and the teaching research actually do
to make AI concepts land with non-technical college students? And
which of those moves survive the move into a 50-minute, in-person
session of about 25 students using Claude?

## Sources, by type

- **Course providers:** DeepLearning.AI, Anthropic AI Fluency,
  Google AI Essentials, Elements of AI, fast.ai. These describe their
  design but do not prove it works (T-12 to T-18, T-29).
- **YouTube explainers, from transcripts:** 3Blue1Brown, Karpathy,
  Anthropic, Mollick, CS50, a university teaching center. These show
  what skilled explainers do, not that it works in a classroom
  (T-19 to T-26).
- **Higher-ed research and guidance:** meta-analysis, experiments,
  expert/novice studies, institutional guidance, frameworks
  (T-01 to T-11, T-27, T-28).

## Evidence (what sources say)

1. **Try first, then get taught.** A meta-analysis of 53 studies
   found problem-solving before instruction beats instruction-first
   on average (g = 0.36), with consolidation built on students' own
   attempts (T-01). It reverses for younger learners and for
   domain-general skills, and most studies are STEM.
2. **Recall beats rereading over time.** Testing outperformed
   restudying on tests 2 days and 1 week later (T-02).
3. **Peer discussion works best in the middle band.** In Mazur's
   physics data, peer discussion raised correct answers most when
   35–70% were right at first (T-03).
4. **Experts verify by leaving the page.** Fact checkers read
   laterally; novices stayed on the page and were fooled (T-04).
   SIFT turns that into four teachable moves (T-06). A 2022 field
   study suggests the skill can be taught, but that text was not
   fetched directly (T-05, PARTIAL).
5. **Grade the process, defend it live.** Sydney's two-lane guidance
   weights the documented process (prompts, critique, sources) above
   the product, and uses a live Q&A as the secure check (T-07). It is
   contested (T-08). Detectors are unreliable, and Syracuse's own
   policy bars detector-only misconduct reports (T-09).
6. **Usage data shows people stop checking polished output.** In
   Anthropic's Fluency Index, when Claude produced finished artifacts,
   users checked facts less, flagged missing context less, and
   questioned reasoning less. Only 8.7% of conversations checked facts
   at all (T-14). This data is correlational, from early adopters, and
   collected by the vendor.
7. **Providers converge on "decide before you prompt."** Anthropic's
   4D framework puts Delegation first (T-12, T-13). Google lists
   "evaluate whether generative AI is an optimal tool" as an outcome
   (T-13). fast.ai teaches the whole game before the parts (T-17).
8. **Explainers use short frames, predictions, and named failures.**
   They use one familiar frame in under 2 minutes (T-19), have the
   audience predict before the reveal (T-20), give the failure a vivid
   label and show it (T-21), and make invisible risks visible (T-22).
9. **Failure demos decay.** Mollick (Dec 2025) says his old
   jagged-frontier demos no longer fail, and the failures that remain
   are subtle (T-23).

## Inference (our reasoning, labeled)

- Finding 6 suggests a **"polished-output trap"** activity: give
  students a finished-looking, partly wrong artifact and have them
  find the errors. This is our design, not a tested one.
- Findings 1, 3 and 9 together mean **students should produce the
  failure themselves**, with a prompt tested the day before, rather
  than watch a canned demo.
- Findings 5 and 9 mean the **artifact should log process** (prompts,
  what was checked, what was kept or rejected). The team's existing
  Editorial Charter already does this.
- Video moves (finding 8) need an adaptation for a live room: a video
  can show a prediction, but a class must commit to one first, for
  example by a show of hands or a poll.

## Design rules derived (used in `docs/creative-teaching-playbook.md`)

| Rule | Basis |
|---|---|
| Decide what to delegate before any prompting | T-13, T-12 |
| Students attempt with Claude first, hit the failure, then debrief using their own attempts | T-01 (inference for AI tasks) |
| Re-run every failure prompt the day before; keep a screenshot backup | T-23; backup is house rule H-02 |
| Concept segments ≤ 2 min, one familiar frame | T-19 |
| Predict, then reveal | T-20 |
| Debate as a peer-instruction cycle: poll → 2–4 min → re-poll | T-03 |
| Open with recall of the last session; close with a teach-back | T-02 |
| Every artifact carries a prompt log and a "what I checked" line, defended live | T-07, T-24, T-26 |
| Verification routine = SIFT + lateral reading | T-06, T-04 |
| Constrain the tool on purpose ("make Claude coach, not answer") | T-25 |

## Gaps and limitations

- **Not verified:** backward design (T-30), university teaching-center
  guides, the EDUCAUSE and Digital Education Council frameworks
  (T-31), and worked-example research (T-32).
- **No source measures learning outcomes** for any AI-literacy course
  design reviewed. The vendor reports measure usage.
- **Not read:** Karpathy's long-form videos ("Deep Dive," "How I use
  LLMs"), and the Andrew Ng and Jeremy Howard talks.
- **Abstract only:** the Mollick papers (T-10, T-11).
- **Tooling:** yt-dlp was not installed, so transcripts came through
  Firecrawl's YouTube transcript provider. Firecrawl rate limits held
  each agent to about 15 fetches.
