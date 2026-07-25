import BGS.NumberTheory.PreliminaryDivisorBound
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
# Joint divisor bounds for neighboring even integers

For an odd natural number `p`, the two torus orders `p - 1` and `p + 1`
have gcd exactly two. Consequently their divisor counts are not independent:

`τ(p - 1) τ(p + 1) = 2 τ((p^2 - 1) / 2)`.

Combining this identity with the elementary tenth-moment divisor bound gives
a joint estimate with one copy, rather than two copies, of the prime-factor
penalty. This is the arithmetic input for improving the maximal-divisor
cutoff.
-/

namespace BGS.NumberTheory

private theorem card_divisors_two_mul_of_odd {n : ℕ} (hn : Odd n) :
    (2 * n).divisors.card = 2 * n.divisors.card := by
  have htwo : (2 : ℕ).divisors.card = 2 := by decide
  rw [hn.coprime_two_left.card_divisors_mul]
  rw [htwo]

/-- Exact joint divisor-count identity for the neighboring torus orders. -/
theorem card_divisors_pred_mul_card_divisors_succ_of_odd
    {p : ℕ} (hp : Odd p) :
    (p - 1).divisors.card * (p + 1).divisors.card =
      2 * (((p ^ 2 - 1) / 2).divisors.card) := by
  rcases hp with ⟨k, rfl⟩
  have hcore :
      (((2 * k + 1) ^ 2 - 1) / 2) = 2 * k * (k + 1) := by
    have hsquare :
        (2 * k + 1) ^ 2 = 2 * (2 * k * (k + 1)) + 1 := by ring
    rw [hsquare]
    omega
  have hconsecutive : k.Coprime (k + 1) := by
    rw [Nat.coprime_self_add_right]
    exact Nat.coprime_one_right k
  have hpred : 2 * k + 1 - 1 = 2 * k := by omega
  have hsucc : 2 * k + 1 + 1 = 2 * (k + 1) := by omega
  rcases k.even_or_odd with hkEven | hkOdd
  · have hkSuccOdd : Odd (k + 1) := hkEven.add_one
    have hcoprime : (2 * k).Coprime (k + 1) :=
      hkSuccOdd.coprime_two_left.mul_left hconsecutive
    have hmul := hcoprime.card_divisors_mul
    have htwo := card_divisors_two_mul_of_odd hkSuccOdd
    rw [hcore, hpred, hsucc]
    rw [htwo, hmul]
    ring
  · have hcoprime : k.Coprime (2 * (k + 1)) :=
      hkOdd.coprime_two_right.mul_right hconsecutive
    have hmul := hcoprime.card_divisors_mul
    have htwo := card_divisors_two_mul_of_odd hkOdd
    have hfactor : 2 * k * (k + 1) = k * (2 * (k + 1)) := by ring
    rw [hcore, hpred, hsucc, hfactor]
    rw [htwo, hmul]
    ring

/-- The product of the two neighboring divisor counts has a single
prime-penalty factor in its tenth moment. -/
theorem card_divisors_pred_mul_card_divisors_succ_pow_ten_le
    {p : ℕ} (hp : Odd p) (hpTwo : 2 < p) :
    ((p - 1).divisors.card * (p + 1).divisors.card) ^ 10 ≤
      2 ^ 456 * (p ^ 2 - 1) := by
  let core := (p ^ 2 - 1) / 2
  have hpSq : 9 ≤ p ^ 2 := by nlinarith
  have hcorePos : 0 < core := by
    apply Nat.div_pos
    · omega
    · norm_num
  have hmoment :=
    card_divisors_pow_ten_le_preliminary_constant_mul core hcorePos.ne'
  have htwiceCore : 2 * core = p ^ 2 - 1 := by
    rcases hp with ⟨k, rfl⟩
    dsimp [core]
    have hsquare : (2 * k + 1) ^ 2 = 2 * (2 * k * (k + 1)) + 1 := by ring
    rw [hsquare]
    omega
  have hexponent : 10 + 447 = 456 + 1 := by norm_num
  calc
    ((p - 1).divisors.card * (p + 1).divisors.card) ^ 10 =
        (2 * core.divisors.card) ^ 10 := by
      rw [card_divisors_pred_mul_card_divisors_succ_of_odd hp]
    _ = 2 ^ 10 * core.divisors.card ^ 10 := by rw [mul_pow]
    _ ≤ 2 ^ 10 * (2 ^ 447 * core) := Nat.mul_le_mul_left _ hmoment
    _ = (2 ^ 10 * 2 ^ 447) * core := (Nat.mul_assoc _ _ _).symm
    _ = 2 ^ (10 + 447) * core := by rw [pow_add]
    _ = 2 ^ (456 + 1) * core := by rw [hexponent]
    _ = (2 ^ 456 * 2) * core := by rw [pow_succ]
    _ = 2 ^ 456 * (2 * core) := Nat.mul_assoc _ _ _
    _ = 2 ^ 456 * (p ^ 2 - 1) := by rw [htwiceCore]

/-- If two nonnegative counts are individually at most `C` and their product
is at most `J`, their squared sum is bounded by `C^2 + 3J`. This is the
elementary inequality that replaces the paper's independent `4C^2` bound. -/
theorem add_sq_le_sq_add_three_mul_of_le_of_mul_le
    {a b C J : ℕ} (ha : a ≤ C) (hb : b ≤ C) (hab : a * b ≤ J) :
    (a + b) ^ 2 ≤ C ^ 2 + 3 * J := by
  rcases le_total a b with habOrder | hbaOrder
  · have haSq : a * a ≤ a * b := Nat.mul_le_mul_left a habOrder
    have hbSq : b * b ≤ C * C := Nat.mul_le_mul hb hb
    nlinarith [hab]
  · have hbSq : b * b ≤ a * b := by
      simpa [Nat.mul_comm] using Nat.mul_le_mul_left b hbaOrder
    have haSq : a * a ≤ C * C := Nat.mul_le_mul ha ha
    nlinarith [hab]

/-- Convert a certified tenth-moment envelope into the joint squared-sum
bound used by the improved maximal-divisor algorithm. -/
theorem add_sq_le_sq_add_three_mul_of_pow_ten_envelope
    {a b C J K : ℕ}
    (ha : a ≤ C) (hb : b ≤ C)
    (hmoment : (a * b) ^ 10 ≤ K) (henvelope : K ≤ J ^ 10) :
    (a + b) ^ 2 ≤ C ^ 2 + 3 * J := by
  apply add_sq_le_sq_add_three_mul_of_le_of_mul_le ha hb
  apply (Nat.pow_le_pow_iff_left (by norm_num : 10 ≠ 0)).mp
  exact hmoment.trans henvelope

end BGS.NumberTheory
