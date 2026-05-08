# Jig and Fixture Decision Log — Duduk Family

**v4.3** | 2026-05-08
Documents fixture choices for turning, boring, and hole-drilling operations on the duduk body.

---

## JIG-01 — Bore Drilling: Tailstock / Drill-Press Decision

**Question:** Should the bore be drilled on the lathe (tailstock-mounted drill) or on the drill press?

**Decision: Lathe (tailstock), using a long-series Forstner or D-bit.**

**Rationale:**
- The body blank is a cylinder ≤ 1.00″ dia × 16″ L. Holding it in a drill-press vise while drilling a 0.472″ bore 14″ deep is difficult to keep on-axis.
- On the lathe, the blank is already centered and rotating; the bit advances straight into the rotating stock. This is the conventional approach for cylindrical instrument bores.
- Drill-press boring requires a long-series bit, a reliable V-block or chuck, and very careful alignment — viable but harder than lathe boring for this geometry.

**Tooling selected:**
- **0.472″ long-series Forstner bit** (preferred for clean entry and flat bottom)
- Backup: **0.472″ D-bit or brad-point** for deeper runs where Forstner chatter may occur

**Setup notes:**
- Lathe speed: 300–500 RPM (slow for long boring)
- Back out every 0.5″ to clear chips
- Use cutting fluid (beeswax or dry lube on bit shank) to reduce heat buildup
- Check bore straightness with a light source at the open end after boring

**Verification:** After boring, measure bore ID with calipers at 3 points (near reed end, mid, near bell). Variation > 0.010″ = investigate re-centering.

---

## JIG-02 — Tone-Hole Drilling: V-Block Alignment Jig

**Question:** How to hold the finished cylinder for accurate perpendicular tone-hole drilling?

**Decision: V-block jig on drill press, with a registration stop for datum from bell end.**

**Rationale:**
- Tone holes must be perpendicular to the bore axis and at accurate positions along the body length.
- The finished body is a smooth cylinder — prone to rolling on a flat drill-press table.
- A V-block constrains the cylinder and keeps the drill axis perpendicular to the bore centerline.
- A registration stop (a wooden block clamped to the V-block) referenced from the bell end sets the datum for measuring hole positions.

**Jig construction:**
- V-block: 2×4 lumber with a 90° V-groove routed or cut to accept the 0.748″ OD. Groove depth ≈ 0.375″.
- Length: 12″ to support the full body.
- Stop block: a small wooden block clamped or screwed at the bell-end datum position. The bell face of the body registers against this stop.
- Clamp the cylinder with a soft strap or tape — do not over-clamp (crushes wood).

**Hole marking procedure:**
1. Seat body in V-block with bell end against stop.
2. Mark all 9 hole center positions along the top of the cylinder from bell-end datum (positions per `design.md` Section 3.5 — mark with Dykem + scribe).
3. Use a small center-punch or awl to create a dimple at each mark (prevents drill walk).
4. Drill pilot hole 0.1875″ first; open to 0.250″ in second pass.
5. Move stop registration only if re-measuring from bell — do not disturb mid-sequence.

**Verification:** After marking all centers, check spacing with calipers vs design table. Re-mark if any position is off by > 0.030″ before drilling.

---

## JIG-03 — Reed Shank Fitting: No Jig Required

**Question:** Does fitting the reed into the socket require a fixture?

**Decision: No dedicated jig — PTFE tape wrapping is hand-fitted.**

**Rationale:**
- The reed socket is simply the bore opening at the reed end of the body.
- Fitting is accomplished by wrapping the reed shank with PTFE plumber's tape until it seats firmly with a light press-fit.
- No precision fixture is needed; this is a common technique for woodwind reed fitting.
- The reed's position (depth of insertion) is adjusted empirically to tune the instrument.

**Procedure:**
1. Soak reed 15 minutes. Mount no PTFE yet.
2. Insert reed shank dry into bore top — feel how loose the fit is.
3. Wrap 3–5 layers of PTFE tape around the shank.
4. Re-insert — should seat firmly with light thumb pressure, no rocking.
5. Mark the seating depth with a pencil mark on the reed shank.
6. If too loose: add 1–2 more PTFE layers. If too tight: remove 1 layer.

---

## JIG-04 — Reaming / Bore Finishing: Dowel Sanding Mandrel

**Question:** How to sand the bore interior smooth after drilling without a reamer?

**Decision: Homemade sanding mandrel from a close-fitting wooden dowel.**

**Rationale:**
- A commercial adjustable reamer for 0.472″ is available but expensive for a one-off build.
- A dowel slightly undersized (0.440–0.460″ dia) wrapped with sandpaper is adequate for smoothing tearout after boring.
- This is suitable for finishing but not for enlarging the bore; all primary sizing must be done by the drill bit.

**Construction:**
- Turn or purchase a hardwood dowel 0.450″ dia × 12″ L.
- Wrap with 120/180/220/320 grit sandpaper (cut strips, spiral-wrap, secure with tape at ends).
- Chuck in lathe or spin by hand for lapping action.

**Verification:** Bore should feel smooth to a cotton swab drawn through it. No snagging or roughness.

---

## Jig Priority Summary

| Jig | Necessity | Build effort | When needed |
|---|---|---|---|
| JIG-01 Lathe setup | Required | Lathe chuck/centers (existing) | Before boring |
| JIG-02 V-block hole drill jig | Required | 1–2 hrs shop time | Before tone holes |
| JIG-03 PTFE fitting | Not a jig — hand technique | None | Reed fitting |
| JIG-04 Sanding mandrel | Recommended | 30 min | After boring |
