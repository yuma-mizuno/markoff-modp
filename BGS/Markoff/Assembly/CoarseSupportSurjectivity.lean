import BGS.Markoff.Assembly.EulerSevenCoarseSupportFrontier
import BGS.Markoff.PreliminaryNumerics

/-!
# Certificate-free coarse-support surjectivity

The Euler-seven complement argument reduces the last global obstruction to
`35721 * S^4 < 8 * p`.  Taking `S` to be the square of the simultaneous
divisor count and combining this obstruction with the elementary tenth moment
gives an unconditional cutoff without a divisor table.
-/

namespace BGS.Markoff

open BGS.NumberTheory

/-- The exact open cutoff supplied by the Euler-seven obstruction and the
elementary simultaneous tenth moment. -/
def coarseSupportStrongApproximationOpenCutoff : ℕ :=
  35721 ^ 5 * 2 ^ 1813

/-- Closed version of `coarseSupportStrongApproximationOpenCutoff`. -/
def coarseSupportStrongApproximationCutoff : ℕ :=
  coarseSupportStrongApproximationOpenCutoff + 1

/-- The elementary tenth moment rules out the final Euler-seven cubic
obstruction above the exact coarse-support cutoff. -/
theorem preliminary_35721_mul_divisorSum_pow_eight_lt
    {p : ℕ} (hp : coarseSupportStrongApproximationOpenCutoff < p) :
    35721 * ((p - 1).divisors.card + (p + 1).divisors.card) ^ 8 < 8 * p := by
  let T := (p - 1).divisors.card + (p + 1).divisors.card
  have hcutoffPos : 0 < coarseSupportStrongApproximationOpenCutoff := by
    simp [coarseSupportStrongApproximationOpenCutoff]
  have hpPos : 0 < p := hcutoffPos.trans hp
  have hpTwo : 2 ≤ p := by omega
  have hmoment : T ^ 10 ≤ 2 ^ 457 * p := by
    simpa [T, preliminaryDivisorMomentConstant] using
      preliminary_divisor_sum_pow_ten_le hpTwo
  by_contra hnot
  have hbad : 8 * p ≤ 35721 * T ^ 8 := by
    exact Nat.le_of_not_gt (by simpa [T] using hnot)
  have hbadPow : (8 * p) ^ 5 ≤ (35721 * T ^ 8) ^ 5 :=
    Nat.pow_le_pow_left hbad 5
  have hmomentPow : (T ^ 10) ^ 4 ≤ (2 ^ 457 * p) ^ 4 :=
    Nat.pow_le_pow_left hmoment 4
  have hcombined :
      2 ^ 15 * p ^ 5 ≤ 35721 ^ 5 * 2 ^ 1828 * p ^ 4 := by
    calc
      2 ^ 15 * p ^ 5 = (8 * p) ^ 5 := by ring
      _ ≤ (35721 * T ^ 8) ^ 5 := hbadPow
      _ = 35721 ^ 5 * (T ^ 10) ^ 4 := by ring
      _ ≤ 35721 ^ 5 * (2 ^ 457 * p) ^ 4 :=
        Nat.mul_le_mul_left _ hmomentPow
      _ = 35721 ^ 5 * 2 ^ 1828 * p ^ 4 := by
        rw [show (1828 : ℕ) = 457 * 4 by norm_num, pow_mul]
        ring
  have hcombined' :
      (2 ^ 15 * p) * p ^ 4 ≤
        (35721 ^ 5 * 2 ^ 1828) * p ^ 4 := by
    simpa only [show p ^ 5 = p * p ^ 4 by ring, Nat.mul_assoc] using hcombined
  have hcancel : 2 ^ 15 * p ≤ 35721 ^ 5 * 2 ^ 1828 :=
    Nat.le_of_mul_le_mul_right hcombined' (pow_pos hpPos 4)
  have hfactor :
      35721 ^ 5 * 2 ^ 1828 =
        2 ^ 15 * coarseSupportStrongApproximationOpenCutoff := by
    simp only [coarseSupportStrongApproximationOpenCutoff]
    rw [show (1828 : ℕ) = 1813 + 15 by norm_num, pow_add]
    ring
  have hcutoffUpper : p ≤ coarseSupportStrongApproximationOpenCutoff := by
    rw [hfactor] at hcancel
    have hcancel' :
        p * 2 ^ 15 ≤ coarseSupportStrongApproximationOpenCutoff * 2 ^ 15 := by
      simpa only [Nat.mul_comm] using hcancel
    exact Nat.le_of_mul_le_mul_right hcancel' (pow_pos (by norm_num) 15)
  exact (Nat.not_le_of_lt hp) hcutoffUpper

/-- Every joint maximal-divisor square count is bounded by the square of the
simultaneous all-divisor count. -/
theorem maximalDivisorCountSum_sq_le_divisorSum_sq
    (p d : ℕ) :
    maximalDivisorCountSum p (d + 1) ^ 2 ≤
      ((p - 1).divisors.card + (p + 1).divisors.card) ^ 2 := by
  apply Nat.pow_le_pow_left
  unfold maximalDivisorCountSum
  exact Nat.add_le_add
    (maximalDivisorsBelow_card_le_card_divisors (p - 1) (d + 1))
    (maximalDivisorsBelow_card_le_card_divisors (p + 1) (d + 1))

/-- The exact cutoff dominates the support-only threshold required by the
coarse endgame and cage arguments. -/
theorem twoPow756_lt_of_coarseSupportOpenCutoff_lt
    {p : ℕ} (hp : coarseSupportStrongApproximationOpenCutoff < p) :
    2 ^ 756 < p := by
  have hexponent : 2 ^ 756 < 2 ^ 1813 :=
    Nat.pow_lt_pow_right (by norm_num) (by norm_num)
  have hcoefficient : 1 ≤ 35721 ^ 5 :=
    Nat.one_le_pow 5 35721 (by norm_num)
  have hmargin : 2 ^ 756 < coarseSupportStrongApproximationOpenCutoff := by
    change 2 ^ 756 < 35721 ^ 5 * 2 ^ 1813
    exact hexponent.trans_le (by
      simpa only [one_mul] using Nat.mul_le_mul_right (2 ^ 1813) hcoefficient)
  exact hmargin.trans hp

/-- Natural Markoff reduction is surjective above the exact certificate-free
coarse-support cutoff. -/
theorem markoffReduction_surjective_of_coarseSupportOpenCutoff
    (p : ℕ) (hpPrime : p.Prime)
    (hp : coarseSupportStrongApproximationOpenCutoff < p) :
    Function.Surjective (markoffReduction p) := by
  letI : Fact p.Prime := ⟨hpPrime⟩
  have hpThree : 3 < p := by
    have hsupport := twoPow756_lt_of_coarseSupportOpenCutoff_lt hp
    omega
  letI : Invertible (3 : ZMod p) :=
    invertibleOfNonzero
      (natCast_ne_zero_zmod_of_pos_of_lt (by norm_num) hpThree)
  let T := (p - 1).divisors.card + (p + 1).divisors.card
  apply markoffReduction_surjective_of_eulerSevenSquareEnvelope_coarseSupport
      p (twoPow756_lt_of_coarseSupportOpenCutoff_lt hp) (fun _ ↦ T ^ 2)
  · intro d
    simpa [T] using maximalDivisorCountSum_sq_le_divisorSum_sq p d
  · intro d
    calc
      35721 * (T ^ 2) ^ 4 = 35721 * T ^ 8 := by ring
      _ < 8 * p := by
        simpa [T] using preliminary_35721_mul_divisorSum_pow_eight_lt hp

/-- Closed-cutoff form used by the public Comparator theorem. -/
theorem markoffReduction_surjective_of_coarseSupportBound
    (p : ℕ) (hpPrime : p.Prime)
    (hp : coarseSupportStrongApproximationCutoff ≤ p) :
    Function.Surjective (markoffReduction p) := by
  apply markoffReduction_surjective_of_coarseSupportOpenCutoff p hpPrime
  simpa [coarseSupportStrongApproximationCutoff] using hp

end BGS.Markoff
