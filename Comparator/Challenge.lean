import Mathlib

/-!
# Standalone Comparator challenge

The challenge defines the Markoff surface and asks for one surjectivity theorem.
-/

open CategoryTheory

namespace BGS

def Markoff : CommSemiRingCat ⥤ Type where
  obj R := {⟨x, y, z⟩ : R × R × R | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}
  map f := ↾fun ⟨⟨x, y, z⟩, h⟩ ↦ ⟨⟨f.hom x, f.hom y, f.hom z⟩, by
    simpa only [Set.mem_setOf_eq, map_add, map_pow, map_mul, map_ofNat] using congrArg f.hom h⟩

theorem Markoff.reduction_surjective_of_explicitBound :
    let p₀ := 2 ^ 9 * (48 ^ 3 + 1) ^ 18 * (2 ^ 9 * (9 ^ 9) ^ (2 ^ 9)) ^ 8 + 1
    ∀ (p : ℕ), p.Prime → p₀ ≤ p →
      Function.Surjective
        (Markoff.map (CommSemiRingCat.ofHom (Nat.castRingHom (ZMod p)))) := by
  sorry

end BGS
