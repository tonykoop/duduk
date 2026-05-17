# Duduk CAD Starter

No build-ready CAD solids are included yet.
This lane ships a conservative OpenSCAD smoke artifact for visualization only:

- `duduk-openscad-smoke.scad`

Model the first body only after the A3-root prototype is measured with the reed actually used for tuning.

## Suggested Parameters

- `bore_id = 0.472 in`
- `body_od = 0.748 in`
- `body_length = measured after reed fit`
- `hole_positions = measured/tuned values from validation.csv`
- `reed_socket_depth = measured for selected reed`

## Notes

Keep the CAD file marked empirical until the reed/body calibration is complete. Duduk body length and hole behavior are reed-dependent, so workbook estimates should seed the model rather than freeze it.
