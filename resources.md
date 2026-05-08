# Resources and Provenance — Duduk Family

**v4.3** | 2026-05-08

This document records the sources, cultural context, and provenance notes for the duduk design packet. It is required reading before making any part of this repository public.

---

## Cultural and Heritage Context

### Armenian Duduk (*tsiranapogh*)

The duduk — also written *dooduk* or *doodel* — is an Armenian double-reed aerophone with origins in the Armenian highlands. The name *tsiranapogh* translates literally as "apricot pipe" (*tsiran* = apricot, *pogh* = pipe/tube), reflecting the traditional material.

**UNESCO Recognition:** The "Armenian duduk and its music" was proclaimed a UNESCO Masterpiece of the Oral and Intangible Heritage of Humanity in 2005, and inscribed on the Representative List of the Intangible Cultural Heritage of Humanity in 2008.

The duduk is central to Armenian ceremonial, ritual, and expressive music. It is traditionally played in pairs — a solo *dudukahay* (duduk player) carries the melody while a second player sustains a drone. The sound is considered uniquely expressive of Armenian identity and is used at weddings, funerals, and religious ceremonies.

This packet documents the instrument's geometry for workshop study. **It is not a substitute for learning from a traditional Armenian musician or instrument maker.** The cultural knowledge embedded in traditional duduk-making — reed selection, reed-making by hand, tuning to the specific reed, and performance technique — is not captured here and cannot be derived from engineering documentation alone.

### Turkish Mey

The mey (also *balaban* in some Turkish regions) is the Turkish equivalent of the duduk, with a similar cylindrical bore and double reed. It is played widely in Anatolia, particularly in northeastern Turkey where Armenian and Turkish musical traditions historically overlapped. The mey has a slightly larger bore than the Armenian duduk (for comparable keys) and is described as brighter and more nasal in tone. It is a living performance tradition with active practitioners.

**Attribution note:** The mey and duduk share historical roots but have evolved as distinct cultural instruments within their respective traditions. They should not be conflated in public-facing text.

### Azerbaijani Balaban

The *balaban* (also spelled *bülbül* in some regions) is the Azerbaijani double-reed aerophone of the same family. It is widely used in Azerbaijani folk and classical mugham music. The Azerbaijani instrument uses mulberry wood and is associated with a penetrating, reedy tone quality. The name *balaban* is shared across multiple Turkic and Iranian traditions with related but distinct instruments.

**Attribution note:** The Armenian duduk, Turkish mey, and Azerbaijani balaban are distinct instruments within distinct living cultural traditions. Their shared physical form does not imply shared cultural identity.

### Georgian Duduki

The Georgian duduki is closely related to the Armenian duduk and is part of Georgian folk music traditions. It typically has a slightly narrower bore than the Armenian instrument. Georgian duduki music is an important part of Georgian polyphonic singing traditions, which are themselves UNESCO recognized.

---

## Organological Sources

The following sources informed the design table and physics documentation. Verify current availability; web sources change over time.

1. **Dournon, Geneviève.** "Hornbostel-Sachs Classification of Musical Instruments." *Galpin Society Journal* 34 (1981). (Classification reference — aerophone taxonomy.)

2. **Tsurtsumia, Rusudan, and Jordania, Joseph (eds.).** *Echoes from Georgia: Seventeen Arguments on Georgian Polyphony.* Nova Science Publishers, 2011. (Georgian context.)

3. **Petrova, Petya.** Various Armenian music and duduk resources published by the Armenian Musical Council and International Council for Traditional Music.

4. **UCLA Ethnomusicology Archive** — holdings on Armenian music and instrument documentation. (Reference for organological dimensions; specific accession numbers TBD.)

5. **Duduk.com and Armenian music retailer catalogs** — practical reed and instrument dimensions cross-referenced against design table.

6. **Coltman, J.W.** "Acoustics of the flute." *Physics Today* 21, no. 11 (1968). (Stopped-pipe acoustic model basis.)

7. **Fletcher, Neville H., and Rossing, Thomas D.** *The Physics of Musical Instruments.* 2nd ed. Springer, 1998. (Chapters on reed instruments and closed-pipe acoustics.)

> **Note:** The hole-position estimates in this packet are derived from simplified acoustic formulas, not from measured traditional instruments. They should not be cited as documentation of traditional duduk geometry.

---

## Design Scope Statement

**What this packet covers:**

- Engineering geometry (bore dimensions, body length estimates, hole schedule estimates) suitable for workshop fabrication and study.
- Acoustic physics of the stopped cylindrical pipe as an approximation of the duduk.
- Regional variant comparison across four closely related instrument families.
- Bill of materials and sourcing guidance for workshop construction.

**What this packet does NOT cover:**

- Traditional reed-making (a craft skill passed orally; requires years of practice).
- Performance practice, tuning to maqam/modal scales, vibrato, or ornamentation.
- The cultural, ceremonial, or spiritual significance of the instrument in its communities of origin.
- Historical or ethnomusicological accuracy of dimensions (all dimensions are first estimates from published sources and the stopped-pipe model; not derived from measured traditional instruments).
- Any claim that a workshop-fabricated instrument will sound like or be equivalent to an instrument made by a traditional Armenian craftsperson.

---

## Recommended Further Study

- Seek out a traditional Armenian duduk player or teacher for playing instruction.
- The Yerevan Conservatory and Armenian Cultural Associations in North America and Europe may have resources.
- Listen to master duduk players: Djivan Gasparyan is the most internationally known. His recordings document the full expressive range of the instrument.
- The *Songs of the Universe* and *I Will Not Be Sad in This World* albums (Djivan Gasparyan, ECM Records) are excellent reference recordings.

---

## Public-Release Checklist

Before making this repository public:

- [ ] Physical instrument has been built and measured (`validation.csv` complete)
- [ ] `risks.md` RISK-CU-01 and RISK-CU-02 have been addressed
- [ ] Provenance notes in README, `design.md`, and `site/index.html` have been reviewed
- [ ] At least one person with knowledge of Armenian musical traditions has reviewed the public-facing text for accuracy and appropriate framing
- [ ] No document claims tonal equivalence with traditional instruments
- [ ] All acoustic predictions are marked EMPIRICAL with measured values replacing estimates

**Current status: PRIVATE — pending physical build and cultural review.**
