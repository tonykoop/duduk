# Design Intent — duduk rev A

- Master CAD: `cad/duduk-openscad-smoke.scad` (sha256: 5170423d3b3888ee2061eca8edef346e37ca6009c16b8273b03ef496fd137f22), driven by `duduk-design-table.xlsx` (sha256: e925b761a699e7a820cd903535036578964f6b31b38beb67a34fb77ca904b2b1)
- Function: Closed cylindrical stopped-pipe aerophone (Armenian duduk / Turkish mey / Azerbaijani balaban / Georgian duduki variants) excited by a giant double reed (Arundo donax), sub-resonant to the bore. 9-hole layout per variant; body length is an acoustic-model estimate pending reed-fit trim. UNESCO ICH (2005) — engineering reference only, not a claim of cultural/performance reproduction (see resources.md).
- Environment: hand-held wind instrument; wood body moves with humidity/oiling; reed behavior (and thus true body length) depends on the specific reed used.
- Target qty: 1 (prototype, A3-root Armenian variant). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Bore ID (A3 Armenian) | 0.472 in | ±0.005 in (validation.csv V-DIM-01) | tuning/timbre | family-spec.csv DUD-ARM-A3 (design_table_backed) |
| Body OD | 0.748 in | ±0.005 in (V-DIM-02) | wall strength vs. tone | duduk-design-table.xlsx (design_table_backed) |
| Wall thickness | 0.138 in | inspect for splitting (risks.md RISK-ST-01) | structural, thin-wall drilling risk | family-spec.csv (design_table_backed) |
| Body length (tube) | 13.25 in (estimate) | trim incrementally to tuned pitch (V-DIM-03) | intonation, reed-dependent | family-spec.csv (measurement_required) |
| Reed physical length | 3.90 in | ±0.10 in (V-DIM-04) | sub-resonance condition | bom.csv DUD-A3-002 (measurement_required) |
| Hole positions (1-9) | per simplified cutoff formula | ±30 cents initial, ±15 cents target (RISK-AC-03) | intonation, cannot un-drill | design.md governing model (measurement_required) |

## Incidental (free for DFM)

- Exterior finish choice (tung oil/wax), reed bridle material (thread vs. heat-shrink), cosmetic body taper/shaping outside the bore.

## Must-nots (DFM may never violate)

- Never drill side-force on the bore; drill-press only, perpendicular to bore axis (risks.md RISK-ST-01).
- Do not treat hole positions as final until each is drilled-and-tested in order from bell-end up, per RISK-AC-03.
- Do not publish or promote this packet as a cultural reproduction; it is workshop engineering reference only — cultural-review gates block L2 promotion (README, resources.md).
- Do not treat the four regional variants (Armenian/Mey/Balaban/Duduki) as interchangeable in public-facing text (RISK-AC/resources.md).
- Body length in family-spec.csv is an acoustic estimate, not a cut dimension — build over-length and trim per RISK-AC-01.

## Material intent

- Preferred: apricot wood (traditional, Armenian variant) or walnut/plum/mulberry per variant, per bom.csv.
- Acceptable subs: per bom.csv Source Category notes (specialty lumber/turning blank suppliers).
- Forbidden: film-forming finish on the bore (bom.csv DUD-A3-005 note); only food-safe bore oil.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable. Physical build and cultural review gates remain open per README; this intake does not change that.
