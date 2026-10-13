# Emergentology

<!-- ENUMINOUS-NETWORK:START -->
**eNuminous network:** [All repositories](https://enuminous.github.io/EFMW/repositories.html) · [EFMW](https://enuminous.github.io/EFMW/) · [102 equations](https://github.com/enuminous/Monolithic_102_EFMW) · [165 triplets](https://enuminous.github.io/FieldSpace/) · [Zoo](https://enuminous.github.io/Tortoise/) · [Lean](https://enuminous.github.io/Aristotle-102-Monolithic-Lean/) · [Engine](https://enuminous.github.io/Archimedes-Engine/) · [Papers](https://enuminous.github.io/medium/papers-essays-index.html) · [Audit](https://github.com/enuminous/EFMW_Post156_Zoo_Audit/blob/main/portfolio/INTERLOCK_AUDIT.md)

[Repository](https://github.com/enuminous/Emergentology) · [Published page](https://enuminous.github.io/Emergentology/)

<details>
<summary>Recent repositories (9)</summary>

- [Oroboros](https://github.com/enuminous/Oroboros) · [README](https://github.com/enuminous/Oroboros/blob/main/README.md) · [Page](https://enuminous.github.io/Oroboros/)
- [P-NP](https://github.com/enuminous/P-NP) · [README](https://github.com/enuminous/P-NP/blob/main/README.md) · [Page](https://enuminous.github.io/P-NP/)
- [Research-Program](https://github.com/enuminous/Research-Program) · [README](https://github.com/enuminous/Research-Program/blob/main/README.md) · [Page](https://enuminous.github.io/Research-Program/)
- [I-Have-Guts](https://github.com/enuminous/I-Have-Guts) · [README](https://github.com/enuminous/I-Have-Guts/blob/main/README.md) · [Page](https://enuminous.github.io/I-Have-Guts/)
- [Wrights-Law](https://github.com/enuminous/Wrights-Law) · [README](https://github.com/enuminous/Wrights-Law/blob/main/README.md) · [Page](https://enuminous.github.io/Wrights-Law/)
- [Aristotle-eNuminous](https://github.com/enuminous/Aristotle-eNuminous) · [README](https://github.com/enuminous/Aristotle-eNuminous/blob/main/README.md) · [Page](https://enuminous.github.io/Aristotle-eNuminous/)
- [Multiverse-Simulator](https://github.com/enuminous/Multiverse-Simulator) · [README](https://github.com/enuminous/Multiverse-Simulator/blob/main/README.md) · [Page](https://enuminous.github.io/Multiverse-Simulator/)
- [accelerando-8192](https://github.com/enuminous/accelerando-8192) · [README](https://github.com/enuminous/accelerando-8192/blob/main/README.md) · [Page source](https://github.com/enuminous/accelerando-8192/blob/main/docs/index.html)
- [Codex-888](https://github.com/enuminous/Codex-888) · [README](https://github.com/enuminous/Codex-888/blob/main/README.md) · [Page](https://enuminous.github.io/Codex-888/)

</details>

<details>
<summary>Repository indexes (1)</summary>

- [index.html](https://github.com/enuminous/Emergentology/blob/main/index.html) · [Open page](https://enuminous.github.io/Emergentology/index.html)

</details>
<!-- ENUMINOUS-NETWORK:END -->

A research repository for the quantitative study of recursive structure formation, coherence growth, attractor formation, and critical emergence thresholds.

This project reconstructs the June 2025 **Wright Force of Emergence** proposal into a testable and formally bounded framework.

## Core correction

The phrase **Wright Force** is retained historically, but this repository does **not** claim a fifth fundamental physical force.

The primary object is the **Wright Emergence Functional**:

\[
W_E(t)
=
\alpha_C \frac{dC}{dt}
+
\alpha_A\left(-\frac{d}{dt}\log d(x_t,A)\right)
-
\alpha_S \dot S_{prod}.
\]

It measures, within a specified model, the rate at which a system increases coherence, contracts toward an attractor, and pays an entropy-production cost.

## Contents

- `index.html` — public paper/site
- `PAPER.md` — full reconstructed paper
- `FORMAL_DEFINITION.md` — mathematical definitions
- `EXPERIMENT_PROTOCOL.md` — cross-domain test program
- `CLAIMS_BOUNDARY.md` — strict scientific boundary
- `Emergentology/Core.lean` — Lean 4 formalization
- `Emergentology/Main.lean` — theorem export surface
- `simulate_emergence.py` — toy attractor/threshold simulation
- `.github/workflows/lean.yml` — CI

## Build

```bash
lake update
lake build
python simulate_emergence.py
```

Lean proves consequences of the chosen mathematical definitions. It does not prove the existence of a new force of nature.
