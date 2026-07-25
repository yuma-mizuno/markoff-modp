import BGS.NumberTheory.RankinProfileCertificate

/-!
# Side-erased joint Rankin envelopes

The complete profile remembers whether every odd prime power belongs to
`p - 1` or `p + 1`.  Exhaustive certification should not branch over that
binary word.  Multiplying the two side divisor counts, Euler products, and
factorization lower bounds erases the word.  Since both side divisor counts
are at least two and both coarse Euler products are at least one, the sums
appearing in the exact-order obstruction are controlled by these products.

This is the proof-facing arithmetic layer for a substantially smaller finite
profile search.  It contains no generated data and no coverage assumption.
-/

namespace BGS.NumberTheory

namespace RankinNeighborProfile

/-- Side-free product of all odd divisor-lattice lengths. -/
def oddJointDivisorProduct : List RankinOddFactor → ℕ
  | [] => 1
  | factor :: factors =>
      (factor.exponent + 1) * oddJointDivisorProduct factors

/-- Product of the divisor counts of the two neighboring factorizations,
written in a form that does not inspect any side labels. -/
def jointDivisorProduct (profile : RankinNeighborProfile) : ℕ :=
  (profile.minusTwoExponent + 1) *
    (profile.plusTwoExponent + 1) *
      oddJointDivisorProduct profile.oddFactors

/-- Side-free product of all odd coarse Euler factors. -/
def oddJointCoarseEulerProductProduct : List RankinOddFactor → ℚ
  | [] => 1
  | factor :: factors =>
      coarseRankinPrimePowerFactor factor.exponent factor.weightCap.weight *
        oddJointCoarseEulerProductProduct factors

/-- Product of the two coarse Rankin Euler products, again computed without
examining the side labels. -/
def jointCoarseEulerProductProduct
    (profile : RankinNeighborProfile) : ℚ :=
  coarseRankinPrimePowerFactor profile.minusTwoExponent
      profile.twoWeightCap.weight *
    coarseRankinPrimePowerFactor profile.plusTwoExponent
      profile.twoWeightCap.weight *
    oddJointCoarseEulerProductProduct profile.oddFactors

/-- Side-free product of all odd factorization floors. -/
def oddJointLowerNeighborProduct : List RankinOddFactor → ℕ
  | [] => 1
  | factor :: factors =>
      factor.weightCap.lowerPrime ^ factor.exponent *
        oddJointLowerNeighborProduct factors

/-- Product of the two factorization lower bounds. -/
def jointLowerNeighborProduct (profile : RankinNeighborProfile) : ℕ :=
  2 ^ (profile.minusTwoExponent + profile.plusTwoExponent) *
    oddJointLowerNeighborProduct profile.oddFactors

/-- Side-erased witness cap.  The sum of the two divisor counts is at most
their product because each neighboring even integer has at least two
divisors. -/
def jointEnvelopeWitnessCap (profile : RankinNeighborProfile) : ℕ :=
  189 * profile.jointDivisorProduct ^ 3

/-- The extra validity condition for the side-erased envelope. -/
def JointEnvelopeValid (profile : RankinNeighborProfile) : Prop :=
  profile.jointEnvelopeWitnessCap ≤ profile.rootCap ^ 12

/-- Failure square after replacing both side sums by side-erased products. -/
def jointEnvelopeFailureSquare (profile : RankinNeighborProfile) : ℚ :=
  ((profile.jointEnvelopeWitnessCap : ℚ) * profile.rootCap *
    (2 * profile.jointCoarseEulerProductProduct)) ^ 2

def JointEnvelopeClosesCutoff
    (profile : RankinNeighborProfile) (cutoff : ℕ) : Prop :=
  profile.jointEnvelopeFailureSquare < (8 * (cutoff + 1) : ℕ)

def JointEnvelopeExcludesFailure
    (profile : RankinNeighborProfile) : Prop :=
  profile.jointEnvelopeFailureSquare ^ 2 <
    (64 * profile.jointLowerNeighborProduct : ℕ)

def jointEnvelopeValidCheck (profile : RankinNeighborProfile) : Bool :=
  decide (profile.jointEnvelopeWitnessCap ≤ profile.rootCap ^ 12)

def jointEnvelopeClosesCutoffCheck
    (profile : RankinNeighborProfile) (cutoff : ℕ) : Bool :=
  decide
    (profile.jointEnvelopeFailureSquare <
      ((8 * (cutoff + 1) : ℕ) : ℚ))

def jointEnvelopeExcludesFailureCheck
    (profile : RankinNeighborProfile) : Bool :=
  decide
    (profile.jointEnvelopeFailureSquare ^ 2 <
      ((64 * profile.jointLowerNeighborProduct : ℕ) : ℚ))

@[simp] theorem jointEnvelopeValidCheck_eq_true_iff
    (profile : RankinNeighborProfile) :
    profile.jointEnvelopeValidCheck = true ↔
      profile.JointEnvelopeValid := by
  simp [jointEnvelopeValidCheck, JointEnvelopeValid]

@[simp] theorem jointEnvelopeClosesCutoffCheck_eq_true_iff
    (profile : RankinNeighborProfile) (cutoff : ℕ) :
    profile.jointEnvelopeClosesCutoffCheck cutoff = true ↔
      profile.JointEnvelopeClosesCutoff cutoff := by
  simp [jointEnvelopeClosesCutoffCheck, JointEnvelopeClosesCutoff]

@[simp] theorem jointEnvelopeExcludesFailureCheck_eq_true_iff
    (profile : RankinNeighborProfile) :
    profile.jointEnvelopeExcludesFailureCheck = true ↔
      profile.JointEnvelopeExcludesFailure := by
  simp [jointEnvelopeExcludesFailureCheck, JointEnvelopeExcludesFailure]

private theorem oddDivisorCount_pos
    (side : NeighborSide) (factors : List RankinOddFactor) :
    0 < oddDivisorCount side factors := by
  induction factors with
  | nil => simp [oddDivisorCount]
  | cons factor factors ih =>
      simp only [oddDivisorCount]
      split_ifs <;> positivity

private theorem oddDivisorCount_mul_eq_oddJointDivisorProduct
    (factors : List RankinOddFactor) :
    oddDivisorCount .minus factors * oddDivisorCount .plus factors =
      oddJointDivisorProduct factors := by
  induction factors with
  | nil => simp [oddDivisorCount, oddJointDivisorProduct]
  | cons factor factors ih =>
      rcases factor with ⟨side, exponent, weightCap⟩
      cases side <;>
        simp only [oddDivisorCount, oddJointDivisorProduct,
          reduceCtorEq, ↓reduceIte] <;>
        simpa [mul_assoc, mul_left_comm, mul_comm] using
          congrArg (fun value : ℕ => (exponent + 1) * value) ih

theorem jointDivisorProduct_eq_mul
    (profile : RankinNeighborProfile) :
    profile.jointDivisorProduct =
      profile.divisorCount .minus * profile.divisorCount .plus := by
  simp only [jointDivisorProduct, divisorCount, twoExponent]
  rw [← oddDivisorCount_mul_eq_oddJointDivisorProduct]
  ring

theorem two_le_divisorCount_of_shape
    (profile : RankinNeighborProfile)
    (hshape :
      (profile.minusTwoExponent = 1 ∧
          2 ≤ profile.plusTwoExponent) ∨
        (profile.plusTwoExponent = 1 ∧
          2 ≤ profile.minusTwoExponent))
    (side : NeighborSide) :
    2 ≤ profile.divisorCount side := by
  have htwo : 1 ≤ profile.twoExponent side := by
    rcases hshape with hshape | hshape
    · cases side with
      | minus => simp [twoExponent, hshape.1]
      | plus => simp [twoExponent]; omega
    · cases side with
      | minus => simp [twoExponent]; omega
      | plus => simp [twoExponent, hshape.1]
  simp only [divisorCount]
  have hodd : 0 < oddDivisorCount side profile.oddFactors :=
    oddDivisorCount_pos side profile.oddFactors
  nlinarith

theorem two_le_divisorCount_of_valid
    (profile : RankinNeighborProfile) (hprofile : profile.Valid)
    (side : NeighborSide) :
    2 ≤ profile.divisorCount side :=
  profile.two_le_divisorCount_of_shape hprofile.1 side

/-- The side divisor-count sum is bounded by the side-erased product. -/
theorem jointDivisorCount_le_jointDivisorProduct
    (profile : RankinNeighborProfile) (hprofile : profile.Valid) :
    profile.jointDivisorCount ≤ profile.jointDivisorProduct := by
  rw [profile.jointDivisorProduct_eq_mul]
  exact Nat.add_le_mul
    (profile.two_le_divisorCount_of_valid hprofile .minus)
    (profile.two_le_divisorCount_of_valid hprofile .plus)

theorem jointDivisorCount_le_jointDivisorProduct_of_shape
    (profile : RankinNeighborProfile)
    (hshape :
      (profile.minusTwoExponent = 1 ∧
          2 ≤ profile.plusTwoExponent) ∨
        (profile.plusTwoExponent = 1 ∧
          2 ≤ profile.minusTwoExponent)) :
    profile.jointDivisorCount ≤ profile.jointDivisorProduct := by
  rw [profile.jointDivisorProduct_eq_mul]
  exact Nat.add_le_mul
    (profile.two_le_divisorCount_of_shape hshape .minus)
    (profile.two_le_divisorCount_of_shape hshape .plus)

theorem witnessCap_le_jointEnvelopeWitnessCap_of_shape
    (profile : RankinNeighborProfile)
    (hshape :
      (profile.minusTwoExponent = 1 ∧
          2 ≤ profile.plusTwoExponent) ∨
        (profile.plusTwoExponent = 1 ∧
          2 ≤ profile.minusTwoExponent)) :
    profile.witnessCap ≤ profile.jointEnvelopeWitnessCap := by
  simp only [witnessCap, jointEnvelopeWitnessCap]
  exact Nat.mul_le_mul_left 189
    (Nat.pow_le_pow_left
      (profile.jointDivisorCount_le_jointDivisorProduct_of_shape hshape) 3)

private theorem one_le_oddCoarseEulerProduct
    (side : NeighborSide) (factors : List RankinOddFactor) :
    1 ≤ oddCoarseEulerProduct side factors := by
  induction factors with
  | nil => simp [oddCoarseEulerProduct]
  | cons factor factors ih =>
      simp only [oddCoarseEulerProduct]
      split_ifs with hside
      · have hlocal :
            (1 : ℚ) ≤ coarseRankinPrimePowerFactor factor.exponent
              factor.weightCap.weight := by
          simp only [coarseRankinPrimePowerFactor]
          exact le_add_of_nonneg_right
            (Finset.sum_nonneg fun index _ =>
              pow_nonneg factor.weightCap.weight_nonneg (index + 1))
        exact one_le_mul_of_one_le_of_one_le hlocal ih
      · simpa using ih

theorem one_le_coarseEulerProduct
    (profile : RankinNeighborProfile) (side : NeighborSide) :
    1 ≤ profile.coarseEulerProduct side := by
  simp only [coarseEulerProduct]
  have htwo :
      (1 : ℚ) ≤ coarseRankinPrimePowerFactor
        (profile.twoExponent side) profile.twoWeightCap.weight := by
    simp only [coarseRankinPrimePowerFactor]
    exact le_add_of_nonneg_right
      (Finset.sum_nonneg fun index _ =>
        pow_nonneg profile.twoWeightCap.weight_nonneg (index + 1))
  exact one_le_mul_of_one_le_of_one_le htwo
    (one_le_oddCoarseEulerProduct side profile.oddFactors)

private theorem oddCoarseEulerProduct_mul_eq_oddJointProduct
    (factors : List RankinOddFactor) :
    oddCoarseEulerProduct .minus factors *
        oddCoarseEulerProduct .plus factors =
      oddJointCoarseEulerProductProduct factors := by
  induction factors with
  | nil =>
      simp [oddCoarseEulerProduct, oddJointCoarseEulerProductProduct]
  | cons factor factors ih =>
      rcases factor with ⟨side, exponent, weightCap⟩
      cases side <;>
        simp only [oddCoarseEulerProduct,
          oddJointCoarseEulerProductProduct, reduceCtorEq, ↓reduceIte] <;>
        simpa [mul_assoc, mul_left_comm, mul_comm] using
          congrArg (fun value : ℚ =>
            coarseRankinPrimePowerFactor exponent weightCap.weight * value) ih

theorem jointCoarseEulerProductProduct_eq_mul
    (profile : RankinNeighborProfile) :
    profile.jointCoarseEulerProductProduct =
      profile.coarseEulerProduct .minus *
        profile.coarseEulerProduct .plus := by
  simp only [jointCoarseEulerProductProduct, coarseEulerProduct, twoExponent]
  rw [← oddCoarseEulerProduct_mul_eq_oddJointProduct]
  ring

private theorem oddLowerNeighborProduct_mul_eq_oddJointProduct
    (factors : List RankinOddFactor) :
    oddLowerNeighborProduct .minus factors *
        oddLowerNeighborProduct .plus factors =
      oddJointLowerNeighborProduct factors := by
  induction factors with
  | nil =>
      simp [oddLowerNeighborProduct, oddJointLowerNeighborProduct]
  | cons factor factors ih =>
      rcases factor with ⟨side, exponent, weightCap⟩
      cases side <;>
        simp only [oddLowerNeighborProduct,
          oddJointLowerNeighborProduct, reduceCtorEq, ↓reduceIte] <;>
        simpa [mul_assoc, mul_left_comm, mul_comm] using
          congrArg (fun value : ℕ =>
            weightCap.lowerPrime ^ exponent * value) ih

theorem jointLowerNeighborProduct_eq_mul
    (profile : RankinNeighborProfile) :
    profile.jointLowerNeighborProduct =
      profile.lowerNeighborProduct .minus *
        profile.lowerNeighborProduct .plus := by
  simp only [jointLowerNeighborProduct, lowerNeighborProduct, twoExponent]
  rw [← oddLowerNeighborProduct_mul_eq_oddJointProduct]
  rw [pow_add]
  ring

/-- The sum of the two Euler products is at most twice their product. -/
theorem jointCoarseEulerProduct_le_two_mul_product
    (profile : RankinNeighborProfile) :
    profile.jointCoarseEulerProduct ≤
      2 * profile.jointCoarseEulerProductProduct := by
  have hminus := profile.one_le_coarseEulerProduct .minus
  have hplus := profile.one_le_coarseEulerProduct .plus
  rw [profile.jointCoarseEulerProductProduct_eq_mul]
  simp only [jointCoarseEulerProduct]
  calc
    profile.coarseEulerProduct .minus +
        profile.coarseEulerProduct .plus ≤
      profile.coarseEulerProduct .minus *
          profile.coarseEulerProduct .plus +
        profile.coarseEulerProduct .minus *
          profile.coarseEulerProduct .plus := by
      exact add_le_add
        (calc
          profile.coarseEulerProduct .minus =
              profile.coarseEulerProduct .minus * 1 := by ring
          _ ≤ profile.coarseEulerProduct .minus *
              profile.coarseEulerProduct .plus :=
            mul_le_mul_of_nonneg_left hplus (by linarith))
        (calc
          profile.coarseEulerProduct .plus =
              1 * profile.coarseEulerProduct .plus := by ring
          _ ≤ profile.coarseEulerProduct .minus *
              profile.coarseEulerProduct .plus :=
            mul_le_mul_of_nonneg_right hminus (by linarith))
    _ = 2 * (profile.coarseEulerProduct .minus *
        profile.coarseEulerProduct .plus) := by ring

/-- The ordinary profile failure square is dominated by the side-erased
joint envelope. -/
theorem failureSquare_le_jointEnvelopeFailureSquare
    (profile : RankinNeighborProfile) (hprofile : profile.Valid) :
    profile.failureSquare ≤ profile.jointEnvelopeFailureSquare := by
  have hwitnessNat :
      profile.witnessCap ≤ profile.jointEnvelopeWitnessCap := by
    exact profile.witnessCap_le_jointEnvelopeWitnessCap_of_shape hprofile.1
  have hwitness :
      (profile.witnessCap : ℚ) ≤ profile.jointEnvelopeWitnessCap := by
    exact_mod_cast hwitnessNat
  have hroot : (0 : ℚ) ≤ profile.rootCap := by positivity
  have hEulerNonneg :
      (0 : ℚ) ≤ profile.jointCoarseEulerProduct := by
    have hminus := profile.one_le_coarseEulerProduct .minus
    have hplus := profile.one_le_coarseEulerProduct .plus
    simp only [jointCoarseEulerProduct]
    linarith
  have hproductEulerNonneg :
      (0 : ℚ) ≤ 2 * profile.jointCoarseEulerProductProduct := by
    have hminus := profile.one_le_coarseEulerProduct .minus
    have hplus := profile.one_le_coarseEulerProduct .plus
    rw [profile.jointCoarseEulerProductProduct_eq_mul]
    exact mul_nonneg (by norm_num)
      (mul_nonneg (by linarith) (by linarith))
  have hbase :
      (profile.witnessCap : ℚ) * profile.rootCap *
          profile.jointCoarseEulerProduct ≤
        (profile.jointEnvelopeWitnessCap : ℚ) * profile.rootCap *
          (2 * profile.jointCoarseEulerProductProduct) := by
    exact mul_le_mul
      (mul_le_mul_of_nonneg_right hwitness hroot)
      profile.jointCoarseEulerProduct_le_two_mul_product
      hEulerNonneg
      (mul_nonneg (by positivity) hroot)
  have hleftNonneg :
      (0 : ℚ) ≤ (profile.witnessCap : ℚ) * profile.rootCap *
        profile.jointCoarseEulerProduct :=
    mul_nonneg (mul_nonneg (by positivity) hroot) hEulerNonneg
  have hrightNonneg :
      (0 : ℚ) ≤ (profile.jointEnvelopeWitnessCap : ℚ) *
        profile.rootCap *
          (2 * profile.jointCoarseEulerProductProduct) :=
    mul_nonneg (mul_nonneg (by positivity) hroot) hproductEulerNonneg
  simpa [failureSquare, jointEnvelopeFailureSquare] using
    (sq_le_sq₀ hleftNonneg hrightNonneg).2 hbase

theorem jointEnvelopeClosesCutoff_implies_closesCutoff
    (profile : RankinNeighborProfile) (hprofile : profile.Valid)
    {cutoff : ℕ} (hcloses : profile.JointEnvelopeClosesCutoff cutoff) :
    profile.ClosesCutoff cutoff := by
  exact (profile.failureSquare_le_jointEnvelopeFailureSquare hprofile).trans_lt
    hcloses

theorem jointEnvelopeExcludesFailure_implies_excludesFailure
    (profile : RankinNeighborProfile) (hprofile : profile.Valid)
    (hexcludes : profile.JointEnvelopeExcludesFailure) :
    profile.ExcludesFailure := by
  right
  right
  have hsquare :
      profile.failureSquare ^ 2 ≤
        profile.jointEnvelopeFailureSquare ^ 2 :=
    pow_le_pow_left₀ (by
      rw [failureSquare]
      exact sq_nonneg _)
      (profile.failureSquare_le_jointEnvelopeFailureSquare hprofile) 2
  have hexcludes' := hexcludes
  rw [JointEnvelopeExcludesFailure,
    profile.jointLowerNeighborProduct_eq_mul] at hexcludes'
  exact hsquare.trans_lt hexcludes'

end RankinNeighborProfile

end BGS.NumberTheory
