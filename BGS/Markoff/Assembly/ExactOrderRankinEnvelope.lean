import BGS.Markoff.Assembly.ExactOrderEulerSevenComplementObstruction
import BGS.NumberTheory.RankinProfileCertificate
import BGS.NumberTheory.TruncatedOrderTotientRankinFactorization

/-!
# Exact-order Rankin envelope for the Markoff obstruction

This file combines the new exact-order obstruction with the rational Rankin
Euler product.  The deliberately coarse first endpoint uses the total numbers
of divisors of `p - 1` and `p + 1`; the already formalized Sperner width can
replace this envelope later without changing the Rankin layer.
-/

namespace BGS.Markoff

open BGS.NumberTheory

/-- Coarse joint envelope for the two sets of maximal candidate orders. -/
def jointDivisorCount (p : ℕ) : ℕ :=
  (p - 1).divisors.card + (p + 1).divisors.card

/-- Exact rational Euler-product envelope for the two neighboring torus
orders. -/
def jointRankinEulerProduct
    (p : ℕ) (primeWeight : ℕ → ℚ) : ℚ :=
  ((p - 1).factorization.prod fun prime exponent =>
      rankinPrimePowerFactor prime exponent (primeWeight prime)) +
    ((p + 1).factorization.prod fun prime exponent =>
      rankinPrimePowerFactor prime exponent (primeWeight prime))

theorem middleGameMaximalOrders_card_le_jointDivisorCount
    (p bound : ℕ) :
    (middleGameMaximalOrders p bound).card ≤ jointDivisorCount p := by
  calc
    (middleGameMaximalOrders p bound).card ≤
        (maximalDivisorsBelow (p - 1) (bound + 1)).card +
          (maximalDivisorsBelow (p + 1) (bound + 1)).card :=
      middleGameMaximalOrders_card_le p bound
    _ ≤ (p - 1).divisors.card + (p + 1).divisors.card :=
      Nat.add_le_add
        (maximalDivisorsBelow_card_le_card_divisors _ _)
        (maximalDivisorsBelow_card_le_card_divisors _ _)
    _ = jointDivisorCount p := rfl

/-- The Euler-seven common witness is bounded using only the two complete
divisor counts. -/
theorem bound_le_jointDivisorCube
    {p bound : ℕ}
    (hbound :
      bound ≤ 189 * (middleGameMaximalOrders p bound).card ^ 3) :
    bound ≤ 189 * (jointDivisorCount p) ^ 3 := by
  exact hbound.trans (by
    gcongr
    exact middleGameMaximalOrders_card_le_jointDivisorCount p bound)

theorem combinedTruncatedOrderTotientSum_cast_le_jointFactorizationRankin
    (p bound : ℕ) (hp : 1 < p)
    (primeWeight : ℕ → ℚ) (cap : ℚ)
    (hprimeWeightNonneg : ∀ prime, 0 ≤ primeWeight prime)
    (hprimeWeightPower :
      ∀ prime : ℕ, prime.Prime →
        1 ≤ (prime : ℚ) * (primeWeight prime) ^ 12)
    (hcapNonneg : 0 ≤ cap)
    (hboundCap : (bound : ℚ) ≤ cap ^ 12) :
    (combinedTruncatedOrderTotientSum p bound : ℚ) ≤
      (bound : ℚ) * cap * jointRankinEulerProduct p primeWeight := by
  have hminusNe : p - 1 ≠ 0 := by omega
  have hplusNe : p + 1 ≠ 0 := by omega
  rw [combinedTruncatedOrderTotientSum, Nat.cast_add]
  calc
    (truncatedOrderTotientSum (p - 1) bound : ℚ) +
        (truncatedOrderTotientSum (p + 1) bound : ℚ) ≤
      ((bound : ℚ) * cap *
        ((p - 1).factorization.prod fun prime exponent =>
          rankinPrimePowerFactor prime exponent (primeWeight prime))) +
      ((bound : ℚ) * cap *
        ((p + 1).factorization.prod fun prime exponent =>
          rankinPrimePowerFactor prime exponent (primeWeight prime))) :=
      add_le_add
        (truncatedOrderTotientSum_cast_le_factorizationRankin
          (p - 1) bound primeWeight cap hprimeWeightNonneg
          hprimeWeightPower hcapNonneg hboundCap hminusNe)
        (truncatedOrderTotientSum_cast_le_factorizationRankin
          (p + 1) bound primeWeight cap hprimeWeightNonneg
          hprimeWeightPower hcapNonneg hboundCap hplusNe)
    _ = (bound : ℚ) * cap *
        jointRankinEulerProduct p primeWeight := by
      simp only [jointRankinEulerProduct]
      ring

theorem jointRankinEulerProduct_nonneg
    (p : ℕ) (hp : 1 < p)
    (primeWeight : ℕ → ℚ)
    (hprimeWeightNonneg : ∀ prime, 0 ≤ primeWeight prime) :
    0 ≤ jointRankinEulerProduct p primeWeight := by
  have hminusNe : p - 1 ≠ 0 := by omega
  have hplusNe : p + 1 ≠ 0 := by omega
  exact add_nonneg
    (factorizationEulerProduct_nonneg
      (p - 1) hminusNe primeWeight hprimeWeightNonneg)
    (factorizationEulerProduct_nonneg
      (p + 1) hplusNe primeWeight hprimeWeightNonneg)

/-- The exact-order obstruction, a natural cap `D` for its witness, and a
rational twelfth-root cap force one closed rational square inequality. -/
theorem eight_mul_prime_cast_le_jointRankinSquare
    {p bound D : ℕ}
    (hp : 1 < p)
    (hroot :
      8 * p ≤ (combinedTruncatedOrderTotientSum p bound) ^ 2)
    (hbound : bound ≤ D)
    (primeWeight : ℕ → ℚ) (cap : ℚ)
    (hprimeWeightNonneg : ∀ prime, 0 ≤ primeWeight prime)
    (hprimeWeightPower :
      ∀ prime : ℕ, prime.Prime →
        1 ≤ (prime : ℚ) * (primeWeight prime) ^ 12)
    (hcapNonneg : 0 ≤ cap)
    (hDCap : (D : ℚ) ≤ cap ^ 12) :
    (8 * p : ℚ) ≤
      ((D : ℚ) * cap * jointRankinEulerProduct p primeWeight) ^ 2 := by
  have hboundCast : (bound : ℚ) ≤ D := by
    exact_mod_cast hbound
  have hboundCap : (bound : ℚ) ≤ cap ^ 12 := by
    exact hboundCast.trans hDCap
  have hRankin :=
    combinedTruncatedOrderTotientSum_cast_le_jointFactorizationRankin
      p bound hp primeWeight cap hprimeWeightNonneg
      hprimeWeightPower hcapNonneg hboundCap
  have hEulerNonneg :=
    jointRankinEulerProduct_nonneg p hp primeWeight
      hprimeWeightNonneg
  have hUpper :
      (combinedTruncatedOrderTotientSum p bound : ℚ) ≤
        (D : ℚ) * cap * jointRankinEulerProduct p primeWeight := by
    calc
      (combinedTruncatedOrderTotientSum p bound : ℚ) ≤
          (bound : ℚ) * cap *
            jointRankinEulerProduct p primeWeight := hRankin
      _ ≤ (D : ℚ) * cap *
            jointRankinEulerProduct p primeWeight := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_right hboundCast hcapNonneg)
          hEulerNonneg
  have hrootCast :
      (8 * p : ℚ) ≤
        (combinedTruncatedOrderTotientSum p bound : ℚ) ^ 2 := by
    exact_mod_cast hroot
  have hcombinedNonneg :
      (0 : ℚ) ≤ combinedTruncatedOrderTotientSum p bound := by
    positivity
  have hrightNonneg :
      (0 : ℚ) ≤
        (D : ℚ) * cap * jointRankinEulerProduct p primeWeight := by
    positivity
  exact hrootCast.trans
    ((sq_le_sq₀ hcombinedNonneg hrightNonneg).2 hUpper)

/-- Soundness boundary for one complete factorization profile.  Coverage is
kept separate: this theorem only assumes the two semantic majorizations that
a later canonical-profile theorem must provide. -/
theorem prime_le_of_rankinNeighborProfile_closes
    {p bound cutoff : ℕ}
    (hp : 1 < p)
    (hroot :
      8 * p ≤ (combinedTruncatedOrderTotientSum p bound) ^ 2)
    (hboundWitness :
      bound ≤ 189 * (middleGameMaximalOrders p bound).card ^ 3)
    (profile : RankinNeighborProfile)
    (hprofile : profile.Valid)
    (hcloses : profile.ClosesCutoff cutoff)
    (primeWeight : ℕ → ℚ)
    (hprimeWeightNonneg : ∀ prime, 0 ≤ primeWeight prime)
    (hprimeWeightPower :
      ∀ prime : ℕ, prime.Prime →
        1 ≤ (prime : ℚ) * (primeWeight prime) ^ 12)
    (hdivisorCount :
      jointDivisorCount p ≤ profile.jointDivisorCount)
    (hEuler :
      jointRankinEulerProduct p primeWeight ≤
        profile.jointCoarseEulerProduct) :
    p ≤ cutoff := by
  rcases hprofile with
    ⟨htwo, htwoWeight, htwoFloor, hodd,
      hfloors, hrootCapPos, hwitnessCap⟩
  have hboundJoint :=
    bound_le_jointDivisorCube hboundWitness
  have hboundProfile : bound ≤ profile.witnessCap := by
    exact hboundJoint.trans (by
      simp only [RankinNeighborProfile.witnessCap]
      gcongr)
  have hrootCapNonneg : (0 : ℚ) ≤ profile.rootCap := by
    positivity
  have hwitnessCapCast :
      (profile.witnessCap : ℚ) ≤ (profile.rootCap : ℚ) ^ 12 := by
    exact_mod_cast hwitnessCap
  have hfailure :=
    eight_mul_prime_cast_le_jointRankinSquare
      hp hroot hboundProfile primeWeight profile.rootCap
      hprimeWeightNonneg hprimeWeightPower hrootCapNonneg
      hwitnessCapCast
  have hEulerActualNonneg :=
    jointRankinEulerProduct_nonneg p hp primeWeight
      hprimeWeightNonneg
  have hEulerProfileNonneg :
      (0 : ℚ) ≤ profile.jointCoarseEulerProduct :=
    hEulerActualNonneg.trans hEuler
  have hscaleNonneg :
      (0 : ℚ) ≤ (profile.witnessCap : ℚ) * profile.rootCap := by
    positivity
  have hupper :
      (profile.witnessCap : ℚ) * profile.rootCap *
          jointRankinEulerProduct p primeWeight ≤
        (profile.witnessCap : ℚ) * profile.rootCap *
          profile.jointCoarseEulerProduct :=
    mul_le_mul_of_nonneg_left hEuler hscaleNonneg
  have hleftNonneg :
      (0 : ℚ) ≤
        (profile.witnessCap : ℚ) * profile.rootCap *
          jointRankinEulerProduct p primeWeight := by
    positivity
  have hrightNonneg :
      (0 : ℚ) ≤
        (profile.witnessCap : ℚ) * profile.rootCap *
          profile.jointCoarseEulerProduct := by
    positivity
  have hprofileSquare :
      (8 * p : ℚ) ≤
        ((profile.witnessCap : ℚ) * profile.rootCap *
          profile.jointCoarseEulerProduct) ^ 2 :=
    hfailure.trans ((sq_le_sq₀ hleftNonneg hrightNonneg).2 hupper)
  by_contra hnot
  have hcutoffSucc : cutoff + 1 ≤ p := by omega
  have hcutoffCast :
      (8 * (cutoff + 1) : ℚ) ≤ (8 * p : ℚ) := by
    exact_mod_cast Nat.mul_le_mul_left 8 hcutoffSucc
  have hclosesCast :
      ((profile.witnessCap : ℚ) * profile.rootCap *
        profile.jointCoarseEulerProduct) ^ 2 <
          (8 * (cutoff + 1) : ℚ) := by
    simpa only [RankinNeighborProfile.ClosesCutoff,
      Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat,
      Nat.cast_one] using hcloses
  exact (not_lt_of_ge (hcutoffCast.trans hprofileSquare)) hclosesCast

end BGS.Markoff
