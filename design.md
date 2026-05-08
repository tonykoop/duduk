# Duduk Family — Design Document

**v4.3 Root-Mode Packet** | Generated 2026-05-08 | Status: DRAFT — Empirical Pending Build

> **Provenance Notice.** The duduk (dooduk / tsiranapogh) is an Armenian double-reed instrument recognized as a UNESCO Intangible Cultural Heritage (2005). This document is engineering reference material for study and workshop fabrication. It does not attempt to reproduce traditional performance technique, reed-making craft, or the tonal qualities achieved by master makers. Dimensions here are derived from published organological sources and cannot substitute for an instrument made by or studied with a traditional craftsperson. All acoustic predictions are first-estimate only and must be validated by physical build and tuning measurement. See `resources.md` for provenance, source citations, and cultural context.

---

## 1. Instrument Identity

| Field | Value |
|---|---|
| Instrument family | Duduk / Balaban / Mey (cylindrical-bore double-reed) |
| Primary variant documented | Armenian Duduk (*tsiranapogh* — apricot pipe) |
| UNESCO ICH status | 2005 (Armenian duduk and its music) |
| Acoustic class | Closed cylindrical aerophone (stopped pipe) |
| Excitation | Giant double reed (Arundo donax), sub-resonant to bore |
| Bore profile | Cylindrical (slight practical taper in traditional instruments — modeled as cylinder here) |
| Key naming convention | Instrument named root+3 semitones (e.g., "A3-root" instrument = "C4 duduk" by key name) |
| Design sheet | `duduk-design-table.xlsx` — Sheet: Duduk Family |
| Primary example | A3-root Armenian Duduk (bore 0.472″, OD 0.748″) |

---

## 2. Regional Variants

Four variants are documented in `duduk-design-table.xlsx`. All share the stopped-pipe acoustic model and 9-hole layout; they differ in bore diameter, wall thickness, reed dimensions, and traditional wood species.

| Variant | Wood | Tone character | Bore group (large/mid/small) |
|---|---|---|---|
| Armenian Duduk (*tsiranapogh*) | Apricot (*Prunus armeniaca*) | Warm, breathy, voice-like | 0.551″ / 0.472″ / 0.394″ / 0.315″ |
| Turkish Mey | Plum or walnut | Bright, nasal | 0.630″ / 0.551″ / 0.472″ / 0.394″ |
| Azerbaijani Balaban | Mulberry | Reedy, penetrating | 0.551″ / 0.472″ / 0.394″ / 0.315″ |
| Georgian Duduki | Apricot or similar | Similar to Armenian, narrower | 0.472″ / 0.394″ / 0.354″ / 0.315″ |

---

## 3. Governing Acoustic Model

### 3.1 Stopped Cylindrical Pipe

The duduk bore is modeled as a closed-open cylindrical pipe:

```
f_n = c · (2n − 1) / (4 · L_eff)      n = 1, 2, 3, …
```

- `f_1` (fundamental): `f = c / (4 · L_eff)`
- `c` = 343.0 m/s = 13,503.9 in/s at 20 °C / 68 °F
- Odd harmonics only → mellow, clarinet-like timbre

### 3.2 Effective Length

```
L_eff = L_body + L_reed_eff − δ_open_end
```

| Term | Symbol | Value (A3 primary) | Notes |
|---|---|---|---|
| Body tube length | `L_body` | **13.25″ / 33.7 cm** | *EMPIRICAL ESTIMATE — pending build* |
| Reed effective length | `L_reed_eff` | **1.95″ / 4.95 cm** | *~0.5 × physical reed — EMPIRICAL* |
| Open-end correction | `δ` | 0.142″ / 0.36 cm | `0.6 × r_bore` |
| Total acoustic length | `L_eff` | 15.35″ / 39.0 cm | c/(4×220 Hz) |

> **⚠ Empirical guard.** The reed effective length is the largest source of uncertainty. Traditional makers tune `L_body` empirically against the reed in use. The 0.5× estimate is a starting point only. Expect to trim the body or adjust the reed insert depth after first assembly. Record measured values in `validation.csv`.

### 3.3 End Correction (Workbook Formula)

From the embedded Wolfram spec in `duduk-design-table.xlsx`:

```mathematica
lDuduk[f_, bore_] := 343/(4 f) - 0.6 bore   (* SI units, bore = radius in meters *)
```

Where `bore` = bore radius (meters). This gives open-end correction = `0.6 × r_bore`.

### 3.4 Reed Sub-Resonance Requirement

The duduk double reed must be *sub-resonant* to the bore: the reed's natural vibration frequency must be higher than the bore's fundamental. If reed pitch < bore pitch, the instrument will not stable-oscillate on the fundamental.

```
f_reed_natural > f_bore_fundamental
```

- Players adjust reed pitch via the **bridle** (a band that constrains reed opening). Squeezing the bridle → reed natural frequency rises → instrument plays sharper.
- Reed pitch is controlled by bridle tightness, soaking duration, and temperature.
- **This is not predictable from geometry alone.** Reed behavior is EMPIRICAL.

Approximate reed cavity estimate (heuristic only):

```
f_reed_approx ≈ 0.6 × c / (2 × L_reed_physical)
```

For A3-root reed (3.9″ = 0.099 m): `f_reed_approx ≈ 0.6 × 343 / (2 × 0.099) ≈ 1040 Hz`
→ Well above 220 Hz bore fundamental. Sub-resonance condition likely satisfied. **Verify by ear on first build.**

### 3.5 Tone-Hole Positions — Simplified Cutoff Estimate (EMPIRICAL)

The table below uses a simplified acoustic cutoff approximation:
`position_from_bell ≈ L_acoustic(fundamental) − L_acoustic(hole_note)`

This is a **first estimate only**. Actual positions depend on tone-hole diameter, undercutting, and the tone-hole lattice interaction. All values require physical verification.

**A3-root Armenian Duduk — Hole Schedule (EMPIRICAL ESTIMATES)**

| Hole | Finger | Note | Freq (Hz) | Est. position from bell | Est. position from bell | Status |
|---|---|---|---|---|---|---|
| Root | all closed | A3 | 220.00 | — | — | model anchor |
| 1 | RH pinky | B3 | 246.94 | 1.67″ | 4.25 cm | *EMPIRICAL* |
| 2 | RH ring | C4 | 261.63 | 2.44″ | 6.20 cm | *EMPIRICAL* |
| 3 | RH middle | D4 | 293.66 | 3.85″ | 9.78 cm | *EMPIRICAL* |
| 4 | RH index | E4 | 329.63 | 5.10″ | 12.96 cm | *EMPIRICAL* |
| 5 | LH ring | F4 | 349.23 | 5.68″ | 14.42 cm | *EMPIRICAL* |
| 6 | LH middle | G4 | 392.00 | 6.73″ | 17.10 cm | *EMPIRICAL* |
| 7 | LH index | A4 | 440.00 | 7.67″ | 19.49 cm | *EMPIRICAL* |
| 8 | top front | B4 | 493.88 | 8.51″ | 21.61 cm | *EMPIRICAL* |
| 9 | thumb | C5 | 523.25 | 8.89″ | 22.59 cm | *EMPIRICAL* |

Scale: A natural minor (Aeolian) — A B C D E F G A.
Duduk repertoire frequently uses microtonal and modal inflections not captured here.

---

## 4. Primary Instrument Specification — Armenian Duduk, A3 Root

All dimensions marked **EMPIRICAL** are first estimates pending physical build and measurement.

| Parameter | Value | Status |
|---|---|---|
| Root note (all-closed fundamental) | A3 | design anchor |
| Duduk key name (root + 3 semitones) | C4 | convention |
| Frequency | 220.00 Hz | target |
| Bore ID | **0.472″ / 12.0 mm** | design input |
| Wall thickness | **0.138″ / 3.5 mm** | design input |
| Outer diameter | **0.748″ / 19.0 mm** | = bore + 2×wall |
| Body length (tube only) | **≈ 13.25″ / 33.7 cm** | *EMPIRICAL* |
| Reed insert socket depth | **≈ 0.50″ / 12.7 mm** | TBD |
| Reed physical length | 3.90″ / 99 mm | design input |
| Reed physical width | 0.63″ / 16 mm | design input |
| Reed material | Arundo donax (giant cane) | traditional |
| Wood species | Apricot (*Prunus armeniaca*) | traditional |
| Wood alternative | Walnut, mulberry, cherry | non-traditional |
| Tone holes | 9 (8 front + 1 thumb) | design |
| Hole diameter (estimate) | ≈ 0.25″ / 6.35 mm | *EMPIRICAL — adjust for ergonomics* |
| Bell end | open (no bell flare) | design |

---

## 5. Full Family Body Length Table — Armenian Duduk

All body-length values are **EMPIRICAL ESTIMATES** from the stopped-pipe formula minus estimated reed effective length. Physical reeds will vary; trim to tune.

| Key name | Root | Freq | Bore ID | OD | Reed L | Body est. | Body est. |
|---|---|---|---|---|---|---|---|
| Eb3 | E3 | 164.81 Hz | 0.551″ | 0.865″ | 4.70″ | **≈ 17.97″** | ≈ 45.6 cm |
| F3 | F3 | 174.61 Hz | 0.551″ | 0.865″ | 4.70″ | **≈ 16.82″** | ≈ 42.7 cm |
| Gb3 | Gb3 | 185.00 Hz | 0.551″ | 0.865″ | 4.70″ | **≈ 15.73″** | ≈ 40.0 cm |
| Ab3 | G3 | 196.00 Hz | 0.551″ | 0.865″ | 4.70″ | **≈ 14.71″** | ≈ 37.4 cm |
| A3 | Ab3 | 207.65 Hz | 0.551″ | 0.865″ | 4.70″ | **≈ 13.74″** | ≈ 34.9 cm |
| **C4** | **A3** | **220.00 Hz** | **0.472″** | **0.748″** | **3.90″** | **≈ 13.25″** | **≈ 33.7 cm** |
| Db4 | Bb3 | 233.08 Hz | 0.472″ | 0.748″ | 3.90″ | **≈ 12.39″** | ≈ 31.5 cm |
| Eb4 | B3 | 246.94 Hz | 0.472″ | 0.748″ | 3.90″ | **≈ 11.58″** | ≈ 29.4 cm |
| E4 | C4 | 261.63 Hz | 0.472″ | 0.748″ | 3.90″ | **≈ 10.81″** | ≈ 27.5 cm |
| F4 | Db4 | 277.18 Hz | 0.472″ | 0.748″ | 3.90″ | **≈ 10.09″** | ≈ 25.6 cm |
| G4 | D4 | 293.66 Hz | 0.394″ | 0.630″ | 3.50″ | **≈ 9.63″** | ≈ 24.5 cm |
| Ab4 | Eb4 | 311.13 Hz | 0.394″ | 0.630″ | 3.50″ | **≈ 8.98″** | ≈ 22.8 cm |
| A4 | E4 | 329.63 Hz | 0.394″ | 0.630″ | 3.50″ | **≈ 8.37″** | ≈ 21.3 cm |
| Bb4 | F4 | 349.23 Hz | 0.394″ | 0.630″ | 3.50″ | **≈ 7.80″** | ≈ 19.8 cm |
| B4 | Gb4 | 369.99 Hz | 0.394″ | 0.630″ | 3.50″ | **≈ 7.26″** | ≈ 18.4 cm |
| C5 | G4 | 392.00 Hz | 0.315″ | 0.511″ | 3.50″ | **≈ 6.77″** | ≈ 17.2 cm |
| Db5 | Ab4 | 415.30 Hz | 0.315″ | 0.511″ | 3.50″ | **≈ 6.29″** | ≈ 15.9 cm |
| D5 | A4 | 440.00 Hz | 0.315″ | 0.511″ | 3.50″ | **≈ 5.83″** | ≈ 14.8 cm |
| Eb5 | Bb4 | 466.16 Hz | 0.315″ | 0.511″ | 3.50″ | **≈ 5.40″** | ≈ 13.7 cm |
| E5 | B4 | 493.88 Hz | 0.315″ | 0.511″ | 3.50″ | **≈ 4.99″** | ≈ 12.7 cm |

**Bold row** = primary build target.

---

## 6. Design Notes and Open Questions

1. **Reed effective length (critical unknown).** The 0.5× factor is a rough heuristic. Traditional makers tune body length empirically with the reed in hand. Plan to build at +0.5″ over estimate and trim. Record final length in `validation.csv`.

2. **Bore taper.** Real Armenian duduks have a slight practical taper (wider at bell, narrower at reed end). This model treats it as perfectly cylindrical. Taper affects harmonic structure and tone color but has second-order effect on fundamental pitch. Treat as post-build refinement.

3. **Hole diameter and undercutting.** Tone-hole diameters affect cutoff frequency and cross-fingering possibilities. Starting estimate 0.25″; adjust for player hand size and desired response. Undercutting is a traditional technique to widen effective diameter without enlarging the surface opening.

4. **Scale accuracy.** The A natural minor scale holes give diatonic Armenian repertoire access. Traditional duduk playing uses extensive microtonal inflection via partial hole closure and embouchure — this cannot be captured in a fixed-hole layout.

5. **Reed sourcing.** Traditional Arundo donax reeds for duduk are specialty items. Source from Armenian or Middle Eastern music suppliers. Plan 4–6 reeds for initial testing (they break during adjustment). See `sourcing.csv` and `resources.md`.

6. **Wood species.** Apricot is the traditional and acoustic-preferred species but is not commonly available in US lumber yards. Walnut is a reasonable substitute (similar density, ρ ≈ 640–700 kg/m³ vs apricot ≈ 750 kg/m³). Will produce different tone color — do not claim tonal equivalence with traditional instruments.

7. **Authenticity scope.** This packet documents the geometry and physics of the duduk for workshop fabrication. Producing an instrument that approaches traditional performance quality requires additional study of Armenian reed-making and playing technique. See `resources.md`.

---

## 7. File Map

| File | Contents |
|---|---|
| `design.md` | This document |
| `duduk-design-table.xlsx` | Parametric design sheet (20 keys × 4 variants) |
| `bom.csv` | Bill of materials — A3-root Armenian build |
| `sourcing.csv` | Supplier recommendations |
| `cut-list.csv` | Stock and machining sizes |
| `validation.csv` | Tuning and dimensional check sheet |
| `assembly-manual.md` | Step-by-step build instructions |
| `supplier-rfq.md` | RFQ template for wood stock and reeds |
| `visual-bom-brief.md` | Visual BOM layout spec |
| `drawing-brief.md` | Drawing package spec |
| `wolfram/wolfram-starter.wl` | Wolfram model package |
| `drawings/duduk-a3-section.svg` | Dimensioned cross-section drawing |
| `cnc/setup-sheet.md` | CNC/lathe operation plan |
| `risks.md` | Red-team risk register |
| `resources.md` | Provenance, sources, cultural context |
| `jig-decision.md` | Fixture and jig decisions |
| `photo-shotlist.md` | Photo documentation plan |
| `site/index.html` | Build-log static site |

---

*Generated by instrument-maker-v4.3. All EMPIRICAL values require physical measurement before this packet is considered verified.*
