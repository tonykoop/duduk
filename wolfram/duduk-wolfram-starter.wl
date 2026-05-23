(* ============================================================
   DUDUK FAMILY — Wolfram Model Package
   instrument-maker-v4.3 | 2026-05-08
   Armenian double-reed cylindrical-bore aerophone

   Status: STARTER — all empirical predictions require
   physical build and measurement before citation.

   Sourced from §§1–8 of the Wolfram spec embedded in
   duduk-design-table.xlsx (Sheet: Duduk Family)
   ============================================================ *)

(* ─── §0 LOAD AND PARAMETERS ──────────────────────────────── *)

(* Speed of sound — adjust for shop temperature *)
cAir = 343.0;                   (* m/s at 20°C / 68°F *)
cAirIn = 13503.94;              (* in/s *)

(* Primary instrument: Armenian Duduk, A3 root *)
boreID   = 0.472 * 0.0254;     (* m  — bore inner diameter *)
boreR    = boreID / 2;          (* m  — bore radius *)
wallT    = 0.138 * 0.0254;     (* m  — wall thickness *)
OD       = boreID + 2 wallT;   (* m  — outer diameter *)
reedL    = 3.9   * 0.0254;     (* m  — reed physical length *)
fFund    = 220.0;               (* Hz — A3 target fundamental *)

(* Derived acoustic length *)
Leff     = cAir / (4 fFund);   (* m — full acoustic length *)
deltaEnd = 0.6 boreR;          (* m — open-end correction *)
reedEff  = 0.5 reedL;          (* m — reed effective length, EMPIRICAL *)
Lbody    = Leff - deltaEnd - reedEff;  (* m — body length estimate *)

Print["=== Duduk A3 Root — Acoustic Parameters ==="];
Print["Acoustic length L_eff:     ", NumberForm[Leff*100, {5,2}], " cm  /  ", NumberForm[Leff/0.0254, {5,3}], "\""];
Print["End correction (0.6·r):    ", NumberForm[deltaEnd*100, {4,2}], " cm"];
Print["Reed eff. length (0.5×):   ", NumberForm[reedEff*100, {4,2}], " cm  [EMPIRICAL]"];
Print["Body length estimate:       ", NumberForm[Lbody*100, {5,2}], " cm  /  ", NumberForm[Lbody/0.0254, {5,3}], "\"  [EMPIRICAL]"];
Print[""];

(* ─── §1 HOLE SCHEDULE FUNCTION ───────────────────────────── *)

(* Simplified cutoff estimate: position from bell =
   L_acoustic(fundamental) - L_acoustic(hole_note)
   This is a FIRST ESTIMATE. Real positions require
   tone-hole lattice analysis or physical measurement. *)

holePositionEst[fHole_] :=
  Module[{Lfund, Lhole},
    Lfund = cAir / (4 fFund);
    Lhole = cAir / (4 fHole);
    (Lfund - Lhole)  (* meters from bell — EMPIRICAL *)
  ]

(* A natural minor scale — A3 root *)
holeSchedule = {
  {"Root (all closed)", "A3", 220.00},
  {"Hole 1 (RH pinky)", "B3", 246.94},
  {"Hole 2 (RH ring)",  "C4", 261.63},
  {"Hole 3 (RH middle)","D4", 293.66},
  {"Hole 4 (RH index)", "E4", 329.63},
  {"Hole 5 (LH ring)",  "F4", 349.23},
  {"Hole 6 (LH middle)","G4", 392.00},
  {"Hole 7 (LH index)", "A4", 440.00},
  {"Hole 8 (top front)","B4", 493.88},
  {"Thumb 9",           "C5", 523.25}
};

Print["=== Hole Position Table (EMPIRICAL estimates) ==="];
Print[TableForm[
  Map[{#[[1]], #[[2]], #[[3]],
       NumberForm[holePositionEst[#[[3]]] * 100, {4,2}],
       NumberForm[holePositionEst[#[[3]]] / 0.0254, {4,3}]} &,
      holeSchedule],
  TableHeadings -> {None,
    {"Name", "Note", "Freq (Hz)",
     "Pos from bell (cm)", "Pos from bell (in)"}}
]];
Print["  All positions marked EMPIRICAL — verify by physical build."];
Print[""];

(* ─── §2 FULL FAMILY BODY LENGTH TABLE ────────────────────── *)

(* Armenian Duduk family: 20 keys with bore groups *)
armenianFamily = {
  {"E3",  164.81, 0.551*0.0254, 0.157*0.0254, 4.7*0.0254},
  {"F3",  174.61, 0.551*0.0254, 0.157*0.0254, 4.7*0.0254},
  {"Gb3", 185.00, 0.551*0.0254, 0.157*0.0254, 4.7*0.0254},
  {"G3",  196.00, 0.551*0.0254, 0.157*0.0254, 4.7*0.0254},
  {"Ab3", 207.65, 0.551*0.0254, 0.157*0.0254, 4.7*0.0254},
  {"A3",  220.00, 0.472*0.0254, 0.138*0.0254, 3.9*0.0254},
  {"Bb3", 233.08, 0.472*0.0254, 0.138*0.0254, 3.9*0.0254},
  {"B3",  246.94, 0.472*0.0254, 0.138*0.0254, 3.9*0.0254},
  {"C4",  261.63, 0.472*0.0254, 0.138*0.0254, 3.9*0.0254},
  {"Db4", 277.18, 0.472*0.0254, 0.138*0.0254, 3.9*0.0254},
  {"D4",  293.66, 0.394*0.0254, 0.118*0.0254, 3.5*0.0254},
  {"Eb4", 311.13, 0.394*0.0254, 0.118*0.0254, 3.5*0.0254},
  {"E4",  329.63, 0.394*0.0254, 0.118*0.0254, 3.5*0.0254},
  {"F4",  349.23, 0.394*0.0254, 0.118*0.0254, 3.5*0.0254},
  {"Gb4", 369.99, 0.394*0.0254, 0.118*0.0254, 3.5*0.0254},
  {"G4",  392.00, 0.315*0.0254, 0.098*0.0254, 3.5*0.0254},
  {"Ab4", 415.30, 0.315*0.0254, 0.098*0.0254, 3.5*0.0254},
  {"A4",  440.00, 0.315*0.0254, 0.098*0.0254, 3.5*0.0254},
  {"Bb4", 466.16, 0.315*0.0254, 0.098*0.0254, 3.5*0.0254},
  {"B4",  493.88, 0.315*0.0254, 0.098*0.0254, 3.5*0.0254}
};

bodyLengthEst[f_, bore_, reedPhys_] :=
  Module[{r = bore/2, Lac, ec, rEff},
    Lac  = cAir / (4 f);
    ec   = 0.6 r;
    rEff = 0.5 reedPhys;   (* EMPIRICAL factor *)
    Lac - ec - rEff
  ]

Print["=== Armenian Duduk Family — Body Length Estimates (EMPIRICAL) ==="];
Print[TableForm[
  Map[{#[[1]], #[[2]], NumberForm[#[[3]]/0.0254,{4,3}],
       NumberForm[bodyLengthEst[#[[2]],#[[3]],#[[5]]]*100,{4,2}],
       NumberForm[bodyLengthEst[#[[2]],#[[3]],#[[5]]]/0.0254,{4,3}]} &,
      armenianFamily],
  TableHeadings -> {None,
    {"Key (root)", "Freq Hz", "Bore ID (in)",
     "Body est (cm)", "Body est (in)"}}
]];
Print[""];

(* ─── §3 MANIPULATE — INTERACTIVE EXPLORER ────────────────── *)
(* Uncomment in Wolfram Desktop to launch interactive widget *)

(*
Manipulate[
  Module[{Lac, ec, rEff, Lbod, holePos},
    Lac  = cAir / (4 f0);
    ec   = 0.6 (bore/2);
    rEff = reedFactor * reedLen;
    Lbod = Lac - ec - rEff;
    holePos = Table[
      {noteName,
       NumberForm[holePositionEst2[f0, fn] * 100, {4,2}]},
      {noteName, {"Root","H1","H2","H3","H4","H5","H6","H7","H8","Th9"}},
      {fn, {f0, f0*2^(2/12), f0*2^(3/12), f0*2^(5/12),
            f0*2^(7/12), f0*2^(8/12), f0*2^(10/12),
            f0*2, f0*2^(14/12), f0*2^(15/12)}}
    ];
    Grid[{
      {"Bore ID:", NumberForm[bore/0.0254, {4,3}], "in"},
      {"Acoustic L:", NumberForm[Lac*100, {5,2}], "cm"},
      {"End corr:", NumberForm[ec*100, {4,2}], "cm"},
      {"Reed eff:", NumberForm[rEff*100, {4,2}], "cm  [EMPIRICAL]"},
      {"Body est:", NumberForm[Lbod*100, {5,2}], "cm  [EMPIRICAL]"}
    }, Frame -> All]
  ],
  {{f0, 220, "Fundamental (Hz)"}, 160, 500, 1},
  {{bore, 0.472*0.0254, "Bore ID (m)"}, 0.008, 0.017, 0.0001},
  {{reedLen, 3.9*0.0254, "Reed phys. length (m)"}, 0.06, 0.14, 0.001},
  {{reedFactor, 0.5, "Reed eff. factor (EMPIRICAL)"}, 0.3, 0.7, 0.01},
  ControlPlacement -> Left
]
*)

(* ─── §4 STANDING WAVE VISUALISATION ──────────────────────── *)

standingWave[x_, t_, L_, n_:1] :=
  Sin[(2n - 1) * Pi * x / (2 L)] * Cos[2 Pi fFund t]

(* Animate in Wolfram Desktop — shows pressure antinode at reed end (closed)
   and pressure node (velocity antinode) at bell end (open) *)
(*
Animate[
  Plot[standingWave[x, t, Leff], {x, 0, Leff},
    PlotLabel -> "Duduk closed-pipe standing wave\n(closed=reed end, open=bell)",
    AxesLabel -> {"Position (m)", "Relative pressure"},
    PlotStyle -> Thick,
    GridLines -> Automatic
  ],
  {t, 0, 1/fFund},
  AnimationRate -> fFund / 8,
  AnimationRepetitions -> Infinity
]
*)

(* ─── §5 REED STABILITY HEURISTIC ─────────────────────────── *)
(* Approximate reed natural frequency using cavity heuristic.
   This is a rough approximation ONLY — not a validated model. *)

reedPitchHeuristic[reedLenM_, boreDiaM_] :=
  0.6 * cAir / (2 * reedLenM)   (* very rough — treat as order-of-magnitude only *)

Print["=== Reed Sub-Resonance Check (HEURISTIC — not validated) ==="];
Do[
  Module[{key = row[[1]], f = row[[2]], b = row[[3]], rL = row[[5]]},
    Module[{fr = reedPitchHeuristic[rL, b]},
      Print[key, ": bore f=", NumberForm[f,{5,3}],
            " Hz | reed est.=", NumberForm[fr,{5,0}],
            " Hz | ratio=", NumberForm[fr/f,{4,1}],
            If[fr > f, " ✓ sub-resonant OK", " ⚠ CHECK"]]
    ]
  ],
  {row, armenianFamily}
];
Print["  Reed pitch heuristic: f_reed ≈ 0.6·c/(2·L_reed). EMPIRICAL — verify by ear."];
Print[""];

(* ─── §6 AUDIO PREVIEW (Wolfram Desktop) ──────────────────── *)
(*
(* Simplified additive synthesis of odd harmonics — approximates
   the closed-pipe timbre. Not a true duduk sound. *)
dudukTone[f_, dur_:2.0] :=
  SoundNote[None] (* placeholder *);

dudukSynth[f_, dur_:2.0] :=
  Sound[
    SampledSoundFunction[
      Module[{t = #},
        (* Odd harmonics 1, 3, 5 with amplitude decay *)
        0.5 Sin[2 Pi f t] +
        0.25 Sin[2 Pi 3 f t] +
        0.12 Sin[2 Pi 5 f t] +
        0.06 Sin[2 Pi 7 f t]
      ] &,
      44100, dur
    ]
  ]

(* Play A3 fundamental preview *)
(* dudukSynth[220.0, 2.0] *)
*)

(* ─── §7 GEO MAP PLACEHOLDER (Wolfram Desktop) ────────────── *)
(*
(* Cultural atlas: Caucasus Reed Trinity *)
GeoGraphics[{
  GeoMarker[Entity["City", "Yerevan::m6pk7"], "Armenian Duduk"],
  GeoMarker[Entity["City", "Tbilisi::hth44"], "Georgian Duduki"],
  GeoMarker[Entity["City", "Baku::3hwd2"],   "Azerbaijani Balaban"],
  GeoMarker[Entity["City", "Ankara::hfkrm"], "Turkish Mey"]
}, GeoRange -> "World", GeoBackground -> "StreetMap"]
*)

(* ─── §8 DEPLOY PLACEHOLDER ───────────────────────────────── *)
(*
(* CloudDeploy a key-to-length calculator *)
calcAPI = APIFunction[
  {"key" -> "String"},
  Module[{f},
    f = <| "A3"->220.0, "Bb3"->233.08, "B3"->246.94,
           "C4"->261.63, "D4"->293.66, "E4"->329.63 |>[#key];
    bodyLengthEst[f, 0.472*0.0254, 3.9*0.0254]
  ] &, "JSON"
];
(* CloudDeploy[calcAPI, CloudObject["duduk-key-to-length"]] *)
*)

Print["=== Wolfram starter loaded. ==="];
Print["Sections with (*...*) require Wolfram Desktop to run interactively."];
Print["All acoustic predictions are EMPIRICAL ESTIMATES — validate by physical build."];
