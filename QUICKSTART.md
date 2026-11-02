# Quickstart

One page. The full pipeline is in `README.md`.

## For peer leaders: running a session

For each session you get four files, already named for the team
folder (`Session N Materials`):

| File | What it's for |
|---|---|
| `Session N - [Topic] - Deck.pptx` | The slides. **Editable** in PowerPoint, with speaker notes on every slide. Apply any theme you like (Design → Themes) |
| `Session N - [Topic] - Deck.pdf` | Read-only copy for printing or sharing |
| `Session N - [Topic] - Peer Leader Guide.docx` | The run sheet minute by minute, with who does what (co-leader A and B). Also covers why each activity works, the AI failure students will catch (plus the backup if it doesn't fail live), the debate question, likely student questions with sourced answers, and the live check |
| `Session N - [Topic] - Artifact.docx` | The student handout: what they make, the process log, the "what I verified" table, and the criteria |

**Prep** (`CHECKLIST.md`):
- **T-7 days:** both co-leaders read the guide, agree on roles, and send
  printing.
- **T-1 day:** re-run every failure prompt on the students' Claude plan
  (failure demos stop failing as models update), screenshot the
  failure for backup, and do a timed rehearsal.
- **T-1 hour:** demo machine ready, presenter view on, timer set.

**In the room:**
- Students predict before every reveal.
- Students find the AI failure; you don't tell them.
- The debate is vote → 2–4 minutes of discussion → re-vote.
- Every student answers one "how do you know?" about their artifact.
- The class never ends on a summary slide.

**Within 48 hours:** fill in the retro form (`lessons/retro-template.md`):
- planned vs. actual timing
- whether the failure failed live
- debate vote splits
- exit-ticket count
- top 3 changes

Counts and paraphrases only, no names.

## For the builder: the semester timeline

| When | Do | With |
|---|---|---|
| Plans arrive | Save them to the private repo's `plans/` (never committed). Fill in one intake file per session | `lessons/approved-plan-intake-template.md` |
| Semester start | Track radar against all the approved plans: current AI developments, each with a live failure, a debate, and who funded it | `prompts/topic-radar.md` |
| Build (weeks ahead) | For each session: research → design + build → critic until READY. **Session 1 first**, as the reference example; review it with your co-leader before batching the rest | `prompts/research-agent.md` → `prompts/lesson-designer.md` → `scripts/build.sh` → `prompts/slide-critic.md` |
| **T-30 days** per session | Research refresh: re-verify every claim, swap anything stale, rebuild, run the critic again | `prompts/research-agent.md` (refresh mode) |
| T-7d → T-1h | Prep timeline; copy the outputs into `Session N Materials` | `CHECKLIST.md` |
| After teaching | Retro, then update the claim matrix | `lessons/retro-template.md` |

**Where things live:** the method is in this public repo. Session
content is in the private `ai-bootcamp-sessions` repo, next to this
one. Build from either with `scripts/build.sh`.

**The bar** (`CLAUDE.md`):
- Every lesson clears the 5 quality-bar questions and the 5-part
  **rigor bar**: a primary source, evidence judged, a claim defended,
  real disagreement shown, no button-teaching.
- Every claim traces to a dated row in a claim matrix.
