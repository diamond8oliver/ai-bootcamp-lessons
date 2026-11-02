# Teaching-methods claim matrix

Companion to `research/teaching-methods-brief.md`. Every design rule in
`docs/` cites a T-ID from this table. If a rule has no T-ID, it is a
house rule (H-ID, bottom of this file) and must say so.

- **Research run:** 2026-11-01, three parallel research agents
  (course providers, YouTube transcripts, higher-ed and learning
  science). Method: `docs/research-method.md`.
- **Fetched:** the page, transcript, or abstract was actually read on
  the fetch date. A search snippet does not count.

## Status key

| Status | Meaning |
|---|---|
| VERIFIED | Full page, transcript, or paper text was read |
| ABSTRACT | Only the abstract or summary page was read. Do not quote specifics beyond it |
| PARTIAL | Text came through search-result output, not a separate fetch. Re-fetch before teaching |
| UNVERIFIED | Not read. Do not cite or teach |

**VERIFIED** means a research agent reported fetching and reading the
source. **✓ spot-checked** means a second, independent fetch confirmed
the quoted facts word for word (date given).

## Matrix

| ID | Claim (what the source supports) | Source | Type | Source date | Fetched | Status | Confidence | Used in |
|---|---|---|---|---|---|---|---|---|
| T-01 | Problem-solving before instruction beats instruction-first on average: 53 studies, 166 comparisons, Hedges g 0.36 (95% CI 0.20–0.51). The effect is larger for high-fidelity productive-failure designs; consolidation should build on students' own solutions. **Caveats:** results favor instruction-first for younger learners and domain-general skills; most studies are STEM | Sinha & Kapur, "When Problem Solving Followed by Instruction Works," *Review of Educational Research*. https://doi.org/10.3102/00346543211019105 | Meta-analysis | 2021 | 2026-11-01 | VERIFIED | Medium (applying it to AI-judgment tasks is an inference) | Attempt-then-consolidate move |
| T-02 | Students who were tested outperformed students who restudied on delayed tests (2 days, 1 week). Restudying won at 5 minutes and raised confidence more | Roediger & Karpicke, *Psychological Science*. https://pubmed.ncbi.nlm.nih.gov/16507066/ | Experiments (2, prose passages) | 2006 | 2026-11-01 | ABSTRACT | Medium (prose, not judgment tasks) | Opening recall, teach-back |
| T-03 | Peer-instruction cycle: short presentation → conceptual question → individual answer → 2–4 min peer discussion → re-poll → explanation. Correct answers rose after discussion when 35–70% were correct at first | Crouch & Mazur, "Peer Instruction: Ten years of experience and results," *Am. J. Physics*. https://users.wfu.edu/gemmerj/files/S23/FYS/PhysEd.pdf | Observational (one institution, physics) | 2001 | 2026-11-01 | VERIFIED | Medium | Debate/dilemma cycle |
| T-04 | Fact checkers read laterally: they left the site and opened new tabs, and reached better conclusions faster. Historians and Stanford undergraduates stayed on the page and were fooled by logos and domains (n=45) | Wineburg & McGrew, *Teachers College Record*. https://eric.ed.gov/?id=EJ1262001 | Expert/novice think-aloud | 2019 | 2026-11-01 | ABSTRACT | Medium (about websites, not AI output) | Verification routine |
| T-05 | Lateral reading can be taught: in a matched-control field study (treatment n=271, control n=228; six 50-min lessons; high school), the treatment group improved at judging credibility | Wineburg et al., *J. Educational Psychology*. https://eric.ed.gov/?id=EJ1372738 | Quasi-experimental | 2022 | — | PARTIAL | Low until re-fetched | Verification routine |
| T-06 | SIFT: Stop; Investigate the source; Find better coverage; Trace claims, quotes and media to the original context. Quick checks and deep checks are both valid choices | Caulfield, "SIFT (The Four Moves)." https://hapgood.us/2019/06/19/sift-the-four-moves/ | Practitioner guide | 2019-06-19 | 2026-11-01 | VERIFIED | High (as a method) | Verification routine |
| T-07 | Two-lane assessment: secure (in-person) assessments verify learning; open ones scaffold AI use. Weight the documented process (prompts, critique, sources) more than the product, and use a live Q&A defense as the secure check | Liu & Bridgeman, "What to do about assessments if we can't out-design or out-run AI?", Teaching@Sydney. https://educational-innovation.sydney.edu.au/teaching@sydney/what-to-do-about-assessments-if-we-cant-out-design-or-out-run-ai/ | Institutional practitioner guidance | 2023, updated 2025 | 2026-11-01 | VERIFIED | Medium (no outcome data) | Artifact + defense |
| T-08 | The all-or-nothing two-lane model is contested and called "insupportable" | Curtis, *Higher Education Research & Development* (comment). https://www.tandfonline.com/doi/full/10.1080/07294360.2025.2476516 | Opinion | 2025 | 2026-11-01 | ABSTRACT | Low | Caveat on T-07 |
| T-09 | AI detectors are unreliable: false positives and negatives, possible bias against non-native writers. Syracuse's policy bars an AI-misconduct report based on detector results alone | Sydney page (T-07); Syracuse Academic Integrity Policy, https://policies.syr.edu/policies/academic-rules-student-responsibilities-and-services/academic-integrity-policy/ (approved 2025-07-08); Inside Higher Ed, 2026-08-05, https://www.insidehighered.com/news/tech-innovation/artificial-intelligence/2026/08/05/ai-detectors-are-out-new-approaches-are | Practitioner + institutional policy + press | 2025–2026 | 2026-11-01 | VERIFIED ✓ spot-checked 2026-11-01 (detector-only clause quoted; "Approved by Provost: July 8, 2025") | High | Process-graded artifacts; S4 content |
| T-10 | Seven roles for AI in class (tutor, coach, mentor, teammate, tool, simulator, student). Risks: complacency, errors, bias. Mitigation: the student stays "human in the loop" | Mollick & Mollick, "Assigning AI: Seven Approaches for Students, with Prompts." https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4475995 | Practitioner framework (working paper) | 2023 | 2026-11-01 | ABSTRACT | Medium | Activity design ("AI as student" teach-back) |
| T-11 | AI can help instructors build materials for evidence-based strategies: multiple examples, surfacing misconceptions, low-stakes testing, assessment, distributed practice. Only if used cautiously | Mollick & Mollick, "Using AI to Implement Effective Teaching Strategies in Classrooms." https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4391243 | Practitioner guide | 2023 | 2026-11-01 | ABSTRACT | Medium | Instructor-side prep (quiz drafts) |
| T-12 | The 4D framework (Delegation, Description, Discernment, Diligence) is taught as lasting judgment habits rather than "disposable tips and tricks." Discernment is presented as a checklist: facts accurate, reasoning sound, fits your audience | Anthropic AI Fluency: Coursera https://www.coursera.org/learn/ai-fluency-framework-foundations (updated May 2026); Claude Academy https://academy.claude.com/courses/ai-fluency-framework-foundations; "Lesson 2B: The 4D Framework," Anthropic YouTube https://www.youtube.com/watch?v=W4Ua6XFfX9w (2025-06-12) | Provider framework (opinion) | 2025–2026 | 2026-11-01 | VERIFIED (course pages + full transcript) | Medium (no outcome data) | Shared vocabulary across sessions |
| T-13 | Delegation is a decision before prompting: assess goals and AI capability, then decide what to hand over. "Reserve the critical analysis and final conclusions for yourself" (2B, ~1:00–1:12). Google lists "Evaluate whether generative AI is an optimal tool" as an outcome | T-12 sources; Google AI Essentials, https://www.coursera.org/learn/google-ai-essentials | Provider design | 2025–2026 | 2026-11-01 | VERIFIED | Medium | Intake, cold open, every session |
| T-14 | Conversations with iteration (85.7% of 9,830) showed more of every other fluency behavior (2.67 more on average) and were 5.6× more likely to question Claude's reasoning. When Claude produced artifacts, users checked facts less (−3.7 pp), flagged missing context less (−5.2 pp) and questioned reasoning less (−3.1 pp). Only 8.7% of conversations checked facts, and 30% set terms for how Claude should interact | Anthropic Education Report, "The AI Fluency Index." https://academy.claude.com/tutorials/the-ai-fluency-index | Observational, correlational, one week, early-adopter skew; vendor studies its own product | 2026-02-23 | 2026-11-01 | VERIFIED | Medium | "Polished-output trap," iteration as default |
| T-15 | About 47% of student conversations were "Direct" (answer-seeking). Claude mostly performed Creating (39.8%) and Analyzing (30.2%) tasks, an "inverted pyramid" offloading concern | Anthropic, "Anthropic Education Report: How University Students Use Claude." https://www.anthropic.com/research/anthropic-education-report-how-university-students-use-claude | Observational; vendor | 2025-04-08 (modified 2026-10-23) | 2026-11-01 | VERIFIED | Medium | Cold open (students classify their own chats) |
| T-16 | Educators automate administrative work and keep AI as a collaborator on context-heavy work: "a thought partner, not a thought substitute." Some redesign assignments AI can't complete | Anthropic, "How educators use Claude." https://www.anthropic.com/research/anthropic-education-report-how-educators-use-claude | Observational (74k conversations + 22 faculty); vendor | 2025-08-27 | 2026-11-01 | VERIFIED | Medium | Delegation framing |
| T-17 | Teach the "whole game" first: a working tool on real problems, then dig into how it works. Encourages making mistakes. Cites Perkins' "elementitis" | fast.ai, "Providing a Good Education in Deep Learning." https://www.fast.ai/posts/2016-10-08-teaching-philosophy.html ; v2 launch https://www.fast.ai/posts/2018-01-26-v2-launch.html | Provider opinion citing ed research | 2016, 2018 | 2026-11-01 | VERIFIED | Low–Medium (old) | Real task first, theory second |
| T-18 | Elements of AI: written answers are peer-reviewed (retries allowed if rejected); exercises push re-reading. Learning outcomes include "critical evaluation of claims made about AI" | University of Helsinki course unit TKT21018. https://studies.helsinki.fi/courses/course-unit/hy-CU-124047974-2020-08-01 | Provider description | curriculum 2020–2023 | 2026-11-01 | VERIFIED | Medium | Written justification + peer review |
| T-19 | Explain with one familiar frame in under 2 minutes ("torn-off movie script" + next-word predictor, ~0:01–0:33). Show the randomness rather than the math: the same prompt typically gives a different answer each time (~1:13–1:28) | 3Blue1Brown, "Large Language Models explained briefly." https://www.youtube.com/watch?v=LPZh9BOjkQs | What the speaker does (transcript) | 2024-11-20 | 2026-11-01 | VERIFIED | Medium (that it works is an inference) | Concept segments ≤ 2 min |
| T-20 | Predict, then reveal: the audience guesses the scale (compute time) before the answer is given (~3:33–3:45) | 3Blue1Brown (as T-19), https://www.youtube.com/watch?v=LPZh9BOjkQs | What the speaker does | 2024-11-20 | 2026-11-01 | VERIFIED | Medium | Predict-then-reveal slides |
| T-21 | Name the failure with a vivid label, then show it ("LLM dreams": a made-up listing whose ISBN "almost certainly does not exist"). Admit the opacity: "mostly inscrutable artifacts" | Karpathy, "[1hr Talk] Intro to Large Language Models." https://www.youtube.com/watch?v=zjkBMFhNj_g (chapter at 8:58) | What the speaker does | 2023-11-22 | 2026-11-01 | VERIFIED (targeted passages) | Medium | Failure-case framing |
| T-22 | Make the invisible attack visible: an image with faint text the human can't see steers the model (prompt injection, chapter at 51:30) | Karpathy (as T-21), https://www.youtube.com/watch?v=zjkBMFhNj_g (chapter at 51:30) | What the speaker does | 2023-11-22 | 2026-11-01 | VERIFIED (targeted passages) | Medium | S3/S5 agent and file-risk demos |
| T-23 | **Failure demos decay.** Word-counting used to show the jagged frontier, but models now pass it: "I don't have good examples for you now." The remaining failures are subtle | Mollick & Jaffe, "Navigating the jagged frontier of generative AI," Insight Partners. https://www.youtube.com/watch?v=Yka2S-yTX70 | Practitioner talk | 2025-12-05 | 2026-11-01 | VERIFIED (passages) | High (as a prep rule) | CHECKLIST T-1d demo re-run |
| T-24 | Syllabus rules that make verification the student's job: AI "lies to you a lot, you're responsible for its content"; list every prompt and write a reflection | Mollick, "AI Required: Teaching in a New World," ASU+GSV. https://www.youtube.com/watch?v=PN-kYyaoBO4 | Practitioner talk | 2023-04-23 | 2026-11-01 | VERIFIED (~2/3 of talk) | Medium | Prompt log on every artifact |
| T-25 | Deliberately constrain the tool: CS50's AI duck has "pedagogical guardrails" that make it less helpful, so it coaches instead of answering | Malan, "Teaching CS50 with AI." https://www.youtube.com/watch?v=ggshaJcOc6Y | Practitioner talk | 2024-05-06 | 2026-11-01 | VERIFIED (passages) | Medium | S1 "make Claude coach me" exercise |
| T-26 | Build the critical step into assessment: process reflections or disclosure statements on how accuracy was checked | Badenhorst, "Critical AI literacy: Talking to students about generative AI," CITL, Memorial Univ. https://www.youtube.com/watch?v=GRXMbMnLxSk | Practitioner talk | 2025-03-27 | 2026-11-01 | VERIFIED (passages) | Medium | "What I checked" line on artifacts |
| T-27 | AI literacy defined as competencies to "effectively interact with and critically evaluate AI," plus design considerations | Long & Magerko, "What is AI Literacy?", CHI 2020. https://dl.acm.org/doi/10.1145/3313831.3376727 | Framework (literature synthesis) | 2020 | 2026-11-01 | ABSTRACT | Medium | Outcome wording |
| T-28 | UNESCO student framework: 12 competencies in 4 dimensions (human-centred mindset, ethics of AI, AI techniques and applications, AI system design), 3 levels (understand, apply, create). Built for school curricula | UNESCO (Miao, Shiohira, Lao), "AI competency framework for students." https://www.unesco.org/en/articles/ai-competency-framework-students | Framework | 2024 | 2026-11-01 | VERIFIED (summary page) | Medium | Difficulty progression check |
| T-29 | AI for Everyone: 35 video lessons, 4 weeks, "examples of what today's AI can – and cannot – do." Generative AI for Everyone: 32 lessons, 3 weeks. (A ~10–12 min per-video average is arithmetic, not stated) | DeepLearning.AI: https://www.deeplearning.ai/courses/ai-for-everyone (updated 2026-07-17); https://www.deeplearning.ai/courses/generative-ai-for-everyone (updated 2026-10-27) | Provider description | 2026 | 2026-11-01 | VERIFIED | Medium | Show limits alongside capability |
| T-30 | Backward design (Wiggins & McTighe) | Vanderbilt CFT page redirected; not read | — | — | — | UNVERIFIED | — | Do not cite |
| T-31 | University teaching-center guidance (Harvard Bok, Stanford CTL, U Michigan, Syracuse CTL), EDUCAUSE and Digital Education Council frameworks | Not fetched | — | — | — | UNVERIFIED | — | Next research run |
| T-32 | Worked examples vs. problem solving (Sweller, Kalyuga) | Not searched | — | — | — | UNVERIFIED | — | Next research run |

## Where sources conflict or are weak

- **T-01 vs. instruction-first.** Productive failure reverses for
  younger learners and domain-general skills, and most studies are
  STEM. Keep the attempt short and consolidate right away.
- **T-04/T-05 are about websites, not AI.** Applying lateral reading
  to AI output is an inference. T-05 used high school students.
- **T-03 is observational** (one institution, physics). Treat the
  35–70% band as a heuristic, not a law.
- **T-07 vs. T-08.** Two-lane is institutional advice with no outcome
  data, and it is contested.
- **T-12 to T-16 are vendor sources.** Anthropic studies its own
  product and measures usage, not learning. None of the course
  providers publish learning-outcome evidence.
- **T-19 to T-26 show what skilled explainers do, not that it works
  in a classroom.** A video is not a 50-minute room. The "why it
  works" step is an inference.

## House rules (no source; say so wherever used)

| ID | Rule | Why |
|---|---|---|
| H-01 | Slide budget: about 12–15 slides per 50-minute session, with at most ~15 minutes of facilitator talk in total | The Session 1 deck ran 32 slides in 50 minutes and was flagged as a likely cause of the slideshow problem. No external source checked yet |
| H-02 | Every live AI demo has a screenshot backup in the deck's speaker notes | Live outputs vary by run (T-19) and failure demos decay (T-23). The backup itself is a house rule |
| H-03 | Two co-leaders: A runs the room, B runs the demo machine and the timer | Cohort is run by two peer leaders. No external source |
| H-04 | The 50-minute timing skeleton in `docs/creative-teaching-playbook.md` | Minute marks are a house default. The moves inside each segment cite T-rows |
| H-05 | **Rigor bar** for college-level sessions: (a) students read part of at least one primary source; (b) students judge the evidence: sample size, who ran or funded it, date, model tested, descriptive vs. causal; (c) students make a claim and defend it with evidence; (d) at least one genuine disagreement between two named, verified positions is shown honestly; (e) no button-teaching unless it serves a judgment | Partly supported: lateral reading and source evaluation (T-04, T-06), "critical evaluation of claims made about AI" as a learning outcome (T-18), UNESCO's critical-judgement emphasis (T-28). The five-part bar as a package is our design |
