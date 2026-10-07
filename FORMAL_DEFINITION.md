# Formal Definition of Emergentology

Let a dynamical system have state

\[
x_t \in X.
\]

Let \(A \subseteq X\) be a candidate attractor region.

Define:

- \(C(t)\): a coherence or organization functional;
- \(S_{\mathrm{prod}}(t)\): entropy produced by the system and environment model;
- \(d(x_t,A)\): distance from the current state to the attractor;
- \(R(t)\): optional recursive-feedback strength.

## Wright Emergence Functional

A general effective emergence rate is

\[
W_E(t)
=
\alpha_C \dot C(t)
+
\alpha_A
\left(
-\frac{d}{dt}\log d(x_t,A)
\right)
-
\alpha_S \dot S_{\mathrm{prod}}(t)
+
\alpha_R R(t).
\]

The coefficients are model-dependent unless independently derived.

## Attractor contraction rate

\[
W_A(t)
=
-\frac{d}{dt}\log d(x_t,A).
\]

If \(W_A(t)>0\), the state is moving toward the attractor exponentially in the local metric.

## Emergence threshold

Define

\[
W_0
=
\inf\{w:
\Pr(\text{persistent structure}\mid W_E \ge w)\ge p_*
\}.
\]

For a deterministic toy model this simplifies to a critical parameter separating nonpersistent from persistent structure.

## Discrete-time version

For numerical work:

\[
W_E[n]
=
\alpha_C(C_{n+1}-C_n)
+
\alpha_A\log\frac{d_n}{d_{n+1}}
-
\alpha_S\Delta S_{\mathrm{prod}}[n].
\]

This avoids differentiability assumptions and is suitable for AI, cellular automata, coupled maps, and agent systems.
