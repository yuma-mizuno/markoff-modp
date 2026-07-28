import Mathlib

/-!
# Comparator challenge

The challenge is to prove that every solution to the Markoff equation modulo a sufficiently
large prime `p` lifts to a solution over the natural numbers.
-/

namespace Challenge

abbrev MarkoffNat :=
  {⟨x, y, z⟩ : ℕ × ℕ × ℕ | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev MarkoffModp (p : ℕ) :=
  {⟨x, y, z⟩ : ZMod p × ZMod p × ZMod p | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev markoffNatToModp (p : ℕ) : MarkoffNat → MarkoffModp p :=
  fun ⟨⟨x, y, z⟩, h⟩ ↦ ⟨⟨x, y, z⟩, by simpa using congrArg (fun n : ℕ ↦ (n : ZMod p)) h⟩

theorem markoff_reduction_surjective_of_large_prime :
    let p₀ := 35721 ^ 5 * 2 ^ 1547 * 32769 ^ 2 + 1
    ∀ (p : ℕ), p.Prime → p₀ ≤ p → Function.Surjective (markoffNatToModp p) := by
  sorry

end Challenge
