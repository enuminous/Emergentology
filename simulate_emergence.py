#!/usr/bin/env python3
import math

# Toy recursive contraction model.
target = 1.0
x = -2.0
coherence = 0.1
alphaC, alphaA, alphaS, alphaR = 1.0, 1.0, 0.2, 0.1
entropy_cost = 0.05
recursion_gain = 0.15
strength = 0.30

print("Toy Emergentology simulation")
print("step,x,coherence,W_E")

for n in range(12):
    d0 = abs(x - target)
    x_next = x + strength * (target - x)
    d1 = abs(x_next - target)

    coherence_next = coherence + 0.08 * (1.0 - coherence)
    coherence_gain = coherence_next - coherence

    attractor_gain = math.log(d0 / d1) if d0 > 0 and d1 > 0 else 0.0

    W = (
        alphaC * coherence_gain
        + alphaA * attractor_gain
        - alphaS * entropy_cost
        + alphaR * recursion_gain
    )

    print(f"{n},{x_next:.6f},{coherence_next:.6f},{W:.6f}")
    x, coherence = x_next, coherence_next
