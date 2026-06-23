(* ============================================================
   DUDUK — Wolfram Interactive Model (deployable)
   instrument-maker V5 | Armenian double-reed cylindrical aerophone

   Status: STARTER / L2 SOURCE-ONLY. All acoustic outputs are
   EMPIRICAL ESTIMATES (closed-pipe quarter-wave with crude end
   and reed corrections). They REQUIRE a physical build and
   measurement before citation.

   Parametric core lifted from duduk-wolfram-starter.wl §0–§3.
   This file RETURNS a Manipulate (SaveDefinitions->True) so it
   can be CloudDeploy'd as a public interactive explorer.
   ============================================================ *)

(* ─── Parametric core (estimate-only) ───────────────────────── *)

cAir = 343.0;   (* m/s at 20C — adjust for shop temperature *)

Clear[bodyLengthEstimate];
(* Closed-pipe body-length estimate: quarter-wave minus end and reed
   corrections. EMPIRICAL — reedFactor especially is a fudge factor. *)
bodyLengthEstimate[f0_, boreM_, reedLenM_, reedFactor_] :=
  Module[{Lac, ec, rEff},
    Lac  = cAir/(4 f0);
    ec   = 0.6 (boreM/2);
    rEff = reedFactor reedLenM;
    Lac - ec - rEff
  ];

Clear[holePositionEstimate];
(* First-estimate tone-hole position from bell: L(fund) - L(hole). EMPIRICAL. *)
holePositionEstimate[f0_, fHole_] := cAir/(4 f0) - cAir/(4 fHole);

(* A natural-minor hole layout relative to the root (semitone offsets) *)
holeOffsets = {0, 2, 3, 5, 7, 8, 10, 12, 14, 15};
holeNames   = {"Root", "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "Th9"};

(* ─── Interactive explorer (the deployable return value) ────── *)

dudukExplorer = Manipulate[
  Module[{Lbody, holes},
    Lbody = bodyLengthEstimate[f0, boreM, reedLenM, reedFactor];
    holes = MapThread[
      {#1, holePositionEstimate[f0, f0 2^(#2/12)]*100} &,
      {holeNames, holeOffsets}
    ];
    Column[{
      Grid[{
        {"Acoustic length:", NumberForm[cAir/(4 f0)*100, {6, 2}], "cm"},
        {"End correction:",  NumberForm[0.6 (boreM/2)*100, {5, 2}], "cm"},
        {"Reed eff. length:", NumberForm[reedFactor reedLenM*100, {5, 2}], "cm  [EMPIRICAL]"},
        {"Body length est.:", NumberForm[Lbody*100, {6, 2}], "cm  [EMPIRICAL]"}
      }, Frame -> All, Alignment -> Left],
      Style["Tone-hole positions from bell (cm) — FIRST ESTIMATE, verify by build:", Italic],
      Grid[
        Prepend[
          Map[{#[[1]], NumberForm[#[[2]], {5, 2}]} &, holes],
          {"Hole", "Pos from bell (cm)"}
        ],
        Frame -> All, Background -> {None, {LightGray}}
      ],
      Style["All predictions are EMPIRICAL ESTIMATES — validate by physical build.",
        Italic, Darker[Red]]
    }, Center]
  ],
  {{f0, 220, "fundamental (Hz)"}, 160, 500, 1},
  {{boreM, 0.472*0.0254, "bore ID (m)"}, 0.008, 0.017, 0.0001},
  {{reedLenM, 3.9*0.0254, "reed phys. length (m)"}, 0.06, 0.14, 0.001},
  {{reedFactor, 0.5, "reed eff. factor (EMPIRICAL)"}, 0.3, 0.7, 0.01},
  ControlPlacement -> Left,
  SaveDefinitions -> True
]
