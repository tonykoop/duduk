# Duduk Assembly Manual — Armenian Duduk, A3 Root

**v4.3 Draft** | 2026-05-08 | All dimensions EMPIRICAL until measured and recorded in `validation.csv`

> **Safety.** No power tools beyond a drill press and lathe are required. Standard woodworking safety applies: eye protection, dust collection when turning/drilling wood.

---

## Before You Start

- Read `design.md` — understand the stopped-pipe model and why body length is empirical.
- Have 4–6 reeds on hand. You will likely break the first 1–2 during fitting and bridle adjustment.
- Soak the reed in warm water for 10–15 minutes before each work session.
- Set room temperature to 68 °F and humidity 40–55% RH if possible. Reed and wood behave differently in cold/dry conditions.

---

## Step 1 — Prepare Stock

1. Select a straight-grained blank: apricot (preferred) or walnut, 1.00″ dia × 16.0″ L minimum.
2. Inspect for cracks, knots, or runout. The bore must run parallel to the grain — center-pith blanks are risky (may crack). Prefer blanks where the pith is off-center or absent.
3. Mark the reed end (top) and bell end (bottom) with a permanent marker. The bell end is the narrower acoustic opening.

## Step 2 — Mount and True the Blank

1. Mount blank between centers on the lathe.
2. Turn a 0.75″ tenon on each end for chuck grip.
3. Re-chuck in 4-jaw chuck. True the OD: turn to 0.750″ (slightly over finished size).
4. Check runout at both ends: < 0.010″ TIR before boring.

## Step 3 — Drill the Bore

1. Mount a **0.472″ Forstner bit or D-bit** in the tailstock chuck.
2. Drill bore from the reed end (top) — the reed end will be trimmed last for tuning.
3. Use steady, low-RPM feed (300–500 RPM). Back out every 0.5″ to clear chips.
4. Drill full length of the blank. Check bore straightness with a light source at the bell end.
5. Sand bore lightly with 220 grit wrapped around a close-fitting dowel to remove tearout.

**⚠ Verify bore ID with calipers or bore gauge at 3 points before proceeding.**

## Step 4 — Turn the Outer Diameter

1. Re-chuck at bell end.
2. Turn OD to **0.748″** (bore + 2 × 0.138″ wall). Hold ±0.005″.
3. Traditional duduk profiles taper very slightly; for first build, keep parallel — taper can be added as refinement.
4. Sand exterior through 120/180/220/320 to finish.

## Step 5 — Cut to Rough Length

1. Part at approximately **14.0″** from the bell end (1.0″ longer than estimated body).
2. This extra length allows trimming during reed-fit tuning.
3. Face both ends square. Chamfer the bell end 30° × 0.010″ to prevent splitting.

## Step 6 — Reed Socket

1. The socket is the upper opening of the bore — no special machining for the first build.
2. After reed fit (Step 9), wrap the reed shank with PTFE tape until it seats firmly with an airtight seal.
3. **Stepped socket option (upgrade):** Turn a recess 0.020″ deeper × 0.500″ long at the reed end to give the reed shank a repeatable seat. Mark with Dykem before cutting.

## Step 7 — Bore Finish

1. Wipe bore dry and clean. Apply **boiled linseed oil** (first coat) via a cotton swab on a rod.
2. Flood bore — drain and wipe excess immediately.
3. Let cure **48 hours** at room temperature.
4. Apply second coat; cure again. Total: **3 coats minimum**.
5. Between coats: ream bore lightly with 320-grit to remove any raised grain.

## Step 8 — Exterior Finish

1. Apply **pure tung oil** to exterior with a lint-free cloth, thin coat.
2. Wipe off excess after 15 minutes (do not let pool or drip).
3. Cure 24 hours. Repeat for 2–3 coats.
4. Final: light buff with 0000 steel wool for a smooth matte finish.

## Step 9 — Reed Fitting and Initial Tuning

> **This is the critical empirical step.** The body length will be set by tuning the reed-fitted instrument to A3.

1. Soak reed in warm water for 15 minutes.
2. Wrap reed shank with PTFE tape (3–5 layers) until it seats in the bore top with light friction.
3. Insert reed into bore top until shank bottoms out or stops at ~0.5″ insertion depth.
4. Check airtightness: no hissing around the junction while blowing.
5. Play the fundamental (all holes closed). Adjust bridle tightness until stable oscillation.
6. Measure pitch with a chromatic tuner. Record in `validation.csv`.
7. **If sharp:** trim a small amount (0.050–0.100″) from the **bell end** and re-measure.
8. **If flat:** increase PTFE wrap to push reed slightly further out, or add insert-depth shim. If significantly flat, re-examine whether the bore was drilled full length.
9. Repeat until fundamental = A3 (220 Hz) ± 20 cents. Final tuning fine-adjusted by bridle and reed depth.

## Step 10 — Mark and Drill Tone Holes

> Hole positions are EMPIRICAL ESTIMATES. See `design.md` Section 3.5. Expect adjustment.

1. Lay the instrument on a V-block jig (see `jig-decision.md`).
2. Mark hole centerlines from the bell end using the hole-schedule in `design.md` (empirical estimates).
3. Use layout dye and a scribe or center punch.
4. Drill pilot holes: **0.1875″** brad-point through the wall.
5. Open to nominal **0.250″** with a brad-point or step drill.
6. Deburr inside the bore with a small carving tool or bore scraper.
7. Test each hole with the instrument before drilling the next: open holes sequentially from Hole 1 upward.
8. If a note is flat: move hole slightly toward bell end (enlarge bore-side position) or undercut.
9. If a note is sharp: plug with wax temporarily, measure, then re-drill slightly toward reed end.
10. Record all final hole positions in `validation.csv`.

## Step 11 — Final Check

- Complete all rows in `validation.csv`.
- Photograph all angles per `photo-shotlist.md`.
- Record reed, body length, and final hole positions for future reference.

---

*Duduk assembly is as much calibration as construction. Expect 2–4 hours of reed fitting and hole adjustment after the body is turned.*
