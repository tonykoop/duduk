# Risk Register — Duduk Family

**v4.3 Red-Team Pass** | 2026-05-08
One risk entry per category minimum; each includes a verification test.

---

## 1. Acoustic Risks

### RISK-AC-01 — Reed effective length dominates tuning uncertainty

**Description:** The stopped-pipe formula assumes the reed acts as a pure acoustic closure. In practice, the reed cavity adds an effective length of approximately 0.5× physical reed length, but this varies significantly by reed stiffness, bridle tightness, and lip pressure. The resulting body-length estimate (13.25″ for A3) could be off by ±0.5–1.0″.

**Severity:** High — if body is cut too short, cannot be recovered; too long can be trimmed.
**Mitigation:** Build body at +0.75″ over estimate. Trim incrementally while checking tuning.
**Test:** After reed fitting, measure fundamental vs target (A3 = 220 Hz). Record deviation in `validation.csv`. Trim body ≤ 0.1″ per pass.

---

### RISK-AC-02 — Reed sub-resonance condition unverified

**Description:** The design assumes the reed's natural frequency (>1000 Hz estimated) is well above the bore fundamental (220 Hz). If a particular reed has unusually low natural frequency, stable oscillation on the fundamental may not occur.

**Severity:** Medium — manifests as squeaking, honking, or no stable tone.
**Mitigation:** Test each reed before drilling holes. Discard reeds that won't produce a stable fundamental with bridle adjustment.
**Test:** Fit reed on completed body (no holes drilled). Adjust bridle through full range. Observe: stable tone on fundamental = pass; unstable/squeaky = fail reed.

---

### RISK-AC-03 — Simplified hole-position model is insufficient

**Description:** Hole positions calculated from the simplified acoustic cutoff formula do not account for tone-hole lattice interaction, hole diameter, undercutting, or the influence of adjacent open holes. Errors of 0.2–0.5″ per hole position are plausible, increasing with higher holes.

**Severity:** Medium — each hole must be drilled, tested, and adjusted; cannot un-drill.
**Mitigation:** Drill in order from lowest (Hole 1, nearest bell) to highest. Test each note before proceeding. Mark positions with wax plug, adjust empirically.
**Test:** After drilling each hole: play note with that hole open, record pitch in `validation.csv`. Acceptable range: ±30 cents for initial pass (adjust by redrilling or undercutting to ±15 cents target).

---

### RISK-AC-04 — Bore non-cylindricity affects harmonic balance

**Description:** Long-bore drilling in wood often produces slight taper or bowing. A non-cylindrical bore alters the odd-harmonic relationship and may introduce even harmonics, changing the tone color away from the characteristic mellow duduk quality.

**Severity:** Low acoustic impact (slight taper); medium if extreme.
**Mitigation:** Use long-series drill bits, back out frequently, check bore straightness with light.
**Test:** After boring, shine flashlight through bore. Visible curvature = fail. Measure bore ID at 3 points; variation > 0.010″ = investigate.

---

## 2. Structural Risks

### RISK-ST-01 — Wall thickness sufficient for 0.472″ bore?

**Description:** Wall thickness = 0.138″ (3.5 mm) at bore 0.472″ OD 0.748″. This is a thin wall, typical of traditional instruments but challenging for initial drilling. Splitting risk is elevated near tone holes and at the reed socket end.

**Severity:** Medium — catastrophic if body cracks during drilling.
**Mitigation:** Use a V-block jig for tone-hole drilling. Do not apply side-force drilling — drill press only, perpendicular to bore axis. Anneal the reed socket end with gentle heat if cracking risk is high.
**Test:** Inspect all exterior surfaces with 10× loupe after each drilling operation. Any crack propagating from a hole edge = stop and assess. Thin-walled checks: measure OD and bore after turning to confirm ≥ 0.130″ wall at any point.

---

### RISK-ST-02 — Wood moisture content and cracking

**Description:** Wood that is not fully dried (≥8% EMC target) may crack as it acclimates to shop conditions. The thin wall and long bore create stress concentration.

**Severity:** Medium — cracks after finishing are cosmetically and acoustically damaging.
**Mitigation:** Confirm blank is kiln-dried (< 8% EMC). Acclimate blank in shop for ≥ 1 week before machining. Apply bore oil before exterior finish to equalize moisture uptake.
**Test:** Measure blank moisture with a pin-type meter before turning. Check for cracks after 2-week post-finish seasoning.

---

## 3. Ergonomic Risks

### RISK-ER-01 — Tone-hole spacing vs. hand reach

**Description:** The A3 root body is estimated at 13.25″ with holes spanning ~9″ of that length. Hole 1 (RH pinky) sits ~1.67″ from bell; Thumb 9 sits ~8.89″ from bell. The 7.2″ span between Hole 1 and Thumb 9 must be reachable by the intended player.

**Severity:** Low (traditional ergonomics are refined over centuries; layout should be playable for most adult hands).
**Mitigation:** Fit holes to a player with average hand size before committing to positions. Measure actual finger-to-finger spans.
**Test:** Mark estimated hole positions on a cardboard template. Have a player test reach before drilling.

---

### RISK-ER-02 — Reed mouth contact discomfort

**Description:** The large double reed (0.63″ wide) requires the player's lips to seal around it. Players new to double-reed instruments often develop lip fatigue or soreness. This is a playing technique issue, not a build defect.

**Severity:** Low (playing ergonomic, not instrument failure).
**Mitigation:** Note in README that duduk requires embouchure development. Recommend beginner players start with shorter practice sessions.
**Test:** N/A — document in README.

---

## 4. Supply Chain Risks

### RISK-SC-01 — Apricot wood availability

**Description:** Apricot wood turning blanks are not standard US inventory. Lead time may be 2–6 weeks; some suppliers may not carry it at all.

**Severity:** Medium (schedule impact; walnut substitute is acoustically viable).
**Mitigation:** Order apricot first; order walnut in parallel as backup. See `sourcing.csv`.
**Test:** Check supplier stock before committing build timeline. If apricot ≥ 4-week lead, proceed with walnut and note substitution in all docs.

---

### RISK-SC-02 — Reed quality and consistency

**Description:** Commercially available duduk reeds vary widely in quality, voicing, and consistency. A poorly voiced reed may prevent stable oscillation regardless of body quality.

**Severity:** High (no instrument without working reed).
**Mitigation:** Order 6+ reeds. Plan for 1–2 to break during fitting. Allow time to find a reed that works with the specific body built.
**Test:** Test each reed on a reference commercial duduk if available, before using on the new body. Reject reeds that are cracked, unevenly scraped, or won't oscillate.

---

## 5. Cultural and Authenticity Risks

### RISK-CU-01 — Overclaiming authenticity or performance equivalence

**Description:** This document provides engineering geometry of the duduk form. It does not capture: traditional Armenian reed-making technique, oral tuning traditions, performance practice (vibrato, krunk, ornaments), or the social/cultural context of the instrument. Public-facing documentation that implies these are captured risks misrepresenting Armenian cultural heritage.

**Severity:** High (reputational and cultural harm risk if overclaimed).
**Mitigation:** All documents include provenance notices (see `resources.md`). README explicitly states this is a workshop fabrication study, not a cultural reproduction. Do not publish without cultural context review.
**Test:** Read all public-facing documents (README, `resources.md`, `site/index.html`). Any sentence that implies "this is a traditional Armenian duduk" or "this instrument sounds like..." without empirical qualification = revise before publishing.
**Recommendation:** Keep repo PRIVATE until (a) physical build complete, (b) tuning validated, (c) provenance notes reviewed by someone with Armenian music knowledge.

---

### RISK-CU-02 — Incorrect or incomplete cultural attribution

**Description:** The design table covers Armenian duduk, Turkish mey, Azerbaijani balaban, and Georgian duduki. These instruments exist within living cultural traditions that have distinct identities. Conflating them or misattributing origin risks inaccuracy.

**Severity:** Medium.
**Mitigation:** `resources.md` documents each variant separately with distinct attribution. Do not treat the variants as interchangeable in public-facing text.
**Test:** Review `resources.md` — each variant should have its own attribution paragraph. Any paragraph that conflates Armenian and Azerbaijani or Turkish instruments without noting the distinction = revise.

---

## Risk Summary

| ID | Category | Severity | Pre-build action required? |
|---|---|---|---|
| RISK-AC-01 | Acoustic | High | Yes — build at +0.75″, plan trim |
| RISK-AC-02 | Acoustic | Medium | Yes — test reed before drilling holes |
| RISK-AC-03 | Acoustic | Medium | Yes — drill holes incrementally |
| RISK-AC-04 | Acoustic | Low | Yes — check bore cylindricity |
| RISK-ST-01 | Structural | Medium | Yes — V-block jig for hole drilling |
| RISK-ST-02 | Structural | Medium | Yes — confirm kiln-dried stock |
| RISK-ER-01 | Ergonomic | Low | Recommended — template test |
| RISK-ER-02 | Ergonomic | Low | No — document in README |
| RISK-SC-01 | Supply | Medium | Yes — order materials 4+ weeks out |
| RISK-SC-02 | Supply | High | Yes — order 6+ reeds |
| RISK-CU-01 | Cultural | High | Yes — keep private until review |
| RISK-CU-02 | Cultural | Medium | Yes — review resources.md |
