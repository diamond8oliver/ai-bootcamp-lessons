# Pre-teach checklist

Run this after the critic pass (stage 5) and through prep (stage 6).
A lesson that can't check every box in Part A isn't ready to teach.

## Part A: Ready to teach?

### Quality bar (CLAUDE.md)
- [ ] **Cold open:** we know what it is, and what question it leaves
      open.
- [ ] **Failure:** students catch it themselves; nobody just tells
      them.
- [ ] **Argument:** we know what students will disagree about.
- [ ] **Production:** we know what students make, and how it's
      checked live.
- [ ] **Freshness:** we know the most up-to-date claim and the date it
      was verified.

### Critic verdict (`prompts/slide-critic.md`)
- [ ] The critic named **what is surprising**.
- [ ] The critic named **what is debatable**.
- [ ] The critic named **what students will argue about**.
- [ ] Verdict READY, or every remaining issue is listed as an open
      question in the lesson.

### Evidence
- [ ] Every factual statement on slides and in the artifact has a
      matrix claim ID.
- [ ] No claim is UNVERIFIED, PARTIAL, or "not teachable".
- [ ] Every tool-behavior claim was verified within **30 days** of
      the teach date.
- [ ] Every stale claim in the intake's "Stale claims to remove" list
      has been checked and removed.
- [ ] Vendor-run sources are labeled as vendor-run on the slide or in
      the speaker notes.

### Deck and timing
- [ ] About 12–15 slides; facilitator talk under 15 minutes (H-01).
- [ ] No bullet walls; every headline is a full sentence.
- [ ] Every reveal has a prediction before it.
- [ ] No summary slide at the end.
- [ ] The run sheet adds up to exactly 50 minutes, and every segment
      has co-leader A/B roles.

### Privacy and publishing
- [ ] No student names, grades, pairings, or private class data in any
      file, screenshot, or demo history.
- [ ] Session files are still gitignored. Nothing SU-specific gets
      pushed without the program lead's OK (`Guardrails.md`).

## Part B: Prep timeline

### T-7 days
- [ ] Intake is complete; platform facts are checked and dated.
- [ ] Lesson, deck, and artifact are built, and the critic has passed.
- [ ] `scripts/build.sh` has produced the .pptx, .pdf, and .docx, and
      each one was opened to check it.
- [ ] Co-leader A/B roles are agreed; both have read the lesson.
- [ ] Printing needs are sent: handouts, cards, leader-only answer
      key.

### T-1 day
- [ ] **Re-run every failure prompt on the students' plan.** Failure
      demos decay (T-23). Record the date, the result, and whether it
      still fails.
- [ ] **Capture a backup screenshot** of each failure and reference it
      in the speaker notes (H-02).
- [ ] If a failure no longer reproduces, switch to the prepared
      polished-output trap. Don't wing it.
- [ ] Re-check any tool claim that is close to the 30-day limit.
- [ ] Full timed rehearsal with both co-leaders. Note any segment that
      runs over.
- [ ] Copy the exports into the team folder (team naming:
      `Session N - [Topic] - [Kind]`).

### T-1 hour
- [ ] The demo machine is logged in, with chat history clear of
      unrelated or private chats, and the memory setting confirmed.
- [ ] The deck is open in presenter view, and the speaker notes are
      visible to whoever is presenting.
- [ ] Backup screenshots are reachable offline.
- [ ] Timer ready (co-leader B). Printouts counted.
- [ ] Wi-Fi checked; hotspot fallback available.

## Part C: After teaching (stage 7)

- [ ] Fill in `lessons/retro-template.md` within 48 hours.
- [ ] Update the claim matrix rows the retro flagged.
- [ ] Add unanswered student questions to the next radar run.
