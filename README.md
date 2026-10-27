# Emergentology

<!-- ENUMINOUS-UNIFIED-NAV:START -->
## Repository navigation

**eNuminous network:** [All public repositories](https://github.com/enuminous/EFMW/blob/main/REPOSITORY_NAVIGATION.md) · [EFMW](https://github.com/enuminous/EFMW) · [102 equations](https://github.com/enuminous/Monolithic_102_EFMW) · [Frozen Lean](https://github.com/enuminous/Monolithic-102-Zoo-Lean4) · [Zoo](https://github.com/enuminous/Tortoise) · [Papers](https://github.com/enuminous/papers) · [Quantum geometry](https://github.com/enuminous/Base888-Quantum-Geometry)

**This project:** [Repository home](https://github.com/enuminous/Emergentology) · [Subject index](https://github.com/enuminous/EFMW/blob/main/REPOSITORY_NAVIGATION.md#papers-publications-and-creative-work) · [Published site](https://enuminous.github.io/Emergentology/) · [Web application](index.html)

<details open>
<summary><strong>On this page</strong></summary>

- [Core correction](#core-correction)
- [Contents](#contents)
- [Build](#build)


</details>

**Related repositories:** [aok](https://github.com/enuminous/aok) · [Universal-Cognitive-Attractor](https://github.com/enuminous/Universal-Cognitive-Attractor) · [papers](https://github.com/enuminous/papers) · [Alchemy-of-Emergence](https://github.com/enuminous/Alchemy-of-Emergence) · [EFMW](https://github.com/enuminous/EFMW)

> **Evidence boundary:** A link between projects is navigation, not an assertion of proven equivalence, experimental validation, or shared authorship. See each repository’s own status and review notes.
<!-- ENUMINOUS-UNIFIED-NAV:END -->


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
