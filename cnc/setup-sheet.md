# CNC / Lathe Operation Setup Sheet — Duduk A3 Root

**v4.3** | 2026-05-08
Pre-CAM operation plan for lathe turning and drill-press hole work.
This is NOT G-code. It is the human-readable plan used before any CAM work begins.

---

## Machine and Tooling Summary

| Machine | Operation | Required tooling |
|---|---|---|
| Wood lathe | Body turning, OD, boring | 4-jaw chuck; live center; 0.472″ long-series Forstner or D-bit; OD turning tool; parting tool |
| Drill press | Tone holes (9×) | Brad-point bits: 0.1875″ pilot + 0.250″ final; V-block jig; center punch |
| Hand tools | Reed fitting, finishing | PTFE tape; linseed oil brush; sandpaper 120→320 grit on dowel |

---

## Operation 1 — Stock Preparation

**Machine:** Hand tools / bench
**Datum:** N/A

| Step | Action | Check |
|---|---|---|
| 1.1 | Select blank: apricot or walnut, ≥1.00″ dia × 16.0″ L | Straight grain; no pith at center; kiln-dried |
| 1.2 | Measure moisture content | < 8% EMC — reject if higher |
| 1.3 | Mark reed end (top) and bell end (bottom) | Mark with permanent marker |
| 1.4 | Acclimate in shop ≥ 48 hrs before machining | Stable temperature 65–72°F |

**Release check:** Blank ≥ 16.0″ long, < 8% EMC, straight grain confirmed. ✓ → Proceed to Op 2.

---

## Operation 2 — Lathe: True and Chuck

**Machine:** Wood lathe
**Setup:** Between centers → re-chuck in 4-jaw

| Step | Action | Target | Check |
|---|---|---|---|
| 2.1 | Mount between centers | — | Centered, no wobble |
| 2.2 | Turn 0.75″ tenons at each end | 0.75″ dia × 0.75″ L | Concentric with blank axis |
| 2.3 | Re-chuck in 4-jaw at reed-end tenon | — | TIR < 0.010″ at bell end |
| 2.4 | Rough-turn OD to 0.780″ | 0.780″ ± 0.010″ | — |

**Release check:** TIR at bell end ≤ 0.010″. ✓ → Proceed to Op 3.

---

## Operation 3 — Lathe: Bore

**Machine:** Wood lathe (tailstock-fed)
**Datum:** Reed end (tailstock face)
**Workholding:** 4-jaw chuck at reed end; tailstock-mounted drill chuck

| Step | Action | Target | Notes |
|---|---|---|---|
| 3.1 | Mount 0.472″ long-series Forstner in tailstock chuck | — | Check bit is sharp and centered |
| 3.2 | Set lathe speed | 300–400 RPM | Slow for long boring |
| 3.3 | Bore through full blank length, backing out every 0.5″ | Through-bore | Clear chips every pass |
| 3.4 | Measure bore ID at 3 points | 0.472″ ± 0.005″ | Reject if > 0.010″ variation |
| 3.5 | Sand bore with 220/320 grit on mandrel | Smooth, no tearout | Light passes only |

**Release check:** Bore ID 0.472″ ± 0.005″ at 3 points. Light passes through without obstruction. ✓ → Proceed to Op 4.

---

## Operation 4 — Lathe: Finish OD and Part to Length

**Machine:** Wood lathe
**Datum:** Bell end (part to length from bell end)

| Step | Action | Target | Notes |
|---|---|---|---|
| 4.1 | Finish-turn OD | 0.748″ ± 0.005″ | Measure with calipers at 3 points |
| 4.2 | Sand exterior through 120/180/220/320 | Smooth matte | Work progressively |
| 4.3 | Part body at 14.0″ from bell end | 14.0″ ± 0.050″ | +0.75″ over estimated body for tuning stock |
| 4.4 | Face bell end square and chamfer 30° × 0.010″ | Clean end | Prevent end-grain splitting |
| 4.5 | Face reed end square | — | Leave rough until after reed tuning trim |

**EMPIRICAL NOTE:** Do NOT trim to final length yet. Final body length will be established in reed-fitting step.

**Release check:** OD 0.748″ ± 0.005″; rough length 14.0″; both ends faced. ✓ → Proceed to Op 5.

---

## Operation 5 — Bore and Exterior Finish

**Machine:** Bench / hand tools
**Sequence:** Bore oil BEFORE exterior finish

| Step | Action | Target |
|---|---|---|
| 5.1 | Apply boiled linseed oil to bore, 1st coat | Full flood; drain; wipe |
| 5.2 | Cure 48 hrs at 68°F | No tackiness |
| 5.3 | Apply 2nd bore coat | — |
| 5.4 | Cure 48 hrs | — |
| 5.5 | Apply 3rd bore coat | — |
| 5.6 | Apply pure tung oil exterior (3 thin coats, 24-hr cure each) | Matte, no runs |

**Release check:** Bore not tacky; exterior cured and smooth. ✓ → Proceed to Op 6.

---

## Operation 6 — Reed Fitting and Body Tuning Trim

**Machine:** Bench / hand tools + tuner

| Step | Action | Target |
|---|---|---|
| 6.1 | Soak reed 15 min in warm water | — |
| 6.2 | Wrap reed shank with PTFE tape (3–5 layers) | Firm friction fit in bore |
| 6.3 | Insert reed; adjust bridle | Stable oscillation on fundamental |
| 6.4 | Measure fundamental with tuner | A3 = 220 Hz target |
| 6.5 | If sharp: trim 0.050–0.100″ from bell end; re-measure | Trim until 220 Hz ± 10 cents |
| 6.6 | Record final body length in validation.csv | — |

**EMPIRICAL NOTE:** This step calibrates the body length. All subsequent hole positions reference the final bell-end datum after this trim.

**Release check:** Fundamental A3 ± 20 cents with stable oscillation. Body length recorded. ✓ → Proceed to Op 7.

---

## Operation 7 — Drill Press: Tone Holes

**Machine:** Drill press
**Datum:** Bell end of body (after tuning trim)
**Workholding:** V-block jig (see `jig-decision.md` JIG-02)

**Pre-drill setup:**
1. Register bell end against stop block on V-block jig.
2. Mark all 9 hole centers from bell datum (positions per `design.md` Section 3.5 — EMPIRICAL).
3. Verify spacing with calipers before drilling.
4. Center-punch all 9 positions.

**Drilling order: Hole 1 (nearest bell) → Hole 8 → then Thumb Hole 9**

| Hole | Note target | Est. position from bell | Pilot | Final dia |
|---|---|---|---|---|
| 1 (RH pinky) | B3 = 246.94 Hz | 1.67″ EMPIRICAL | 0.1875″ | 0.250″ |
| 2 (RH ring) | C4 = 261.63 Hz | 2.44″ EMPIRICAL | 0.1875″ | 0.250″ |
| 3 (RH middle) | D4 = 293.66 Hz | 3.85″ EMPIRICAL | 0.1875″ | 0.250″ |
| 4 (RH index) | E4 = 329.63 Hz | 5.10″ EMPIRICAL | 0.1875″ | 0.250″ |
| 5 (LH ring) | F4 = 349.23 Hz | 5.68″ EMPIRICAL | 0.1875″ | 0.250″ |
| 6 (LH middle) | G4 = 392.00 Hz | 6.73″ EMPIRICAL | 0.1875″ | 0.250″ |
| 7 (LH index) | A4 = 440.00 Hz | 7.67″ EMPIRICAL | 0.1875″ | 0.250″ |
| 8 (top front) | B4 = 493.88 Hz | 8.51″ EMPIRICAL | 0.1875″ | 0.250″ |
| 9 (thumb, back) | C5 = 523.25 Hz | 8.89″ EMPIRICAL | 0.1875″ | 0.250″ |

**Drill each hole, then test pitch before proceeding to the next.**

**Release check:** All 9 holes drilled; all pitches within ± 30 cents of targets. Record actual positions and measured pitches in `validation.csv`. ✓ → Packet complete.

---

## Pre-CAM Assumptions (explicit)

These assumptions must be verified before any CAM or G-code work:

1. Body stock is cylindrical and concentric to bore axis within 0.010″ TIR.
2. Bore is through the full length without obstruction.
3. Reed has been fitted and body trimmed to final tuned length before hole positions are marked.
4. Hole positions are empirical first estimates and will be adjusted after tuning — no CAM operation should treat them as final.
5. Tone hole diameters are nominal 0.250″ — actual diameter may be adjusted by undercutting.
