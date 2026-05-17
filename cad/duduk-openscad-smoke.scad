// Duduk conservative OpenSCAD smoke packet
// Source-only / geometry-smoke model for visual sanity checks.
// NOT build-ready CAD.

$fn = 96;

// EMPIRICAL seed values (from duduk packet docs). Validate and replace with measured values.
bore_id_in = 0.472;      // from workbook estimate
wall_in = 0.138;        // wall thickness placeholder
body_len_in = 13.25;    // acoustic seed only (A3 target)
reed_socket_len_in = 0.50;
reed_socket_inset_in = 0.02;
hole_diam_in = 0.12;

module bore_cylinder(len_in, bore_d_in, wall_in_) {
  difference() {
    cylinder(h = len_in, d = bore_d_in + 2 * wall_in_);
    translate([0, 0, reed_socket_inset_in])
      cylinder(h = len_in - reed_socket_inset_in * 2, d = bore_d_in);
  }
}

module reed_socket() {
  // Simplified placeholder to visualize reed seat geometry only.
  translate([0, 0, body_len_in - reed_socket_len_in])
    cylinder(h = reed_socket_len_in, d = bore_id_in * 1.08);
}

module hole_markers() {
  // Placeholder hole positions (from Wolfram estimates only).
  // Do not use for cutting; replace with tuned, measured values in validation.csv.
  for (i = [0:2:8]) {
    z = 0.80 + i * 0.75;
    translate([0, 0, z])
      cylinder(h = wall_in, d = hole_diam_in);
  }
}

// Axial shell
color([0.95, 0.93, 0.88])
bore_cylinder(body_len_in, bore_id_in, wall_in);

// End treatments
color([0.85, 0.83, 0.80])
  reed_socket();

color([0.4, 0.35, 0.18])
hole_markers();
