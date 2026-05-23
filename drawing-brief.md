# Drawing Brief — Duduk Family

**Drawing package:** Armenian Duduk, A3 root — v4.3 draft
**Date:** 2026-05-08
**File:** `drawings/duduk-a3-section.svg` (generated)

---

## Drawings Required

### DWG-01 — Body Cross-Section (primary)

- **View:** Longitudinal section through bore centerline
- **Scale:** 1:1 at A4/letter, or 1:2 if body won't fit at 1:1
- **Datum:** Bell end = 0 reference
- **Show:**
  - Outer profile (OD = 0.748″)
  - Bore (ID = 0.472″)
  - Wall thickness (0.138″ each side)
  - Tone hole positions (Holes 1–9, from bell) — marked EMPIRICAL
  - Tone hole diameters (~0.250″ est.) — marked EMPIRICAL
  - Reed socket depth (~0.500″) — marked TBD
  - Body length (≈ 13.25″ est.) — marked EMPIRICAL
  - Total acoustic length reference (15.35″ incl. reed eff.)
- **Title block:** Instrument, key, date, version, "EMPIRICAL — verify before drilling"
- **Material note:** Apricot / walnut, bore oil finish
- **Units:** Inches primary, cm secondary in parentheses

### DWG-02 — Hole Schedule (table drawing)

- **Format:** Table embedded in SVG or separate sheet
- **Columns:** Hole ID | Finger | Note | Freq (Hz) | Position from bell (in) | Position from bell (cm) | Dia (in) | Status
- **All positions flagged:** "EMPIRICAL ESTIMATE — measure and record actual in validation.csv"

### DWG-03 — Reed Geometry (reference)

- **View:** Side view of double reed showing overall length, tip width, shank width
- **Dimensions:** 3.90″ L × 0.63″ tip width, shank ≈ OD of bore
- **Note:** "Reed is not manufactured in-house. Dimensions shown for reference matching only."
- **Cross-section:** Flattened elliptical cross-section at tip; circular at shank

### DWG-04 — Family Comparison (optional, later)

- **View:** Side elevation of 4 variants (A3 Armenian, Turkish Mey, Balaban, Georgian) at same scale
- **Purpose:** Shows relative sizes across the family

---

## Drawing Standards

- All critical dimensions boxed
- Tolerance notes: ±0.005″ bore ID; ±0.005″ OD; hole positions ±0.020″ (first pass — adjust empirically)
- Revision block with date
- "DRAFT — v4.3 — Not for production without physical validation" watermark
- Title block: Instrument name | Key | Variant | Scale | Date | Drawn by

---

## Promotion Authority

Before any of the above drawings is promoted from EMPIRICAL/DRAFT to a fabrication-authority DXF, STEP, or shop-reviewed CAD release, check `reed-bore-authority-gates.csv`:

- DWG-01 bore ID, OD, wall, and body length are blocked by `BORE-GATE-001` (bore ID 3-point measurement), `BORE-GATE-002` (cylindricity / taper), and `BORE-GATE-003` (calibrated body length after empirical reed trim).
- DWG-01 reed socket depth and DWG-03 reed geometry are blocked by `REED-GATE-001` (reed dimensional spec), `REED-GATE-003` (reed effective length), and `REED-GATE-004` (reed stability under bridle).
- A full fabrication DXF or STEP is blocked by `BORE-GATE-004` until all preceding gates clear.

The existing `drawings/duduk-a3-section.svg` and the `cad/duduk-openscad-smoke.scad` smoke artifact remain draft/illustrative and do not satisfy these gates.
