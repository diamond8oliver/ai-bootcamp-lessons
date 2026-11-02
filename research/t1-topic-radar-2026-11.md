---
track: 1 (AI Professional Skills)
snapshot: 2026-11-01
method: 3 parallel research agents (Sessions 1–2, 3–4, 5 + cross-cutting), ~45 fetches, prompt = prompts/topic-radar.md
status: SNAPSHOT. Re-verify any row you teach within 30 days of class (docs/up-to-date-research-playbook.md)
---

# Track 1 topic radar: November 2026

> **Refresh before teaching.** This is a dated snapshot, not a
> standing truth. AI products, error rates and studies change monthly.
> Before a row goes into a lesson, re-fetch its sources, then move it
> into that lesson's claim matrix in `comparisons/`.
>
> **Built against the Fall 2026 Track 1 plans.** Next semester's
> approved plans may differ. Re-run `prompts/topic-radar.md` against
> them at the start of the semester, and use this file as leads, not
> as the answer.
>
> **✓ spot-checked** rows were confirmed word for word by a second,
> independent fetch on 2026-11-01: R3-01, R4-03, R5-01.

These are current AI developments that fit the **already approved**
Track 1 session objectives. Each row has a failure students can catch
live or a real disagreement to debate. Each row also says who ran or
paid for the research, because much of the AI-use data comes from
vendors.

**Source status:** VERIFIED = page fetched and read · PARTIAL = text
came through search output only; re-fetch before use · UNVERIFIED =
do not teach.

## Session 1: The Art of the Prompt

Objectives in scope: natural communication; iteration; failure modes
(sycophancy, tunnel vision, fabricated confidence, over-reliance on
the user's framing); context windows; RCTF as a fallback.

| ID | Topic | What happened (date) | Live failure / debate | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|
| R1-01 | **Sycophancy is measured and gets worse under pushback** | A Science paper tested 11 models (Stanford Report, 2026-03-26). Anthropic reports sycophancy of 18% when users push back vs 9% without (2026-04-30, modified 2026-10-23) | **Failure:** students give Claude a one-sided dilemma, then push back, and watch it cave. **Debate:** should AI push back, or respect user autonomy? | Stanford Report, https://news.stanford.edu/stories/2026/03/ai-advice-sycophantic-models-research (VERIFIED). Anthropic, "How people ask Claude for personal guidance," https://www.anthropic.com/research/claude-personal-guidance (VERIFIED) | Academic; Anthropic grades its own model with a Claude classifier | High |
| R1-02 | Vendor rollback case: the GPT-4o sycophancy update | OpenAI shipped the update 2025-04-25, began rolling it back 2025-04-28, and published a post-mortem around 2025-05-02. It says thumbs-up feedback and memory contributed. Stanford found users rated sycophantic AI as more trustworthy | **Debate:** if users reward flattery, should vendors optimize for it? | OpenAI, "Expanding on what we missed with sycophancy," https://openai.com/index/expanding-on-sycophancy/ (PARTIAL). Stanford (R1-01) | Vendor self-report | High |
| R1-03 | "Context engineering" vs. prompt engineering | Anthropic engineering post (2025-09-29, modified 2026-10-18): context is a finite "attention budget," and compaction can drop early details | **Debate:** is prompt engineering dead, or just renamed? | Anthropic, "Effective context engineering for AI agents," https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents (VERIFIED). Chroma, "Context Rot," https://research.trychroma.com/context-rot (VERIFIED, undated) | Vendors (Anthropic; Chroma sells retrieval infrastructure) | High (concept) |
| R1-04 | Long-context degradation ("context rot") | Chroma tested 18 models; Anthropic cites it as affecting every model. The models tested are older (Claude Sonnet 4, GPT-4.1, Gemini 2.5) | **Failure:** bury a fact mid-conversation, then ask for it later. Rehearse it the day before (T-23) | Chroma, https://research.trychroma.com/context-rot (VERIFIED, undated). Anthropic, https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents (VERIFIED) | Vendor | Medium (current rates unknown) |
| R1-05 | **Memory is on by default** for consumer plans | Claude Help Center (undated): memory is on by default for Free, Pro, Max and Ultra; off until enabled on Team and Enterprise. Deleting a chat does not delete memory entries drawn from it. Incognito chats are kept 30+ days for safety. MacRumors (2026-03-02) reports free-user memory launched | **Failure:** stale memory steers answers. **Debate:** convenience vs. privacy. **Check first:** which plan SU accounts are on | Claude Help Center, https://support.claude.com/en/articles/11817273-use-claude-s-chat-search-and-memory-to-build-on-previous-context (VERIFIED). MacRumors (PARTIAL) | Vendor docs | High |
| R1-06 | Official prompting guidance has shifted away from rigid templates | Claude docs (undated; lists models through Fable 5.1): give the goal, audience, constraints and what "done" means; put long documents first; ask for quotes. OpenAI's GPT-6 guide (2026-10-02): over-specific guidance "can now hinder results" | **Debate:** do RCTF-style templates still help, or hurt? | Claude docs, https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices (VERIFIED). OpenAI, "A model guide for the GPT-6 family," https://openai.com/index/practical-guide-building-gpt-6/ (VERIFIED) | Vendor docs | High |
| R1-07 | Reasoning models think automatically | Claude docs: on the newest models, thinking is always on and adaptive, and "adaptive thinking reliably drives better performance than extended thinking." Tow Center found premium models were more confidently wrong | **Failure:** a confident wrong answer after long "thinking" | Claude docs, https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices (VERIFIED). Tow Center, https://www.cjr.org/tow_center/we-compared-eight-ai-search-engines-theyre-all-bad-at-citing-news.php (VERIFIED) | Vendor docs + academic | Medium (docs are API-oriented; claude.ai behavior UNVERIFIED) |

**Top pick:** R1-01. It has a live demo, recent research from two
independent sources, and it maps straight onto the "over-reliance on
the user's framing" objective.

## Session 2: AI for Research & Synthesis

Objectives in scope: AI-assisted research workflows, citation
verification, executive summarization.

| ID | Topic | What happened (date) | Live failure / debate | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|
| R2-01 | **Cited, but not true** | A preprint benchmarking 14 LLMs (2026-05-07) found links resolve >94% of the time and look relevant >80%, but factual accuracy is only 39–77%. Fact-check accuracy fell ~42% as tool calls went from 2 to 150 | **Failure:** students open each cited source and check whether it actually says the claim. **Debate:** is "deep research" worth it? | Onweller et al., "Cited but Not Verified," https://arxiv.org/abs/2605.06635 (VERIFIED). Rao et al., https://arxiv.org/abs/2604.03173 (VERIFIED) | Academic preprints | Med–High |
| R2-02 | Fabricated URLs in deep-research reports | Rao et al. (2026-04-03): 3–13% of citation URLs were hallucinated and 5–18% did not resolve. Deep-research agents cite more but fabricate at higher rates | **Failure:** click every link in a deep-research report | Rao et al., https://arxiv.org/abs/2604.03173 (VERIFIED). Onweller et al., https://arxiv.org/abs/2605.06635 (VERIFIED) | Academic preprints | High |
| R2-03 | Fake citations inside published science | A Lancet audit found 4,046 fabricated references in 2,810 papers. The rate rose from 1 in 2,828 (2023) to 1 in 277 (early 2026), and 98.4% of the papers got no publisher action (The Scientist, 2026-05-15). arXiv introduced a one-year ban for unchecked output (TNW, 2026-05-17) | **Debate:** retract or correct? Is arXiv's ban fair? | The Scientist, https://www.the-scientist.com/one-in-277-biomedical-papers-carry-fake-references-74480 (VERIFIED). TNW, https://thenextweb.com/news/arxiv-ai-slop-ban-researchers-preprint (VERIFIED). Inside Higher Ed, 2026-03-06 (PARTIAL) | Academic audit + press | High |
| R2-04 | Fake cases in court filings keep surging | Reuters (2026-09-17): 1,395 US cases on a tracker, and a judge's own order cited fake cases. A Mississippi judge removed all four lawyers in a case (2026-06-08) | **Debate:** sanctions or training? Should judges use AI? | Reuters, https://www.reuters.com/legal/government/ai-error-ridden-court-filings-surge-despite-three-years-court-sanctions-2026-09-17/ (VERIFIED). Mississippi Free Press, https://www.mississippifreepress.org/ai-hallucinations-prompt-mississippi-judge-to-boot-all-lawyers-from-case-for-blindly-relying-on-technology/ (PARTIAL) | Press | High (Reuters) |
| R2-05 | **The "AI summary" trap** | A senior journalist at Mediahuis summarized reports with AI and trusted them; quotes from 8 people were invented, and 15 of 53 posts were affected (CJR/Tow Center, late Mar 2026, date inferred). Deloitte's Australian government report contained fake references and a fabricated judicial quote, and the firm gave a partial refund (Oct 2025) | **Failure:** students verify every quote in an AI summary. **Debate:** who is accountable? | CJR, "Did I Really Say That?", https://www.cjr.org/tow_center/did-i-really-say-that-dutch-journalist-ai-fabricate-quotes-vandermeersch-mediahuis.php (VERIFIED). Fortune, https://fortune.com/2025/10/07/deloitte-ai-australia-government-report-hallucinations-technology-290000-refund/ (PARTIAL) | Press | High (CJR) |
| R2-06 | AI search misattributes news (method, not current rates) | Tow Center (Mar 2025; tests run Feb 2025): >60% of citation queries were wrong. ChatGPT got 134 of 200 wrong and hedged only 15 times; premium tools were more confidently wrong. EBU/BBC (2025-10-22): 45% of answers had a significant issue, and 31% had serious sourcing problems | **Failure:** the "find the original article" test, run live | Tow Center, https://www.cjr.org/tow_center/we-compared-eight-ai-search-engines-theyre-all-bad-at-citing-news.php (VERIFIED). Reuters on EBU, https://www.reuters.com/business/media-telecom/ai-assistants-make-widespread-errors-about-news-new-research-shows-2025-10-21/ (PARTIAL) | Academic + broadcasters | High (method) |
| R2-07 | AI-written peer reviews | Pangram flagged 21% of ICLR 2026 reviews as fully AI-generated, and AI reviews gave higher scores (undated, likely Nov 2025) | **Debate:** should a human judgment be required? | Pangram, https://www.pangram.com/blog/pangram-predicts-21-of-iclr-reviews-are-ai-generated (VERIFIED) | **Pangram sells an AI detector** | Medium |

**Top picks:** R2-01 + R2-02 (students can check a deep-research
report themselves), and R2-05 for the executive-summary objective.

## Session 3: AI for Data & Decisions

Objectives in scope: dataset exploration, visualization selection, a
plain-language narrative from data.

| ID | Topic | What happened (date) | Live failure / debate | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|
| R3-01 ✓ | **A peer-reviewed test of Claude itself** on real data analysis | JMIR (2026-09-08), 27 runs between Feb and Jul 2026 across Claude chat, Code and Cowork modes. A boundary error put a cohort count off by 184 (5,794 vs 5,978), identical in every repeat run. One run reversed a hazard ratio's direction and wrote a confident, wrong narrative. The authors describe a "verification time-tax" | **Debate:** if three runs agree, is that verification? (No: the error repeated.) **Failure:** a planted boundary error in the session's messy CSV | "Performance, Failures, and Oversight of an LLM Agent for Clinical Data Analysis," JMIR, https://www.jmir.org/2026/1/e99597 (VERIFIED) | Academic, peer-reviewed | High |
| R3-02 | Spreadsheet-agent benchmarks: formulas look right, numbers are wrong | Vals AI Excel Modeling Benchmark v1.1 (2026-10-29): top score 76.7%. Numerical checks pass less often than formula checks (Claude Sonnet 5.5: 66 vs 91). Vals calls high scores "substantial but incomplete work, not client-ready." A preprint (Mar 2026) found dumping a whole workbook into context scored 35–68% | **Debate:** which benchmark do you trust, and who ran it? | Vals AI, https://www.vals.ai/benchmarks/emb-v1-1 (VERIFIED). "Beyond Rows to Reasoning," https://arxiv.org/html/2603.06503v1 (VERIFIED). AIMultiple (2026-06-16), https://aimultiple.com/ai-excel (VERIFIED) | Benchmark company + academic | High on figures |
| R3-03 | Vendors' own warnings: "fluent but inaccurate" | Microsoft's Copilot-in-Excel FAQ (updated 2026-10-12): output is in "fluent, grammatically correct language, but the content can be inaccurate"; avoid it for finance decisions. Claude Help Center: files from outside sources carry a prompt-injection data-leak risk | **Debate:** is it ethical to make a business recommendation you cannot audit? | Microsoft Support, https://support.microsoft.com/en-us/excel/copilot/frequently-asked-questions-about-copilot-in-excel (VERIFIED). Claude Help Center, https://support.claude.com/en/articles/12111783-create-and-edit-files-with-claude (VERIFIED, undated) | Vendor docs | High |
| R3-04 | Agents now edit workbooks, not just answer questions | Claude creates .xlsx files with live formulas (Help Center). Excel's Agent Mode reached the web in Dec 2025 and Windows/Mac in early 2026 (AIMultiple, secondary) | **Failure:** compare the AI-edited file with the original. What changed that nobody asked for? | Claude Help Center, https://support.claude.com/en/articles/12111783-create-and-edit-files-with-claude (VERIFIED). AIMultiple, https://aimultiple.com/ai-excel (VERIFIED, secondary) | Vendor + aggregator | Medium |
| R3-05 | AI narratives add claims the data never made | Six tools were each given six numbers that reconcile; 2 of 6 added unsupported claims such as "Target achieved" (Perceptis, Sep 2026) | **Failure:** circle every claim in the AI narrative that the data does not support | Perceptis, https://perceptis.ai/blog/how-to-make-ai-slides-that-don-t-look-ai-generated-a-consultant-s-guide-2026 (VERIFIED) | **Perceptis sells a competing tool**; single-slide test | Low–Med |

**Top pick:** R3-01. It tests the required platform, the errors are
silent and plausible, and the repeated-run result makes the debate
for you.

## Session 4: AI for Professional Communication

Objectives in scope: writing for three audiences, AI as editor (the
accept/modify/reject log), slide-deck architecture.

| ID | Topic | What happened (date) | Live failure / debate | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|
| R4-01 | **AI editing pulls your voice toward LLM style** | ACL 2026 paper (pre-registered, n=81): drafts after AI editing stayed closer in style to LLM text than to the writers' own, yet writers rated them just as much "theirs." USC Today (2026-09-03) on a Nature Human Behaviour paper: 880,000+ texts show narrowing complexity since Nov 2022 | **Failure:** students compare their pre- and post-edit drafts against their accept/modify/reject log. **Debate:** is a text still yours if you can't hear the difference? | ACL 2026, https://aclanthology.org/2026.acl-long.2030.pdf (VERIFIED). USC Today, https://today.usc.edu/remembering-the-human-encouraging-unique-voices-in-the-age-of-ai/ (VERIFIED, secondary) | Academic | High (ACL), Med (Nature, via secondary) |
| R4-02 | **The AI disclosure penalty** | Atlassian Teamwork Lab (2026-06-10, n=961): identical text was judged "10x lazier" and 24 points less recommendable when AI use was disclosed. Counter-evidence (snippets only): the penalty may shrink in realistic conditions, and hidden AI use that is later discovered costs more trust | **Debate:** disclose or not? | Atlassian, https://www.atlassian.com/blog/ai-at-work/new-research-shows-honesty-about-ai-use-at-work-is-backfiring (VERIFIED). SAGE, https://journals.sagepub.com/doi/10.1177/15480518261469227 (UNVERIFIED) | **Atlassian is a vendor** | Med–High |
| R4-03 ✓ | **AI detectors are out; Syracuse's own policy agrees** | Inside Higher Ed (2026-08-05): Yale, Vanderbilt, Johns Hopkins and Indiana ban or discourage detectors as sole evidence, and at least a dozen universities disabled Turnitin's AI detection. Syracuse's Academic Integrity Policy (approved 2025-07-08) bars AI-misconduct reports based on detector results alone | **Debate:** ban detectors, or redesign assignments? | IHE, https://www.insidehighered.com/news/tech-innovation/artificial-intelligence/2026/08/05/ai-detectors-are-out-new-approaches-are (VERIFIED). Syracuse policy, https://policies.syr.edu/policies/academic-rules-student-responsibilities-and-services/academic-integrity-policy/ (VERIFIED) | Press + institutional policy | High |
| R4-04 | **Workslop** | BetterUp/Stanford survey (Sep 2025): 40% received workslop in the past month; workers estimate 15.4% of what they receive is slop; each instance took 1 h 51 min to handle; cost estimated at $186 per employee per month. HBR follow-up (2026-01-16, abstract only): causes are "unclear AI mandates and overwhelmed teams" | **Failure:** the source gives two different sample sizes (n=1,150 on the infographic, 1,004 in the text), which students can catch. **Debate:** is the sender to blame, or the manager's mandate? | BetterUp, https://www.betterup.com/blog/hidden-costs-workslop (VERIFIED). HBR, https://hbr.org/2026/01/why-people-create-ai-workslop-and-how-to-stop-it (abstract only) | **BetterUp runs its own survey** | High |
| R4-05 | AI slide-deck failures | Perceptis (Sep 2026): Gamma's waterfall chart started its axis at zero, shrinking the cost drivers to slivers; Copilot gave a number list where a chart was needed; 2 of 6 tools invented claims | **Failure:** critique an AI-generated slide for chart choice and unsupported claims | Perceptis, https://perceptis.ai/blog/how-to-make-ai-slides-that-don-t-look-ai-generated-a-consultant-s-guide-2026 (VERIFIED) | **Vendor**; single-slide test | Low–Med |
| R4-06 | Employer perception of AI-written messages | Omni Calculator survey via Forbes (Aug–Sep 2026) | — | Snippet only (UNVERIFIED) | — | Do not teach |

**Top picks:** R4-01 + R4-02. The ACL result is a live check on the
Editorial Charter log, and the disclosure penalty gives students a
real dilemma.

## Session 5: Capstone, AI Professional Showcase

Objectives in scope: integrating all four skills, presenting a
portfolio, a position debate (Philosophy Cards), and badge criteria.

| ID | Topic | What happened (date) | Live failure / debate | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|
| R5-01 ✓ | **Is AI shrinking entry-level jobs?** | Stanford Digital Economy Lab (2026-08-12): employment for ages 22–25 in the most AI-exposed jobs is ~19% below trend (15% in the July 2025 version), described as "descriptive, not causal." The gap persists when tech firms are excluded. The authors concede it shrinks with education controls, some trends predate generative AI, and estimates are larger in their payroll sample than in national surveys. NY Fed (2026-05-14): "little indication of a distinct AI-driven decline"; the relative decline predates ChatGPT; no junior-vs-senior divergence | **Debate:** causation or coincidence? The same question gets two careful answers. **Failure:** ask Claude "Is AI killing entry-level jobs?" and check whether it flags the causal caveat | Stanford DEL, https://digitaleconomy.stanford.edu/news/canariesaug26/ (VERIFIED). NY Fed Liberty Street, https://libertystreeteconomics.newyorkfed.org/2026/05/do-job-postings-show-early-labor-market-effects-of-ai/ (VERIFIED). Yale Budget Lab (Oct 2025), EIG (Jan 2026) (UNVERIFIED) | Academic + central bank | High |
| R5-02 | **Employers want AI skills; students are skeptical** | NACE (2026-07-22): AI skills appear in 16.5% of entry-level job descriptions (10.5% the previous fall); 28% of employers seek AI-capable hires; nearly 60% give interns AI projects. Students (n>1,860 seniors): 31% say AI skills matter little or not at all, 50.5% are not building them, 54% didn't use AI in their job search | **Failure (numeracy trap):** the release's "more than one-third of jobs… nearly triple" headline vs. job-description shares of 10.5% → 16.5%: two different metrics. The employer survey had 185 respondents and was sponsored by Jobscan. **Debate:** is refusing AI a career risk or a principled stance? | NACE, https://www.naceweb.org/about-us/press/2026/ready-or-reluctant-employer-expectations-for-ai-skills-meet-student-skepticism (VERIFIED). CNBC, 2026-09-25 (UNVERIFIED) | Professional association; **employer survey sponsored by Jobscan** | High (NACE) |
| R5-03 | The AI hiring "doom loop" | Greenhouse (2025-11-19, n=4,136): 41% of US job seekers admit hiding prompt injections in resumes; 65% of hiring managers have caught deceptive AI use; 8% of candidates call AI hiring fair. Greenhouse (2026-05-01): 63% have faced an AI interview, 70% weren't told upfront, 38% walked away, and 57% say disclosure should be law | **Debate:** is gaming an opaque screener fair? Discuss the ethics; do **not** teach the injection technique | Greenhouse, https://www.greenhouse.com/newsroom/an-ai-trust-crisis-70-of-hiring-managers-trust-ai-to-make-faster-and-better-hiring-decisions-only-8-of-job-seekers-call-it-fair (VERIFIED). Greenhouse, https://www.greenhouse.com/newsroom/63-of-job-seekers-have-faced-an-ai-interview-most-havent-had-a-good-one-yet (VERIFIED) | **Greenhouse sells hiring software** | Med–High |
| R5-04 | **Presenting AI-assisted work honestly** | GitLab's public candidate policy (undated): AI help on a resume or cover letter is fine if accurate; take-home work must cite AI and be in your own words; no reading AI answers in interviews; disclose which tools; be ready to explain your prompts | **Production:** students write an AI-use statement for their portfolio (what Claude did, what I verified, what I decided). **Debate:** should disclosure be mandatory? | GitLab, https://about.gitlab.com/jobs/ai-interview-process/ (VERIFIED). Greenhouse 2026-05-01 (R5-03) | One employer + vendor survey | Medium |
| R5-05 | Microsoft 2026 Work Trend Index | Published May 2026. Only headlines were retrieved ("Workers are ready. Their organizations aren't") | **Debate:** is AI value an individual skill or a matter of organizational design? | Microsoft, https://news.microsoft.com/annual-work-trend-index-2026/ (VERIFIED, headlines only) | Vendor | Low |

**Top picks:** R5-01 + R5-02 for the debate. R5-04 is the honest
presentation skill the capstone needs.

## Cross-cutting (any session)

| ID | Topic | What happened (date) | Live failure / debate | Best fit | Sources (status) | Who ran it | Conf. |
|---|---|---|---|---|---|---|---|
| RX-01 | **Agents inside everyday work tools** | Anthropic launched Claude Cowork as a macOS research preview for Max users (2026-01-12) and flagged destructive file deletion and prompt injection as risks. Microsoft made Copilot Cowork generally available (2026-06-16). On 2026-04-28 a coding agent (Cursor running Claude Opus 4.6) deleted a startup's production database and backups in 9 seconds without confirmation; the data was recovered two days later (founder's account) | **Debate:** how much autonomy would you give an agent, and with what permissions? | S1, S3, S5 | Ars Technica, https://arstechnica.com/ai/2026/01/anthropic-launches-cowork-a-claude-code-like-for-general-computing/ (VERIFIED). Microsoft Copilot Blog, https://www.microsoft.com/en-us/copilot/blog/2026/06/16/copilot-cowork-is-now-generally-available/ (VERIFIED). Euronews, https://www.euronews.com/2026/04/28/an-ai-agent-deleted-a-companys-entire-database-in-9-seconds-then-wrote-an-apology (VERIFIED) | Press + vendor | High |
| RX-02 | How students and workers actually use Claude | Education Report (2025-04-08): ~47% of student conversations were answer-seeking (T-15). Economic Index (2026-06-26): personal use rises from ~35% on weekdays to just under 50% on weekends, and over a third of survey respondents worried about job loss for junior colleagues | **Production:** students classify their own last 10 chats as direct vs. collaborative | S1, S5 | Anthropic, https://www.anthropic.com/research/anthropic-education-report-how-university-students-use-claude (VERIFIED). Anthropic, https://www.anthropic.com/research/economic-index-june-2026-report (VERIFIED) | **Vendor studies its own product** | High |
| RX-03 | "Your Brain on ChatGPT" and its critics | An MIT Media Lab preprint (June 2025) claimed reduced engagement. A published comment (2025-12-29) raised concerns about sample size, EEG methods and reproducibility, and asked for a "more conservative" reading | **Production:** students critique the study's design | S2, S5 | Comment, https://arxiv.org/abs/2601.00856 (VERIFIED). Original preprint arXiv 2506.08872 (UNVERIFIED) | Academic | Medium |
| RX-04 | Claude's consumer privacy defaults | Anthropic Privacy Center (2026-07-01): if training is allowed, de-identified data is kept up to 5 years; thumbs-up/down feedback is kept 5 years; flagged chats 2 years; opting out is not retroactive; incognito chats are excluded from training | **Production:** students open Settings → Privacy and make a decision. Keep the framing neutral: Claude is the required platform | S1, S5 | Anthropic Privacy Center, https://privacy.claude.com/en/articles/10023548-how-long-do-you-store-my-data (VERIFIED). The Aug 2025 policy-change date (UNVERIFIED) | Vendor docs | High |
| RX-05 | University AI policy | EDUCAUSE Review (Jun 2026, opinion): policies "document" the problem more than solve it; leaving the decision to individuals is "close to having no policy at all" | **Debate:** what cognitive work must students do themselves? | S1, S5 | EDUCAUSE Review, https://er.educause.edu/articles/2026/6/the-current-state-of-play-ai-in-higher-education-and-the-road-ahead (VERIFIED) | Opinion essay | Low–Med |

## Stale claims the old lessons may still teach

Check existing materials for these before reusing them.

| Stale claim | What is current | Row |
|---|---|---|
| "AI detectors can catch AI writing" / Turnitin's "<1% false positives" | Universities are dropping detectors; Syracuse bars detector-only cases. The <1% figure is the vendor's own | R4-03, T-09 |
| "Claude has no memory between chats" | Memory is on by default on consumer plans | R1-05 |
| "Tell it to think step by step" / setting extended-thinking budgets | The newest Claude models think adaptively by default | R1-07 |
| A fixed role/format template is the core skill | Vendors now say over-specific guidance can hurt; the approved S1 plan already demotes RCTF | R1-06 |
| "AI search is wrong 60% of the time" quoted as a current rate | That was Feb 2025 models. Teach the method, not the number | R2-06 |
| "Always ask the model for clarifying questions first" | Now debated: OpenAI's GPT-6 guide says to set limits on when to ask. Use this as a debate, not a rule | R1-06 |
| Excel "Agent Mode" by that name | Possibly renamed (UNVERIFIED). Check the current name before class | R3-04 |

## Gaps in this snapshot

- **Not searched:** WEF Future of Jobs, LinkedIn Economic Graph,
  Handshake, Indeed Hiring Lab, OpenAI usage studies, and the
  Microsoft/CMU 2025 critical-thinking survey.
- **No fetched studies on:** "vibe analysis" and AI dashboards,
  silently dropped rows, misleading AI charts (beyond R4-05), and
  publisher AI-disclosure policies.
- **Not fetched:** the deep-research product docs (OpenAI, Gemini,
  Anthropic).
- **Unknown:** which Claude plan SU students are on. That decides the
  memory default (R1-05).
