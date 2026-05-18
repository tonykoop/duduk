# Duduk Family

Engineering documentation and parametric design table for the duduk family — Armenian double-reed apricot-wood instruments recognized as a UNESCO Intangible Cultural Heritage.

> **Scope.** This repository documents the geometry and acoustic physics of the duduk and its regional cousins (Turkish mey, Azerbaijani balaban, Georgian duduki) for workshop fabrication and study. It does not reproduce traditional Armenian reed-making craft or performance technique. All tuning predictions are marked **empirical** and require physical build and measurement. See [`resources.md`](resources.md) for full provenance notes.

**Status:** 🔒 Private draft — physical build and cultural review pending before public release.

---

## Variants Documented

| Instrument | Region | Wood | Tone | Bore group |
|---|---|---|---|---|
| Duduk (*tsiranapogh*) | Armenia | Apricot | Warm, breathy, vocal | 0.315–0.551″ |
| Mey | Turkey | Plum / walnut | Bright, nasal | 0.394–0.630″ |
| Balaban | Azerbaijan | Mulberry | Reedy, penetrating | 0.315–0.551″ |
| Duduki | Georgia | Apricot/similar | Narrow, focused | 0.315–0.472″ |

20 keys documented (E3–B4 root) across all variants.

## Primary Build Target

**Armenian Duduk, A3 root** (traditional concert size)

| Parameter | Value | Status |
|---|---|---|
| Bore ID | 0.472″ / 12.0 mm | design input |
| Wall | 0.138″ / 3.5 mm | design input |
| OD | 0.748″ / 19.0 mm | calculated |
| Body length | ≈ 13.25″ / 33.7 cm | *EMPIRICAL* |
| Reed | Arundo donax, 3.90″ × 0.63″ | traditional |
| Wood | Apricot (preferred); walnut (alternate) | — |

Acoustic model: stopped cylindrical pipe, `f = c / (4·L_eff)`. Scale: A natural minor.

## Packet Contents

```
duduk/
├── README.md                   ← this file
├── duduk-design-table.xlsx     ← parametric design sheet (20 keys × 4 variants)
├── design.md                   ← acoustic model, hole schedule, family table
├── bom.csv                     ← bill of materials
├── sourcing.csv                ← supplier guidance
├── cut-list.csv                ← stock and machining sizes
├── validation.csv              ← dimensional and tuning checks
├── assembly-manual.md          ← step-by-step build instructions
├── supplier-rfq.md             ← RFQ template
├── visual-bom-brief.md         ← visual BOM spec
├── drawing-brief.md            ← drawing package spec
├── photo-shotlist.md           ← photo documentation plan
├── risks.md                    ← red-team risk register
├── resources.md                ← provenance, sources, cultural context
├── jig-decision.md             ← fixture decisions
├── explorer.html               ← studio explorer for packet review
├── drawings/
│   └── duduk-a3-section.svg   ← dimensioned longitudinal cross-section
├── cnc/
│   └── setup-sheet.md         ← lathe + drill-press operation plan
├── wolfram/
│   └── wolfram-starter.wl     ← Wolfram acoustic model package
├── site/
│   └── index.html             ← build-log static site
├── cad/                        ← conservative OpenSCAD smoke starter + CAD notes
├── images/                     ← (placeholder — photos per photo-shotlist.md)
└── data/                       ← (placeholder — measured validation data)
```

## Quick Start

1. Read [`design.md`](design.md) for the acoustic model and empirical caveats.
2. Open `duduk-design-table.xlsx` (Sheet: Duduk Family) for the full parametric table.
3. Open [`explorer.html`](explorer.html) for a review-friendly index of the design files, validation gates, Wolfram source, print packet, site, and songbook material.
4. Order materials per [`sourcing.csv`](sourcing.csv) — **order 6+ reeds**; reed quality dominates the build outcome.
5. Follow [`assembly-manual.md`](assembly-manual.md) — body length is set empirically during reed fitting, not by formula.
6. Record all measured values in [`validation.csv`](validation.csv).
7. Review [`risks.md`](risks.md) — pay special attention to RISK-AC-01 (body length) and RISK-SC-02 (reed quality).

## Cultural Heritage

The Armenian duduk (*tsiranapogh* — "apricot pipe") is a UNESCO Intangible Cultural Heritage instrument (2005). It is central to Armenian ceremonial music, played at weddings, funerals, and church services. The traditional knowledge of reed-making and performance practice is passed orally within the Armenian musical community.

This repository documents engineering geometry only. For the living musical tradition, listen to master players such as Djivan Gasparyan, and seek instruction from Armenian musicians.

See [`resources.md`](resources.md) for a full cultural context statement, source list, and public-release checklist.

## License

[CC BY 4.0](LICENSE) — engineering documentation. Cultural knowledge and traditional technique belong to the communities that carry them.

---

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue · Generated with instrument-maker-v4.3
