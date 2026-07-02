# MCP Session Log

V5 provenance — aligned with `tonykoop/instrument-maker` V5 build-packet standard.

No Claude Desktop MCP session was run for this packet. The smoke SCAD was
authored by hand from committed design-table and resources.md references.
No fabrication authority has been claimed for any output.

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-05-17-scad-smoke-v1 | openscad | duduk-design-table.xlsx; design.md | cad/duduk-openscad-smoke.scad | cad_authoring | pending_measurement | unreviewed | Conservative smoke model with empirical seed values; geometry placeholder only; NOT fabrication authority. All bore and hole positions require measured values from validation.csv before any CAD/DXF authority is claimed. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | duduk-design-table.xlsx, family-spec.csv | cad/duduk-openscad-smoke.scad, wolfram/duduk-wolfram-model.wl | packet_refresh | pending_measurement | self_checked | V5 refresh pass: existing L1 packet reviewed against baseline validator (0 failures, 2 pre-existing warnings unchanged); no dimension or authority changes made; existing smoke SCAD render-checked (openscad -o STL, exit 0); evolution/ Stage 0 intake added. Cultural-review and physical-build gates remain open per README. |

## V5 MCP Gate

Issue tonykoop/duduk#3 asks for a Claude Desktop OpenSCAD MCP session that
reads `duduk-design-table.xlsx`, writes `cad/duduk.scad`, and records the
session ID and provenance here. Until that session runs:

- `duduk-openscad-smoke.scad` is a hand-authored placeholder;
  authority_result remains `pending_measurement`.
- No STL, DXF, or fabrication output is claimed.
- `visual-output-register.csv` carries CAD-001 as `pending_measurement`.

When the MCP session runs, replace the 2026-05-17 row above with the real
session timestamp and Claude Desktop session ID, update `authority_result` to
`fabrication` only if the dimensions trace to reviewed design-table values,
and commit the new `cad/duduk.scad` alongside the updated log.
