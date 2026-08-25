import Mathlib

/-!
# Comparator challenge

The challenge is to prove that there is a threshold above which every solution to the Markoff
equation modulo a prime `p` lifts to a solution over the natural numbers. The solution supplies
an explicit threshold.
-/

namespace Challenge

abbrev MarkoffNat :=
  {⟨x, y, z⟩ : ℕ × ℕ × ℕ | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev MarkoffModp (p : ℕ) :=
  {⟨x, y, z⟩ : ZMod p × ZMod p × ZMod p | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev markoffNatToModp (p : ℕ) : MarkoffNat → MarkoffModp p :=
  fun ⟨⟨x, y, z⟩, h⟩ ↦ ⟨⟨x, y, z⟩, by simpa using congrArg (fun n : ℕ ↦ (n : ZMod p)) h⟩

theorem markoff_reduction_surjective_of_large_prime :
    ∃ p₀ : ℕ, ∀ (p : ℕ), p.Prime → p₀ ≤ p →
      Function.Surjective (markoffNatToModp p) := by
  sorry

end Challenge
