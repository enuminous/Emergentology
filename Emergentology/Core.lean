import Mathlib

namespace Emergentology

noncomputable section

/-- A discrete dynamical system. -/
structure System (State : Type*) where
  step : State → State

/-- Fixed point of the update map. -/
def IsFixedPoint {State : Type*} (sys : System State) (a : State) : Prop :=
  sys.step a = a

/-- A set is forward invariant when one update keeps every member inside. -/
def ForwardInvariant {State : Type*} (sys : System State) (A : Set State) : Prop :=
  ∀ x, x ∈ A → sys.step x ∈ A

theorem fixed_point_stays {State : Type*} (sys : System State)
    (a : State) (h : IsFixedPoint sys a) :
    ∀ n : ℕ, Function.iterate sys.step n a = a := by
  intro n
  induction n with
  | zero => rfl
  | succ n ih =>
      rw [Function.iterate_succ_apply, ih]
      exact h

/-- A minimal discrete emergence observation. -/
structure EmergenceStep where
  coherenceGain : ℝ
  attractorGain : ℝ
  entropyCost : ℝ
  recursionGain : ℝ

/-- Wright Emergence Functional in discrete form. -/
def WrightEmergence
    (alphaC alphaA alphaS alphaR : ℝ)
    (e : EmergenceStep) : ℝ :=
  alphaC * e.coherenceGain
  + alphaA * e.attractorGain
  - alphaS * e.entropyCost
  + alphaR * e.recursionGain

theorem wright_zero_weights (e : EmergenceStep) :
    WrightEmergence 0 0 0 0 e = 0 := by
  simp [WrightEmergence]

theorem wright_additive_in_coherence
    (aC aA aS aR : ℝ) (e : EmergenceStep) (δ : ℝ) :
    WrightEmergence aC aA aS aR
      { e with coherenceGain := e.coherenceGain + δ }
    =
    WrightEmergence aC aA aS aR e + aC * δ := by
  simp [WrightEmergence]
  ring

theorem wright_entropy_penalty
    (aC aA aS aR : ℝ) (e : EmergenceStep) (δ : ℝ) :
    WrightEmergence aC aA aS aR
      { e with entropyCost := e.entropyCost + δ }
    =
    WrightEmergence aC aA aS aR e - aS * δ := by
  simp [WrightEmergence]
  ring

/-- Threshold predicate: a score is above the chosen emergence threshold. -/
def AboveThreshold (W W0 : ℝ) : Prop := W ≥ W0

theorem above_threshold_mono {W W0 W1 : ℝ}
    (h : AboveThreshold W W0) (h01 : W1 ≤ W0) :
    AboveThreshold W W1 := by
  exact le_trans h01 h

end

end Emergentology
