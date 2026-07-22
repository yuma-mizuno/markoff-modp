import BGS.HasseWeil.ExtensionPointCount
import RiemannRoch.CoordinateFree.AlgEquiv
import BGS.HasseWeil.ExtensionEvenDegreeStepanovBound
import BGS.HasseWeil.FiniteExtensionPrincipalParts
import BGS.HasseWeil.FiniteExtensionPlaceTower
import BGS.HasseWeil.FiniteBranchLocus
import BGS.HasseWeil.GaloisAverage
import BGS.HasseWeil.OnePointPoleSemigroup
import BGS.HasseWeil.PlaneFinitePlaceRiemannLower
import BGS.HasseWeil.PlaneRegularPointCount
import BGS.HasseWeil.PlaneSquareFieldStepanovCount
import BGS.HasseWeil.PlaneSquareFieldStepanovCountAutomatic
import BGS.HasseWeil.GeneralSquareFieldStepanovCount
import BGS.HasseWeil.RatFuncParameterPole
import BGS.HasseWeil.GeneralFiniteExtensionRiemannLower
import BGS.HasseWeil.FiniteExtensionRiemannLowerFromGenus
import BGS.HasseWeil.FiniteExtensionRiemannEventualGrowth
import BGS.HasseWeil.FiniteExtensionRiemannShiftedEventualGrowth
import BGS.HasseWeil.FiniteExtensionRiemannSpaceProjectivization
import BGS.HasseWeil.LinearFunctionalGluing
import BGS.HasseWeil.FiniteExtensionPlaceDegreeFiniteness
import BGS.HasseWeil.FiniteExtensionAffineIdealDegree
import BGS.HasseWeil.FiniteExtensionAffineIdealDivisor
import BGS.HasseWeil.GeneralSquareFieldStepanovCountAutomatic
import BGS.HasseWeil.PlaneCoordinateShear
import BGS.HasseWeil.PlaneFrobeniusDeflation
import BGS.HasseWeil.PlaneFrobeniusDegenerate
import BGS.HasseWeil.PlaneFrobeniusReduction
import BGS.HasseWeil.PlaneSmoothPointNormalization
import BGS.HasseWeil.RationalPlace
import BGS.HasseWeil.RationalPlaceTower
import BGS.HasseWeil.RatFuncConstantExtension
import BGS.HasseWeil.FunctionFieldConstantExtension
import BGS.HasseWeil.ConstantFieldAutomorphism
import BGS.HasseWeil.ConstantFieldRatFuncCompatibility
import BGS.HasseWeil.ConstantFieldFinitePlace
import BGS.HasseWeil.ConstantFieldFinitePlaceDegree
import BGS.HasseWeil.ConstantFieldInfinityBase
import BGS.HasseWeil.FunctionFieldNormalClosure
import BGS.HasseWeil.FunctionFieldConstantField
import BGS.HasseWeil.FunctionFieldNormalClosureConstants
import BGS.HasseWeil.ExactConstantExtension
import BGS.HasseWeil.ExactConstantExtensionAutomorphism
import BGS.HasseWeil.ExactConstantExtensionConstants
import BGS.HasseWeil.ExactConstantExtensionQuotient
import BGS.HasseWeil.FrobeniusTwistGroup
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwist
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistConstants
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistRiemannLower
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistDegree
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistMultiplication
import BGS.HasseWeil.FunctionFieldNormalClosureConstantBase
import BGS.HasseWeil.FunctionFieldNormalClosureRatFuncBase
import BGS.HasseWeil.FunctionFieldNormalClosureRatFuncEquiv
import BGS.HasseWeil.FiniteFieldSubfield
import BGS.HasseWeil.FiniteFieldCompositum
import BGS.HasseWeil.PolynomialTensorCancel
import BGS.HasseWeil.FiniteFieldPolynomialNormalization
import BGS.HasseWeil.FiniteFieldPolynomialDifferent
import BGS.HasseWeil.FiniteFieldInfinityDifferent
import BGS.HasseWeil.ExactConstantExtensionInfinityDifferent
import BGS.HasseWeil.ExactConstantExtensionFiniteDifferent
import BGS.HasseWeil.FinsuppWeightedFiber
import BGS.HasseWeil.IdealMultiplicityMap
import BGS.HasseWeil.FiniteExtensionTotalDifferentEffectiveDivisor
import BGS.HasseWeil.ExactConstantExtensionTotalDifferentDegree
import BGS.HasseWeil.ExactConstantExtensionGenusInvariance
import BGS.HasseWeil.ExactConstantExtensionGenusDegree
import BGS.HasseWeil.ExactConstantExtensionDifferentCoefficient
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistGenus
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistStepanovUpper
import BGS.HasseWeil.ExactConstantExtensionIntermediateFrobeniusTwistHasseBound
import BGS.HasseWeil.ExactConstantExtensionNormalClosureTower
import BGS.HasseWeil.FiniteExtensionHasseWeil
import BGS.HasseWeil.GeneralBivariateAffineHasseWeil
import BGS.HasseWeil.FiniteFieldConstantExtensionNormalization
import BGS.HasseWeil.ConstantTensorResidue
import BGS.HasseWeil.FiniteFieldConstantExtensionResidue
import BGS.HasseWeil.FinitePlaceNormalizationTransport
import BGS.HasseWeil.RatFuncExactConstantExtension
import BGS.HasseWeil.ConstantExtensionFinitePlaceBridge
import BGS.HasseWeil.ConstantExtensionRationalPlace
import BGS.HasseWeil.RatFuncInfinityLocalization
import BGS.HasseWeil.ExactConstantExtensionInfinityNormalization
import BGS.HasseWeil.ConstantExtensionInfinityPlaceBridge
import BGS.HasseWeil.FinitePlaceFrobeniusFiber
import BGS.HasseWeil.FrobeniusPlaceCardinality
import BGS.HasseWeil.ExactConstantExtensionFinitePlace
import BGS.HasseWeil.ExactConstantExtensionFinitePlaceCompatibility
import BGS.HasseWeil.ExactConstantExtensionFinitePlaceFrobeniusAverage
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistFinitePlaceAverage
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistRationalPlaceAverage
import BGS.HasseWeil.ExactConstantExtensionIntermediateFrobeniusTwistFinitePlaceAverage
import BGS.HasseWeil.ExactConstantExtensionIntermediateFrobeniusTwistRationalPlaceAverage
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistFinitePlaceBridge
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistFinitePlaceUnramified
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistInfinityPlaceDescent
import BGS.HasseWeil.ExactConstantExtensionFrobeniusTwistInfinityPlaceEquivalence
import BGS.HasseWeil.SquareFieldStepanovAuxiliary
import BGS.HasseWeil.SquareFieldStepanovZeroCount
import BGS.HasseWeil.FormalZetaHasseBound
import BGS.HasseWeil.FormalZetaRationality
import BGS.HasseWeil.FormalZetaRationalityDegree
import BGS.HasseWeil.FormalZetaUniqueness
import BGS.HasseWeil.FormalZetaEuler
import BGS.HasseWeil.FormalZetaEulerDegree
import BGS.HasseWeil.FormalZetaDegreeIndexOne
import BGS.HasseWeil.FormalZetaDegreeIndexOneIndexed
import BGS.HasseWeil.FormalZetaConstantExtensionIdentity
import BGS.HasseWeil.FiniteExtensionZetaDegreeExtensionIdentity
import BGS.HasseWeil.FiniteExtensionDivisorDegreeIndex
import BGS.HasseWeil.FiniteExtensionEffectiveDivisorSplit
import BGS.HasseWeil.FiniteExtensionDivisorClassRecurrence
import BGS.HasseWeil.FiniteExtensionRiemannRoch
import BGS.HasseWeil.RatFuncCanonicalInfinityDivisor
import BGS.HasseWeil.FiniteExtensionCanonicalDifferentGenusBound
import BGS.HasseWeil.FiniteExtensionCanonicalDifferentCanonicalityCriterion
import BGS.HasseWeil.DedekindDifferentLocalTrace
import BGS.HasseWeil.FiniteExtensionCanonicalDifferentCotrace
import BGS.HasseWeil.FiniteExtensionCotraceLocalTraceImage
import BGS.HasseWeil.FiniteExtensionCanonicalDifferentCotraceCanonicality
import BGS.HasseWeil.FiniteExtensionCanonicalDifferentLocalMaximality
import BGS.HasseWeil.FiniteExtensionGenusBound
import BGS.HasseWeil.PlaneCurveGenusBoundFromCotraceDegree
import BGS.HasseWeil.PlaneCurveGenusBoundFromCotrace
import BGS.HasseWeil.PlaneCurveGenusBoundAutomatic
import BGS.HasseWeil.PlaneAffineFiberBound
import BGS.HasseWeil.PlaneAffineRationalPlaceComparison
import BGS.HasseWeil.PlaneRationalPlaceAffineComparison
import BGS.HasseWeil.PlaneAffineCountTransfer
import BGS.HasseWeil.ClosedPlaceEulerRecurrence
import BGS.HasseWeil.FiniteExtensionIndexedZetaRationality
import BGS.HasseWeil.FiniteExtensionIndexedZetaRationalityAutomatic
import BGS.HasseWeil.FiniteExtensionZetaSimplePole
import BGS.HasseWeil.FiniteExtensionZetaNumeratorNoncancellation
import BGS.HasseWeil.FiniteExtensionZetaDegreeIndexOne
import BGS.HasseWeil.FiniteExtensionZetaDegreeIndexOneFromAllCounts
import BGS.HasseWeil.FiniteExtensionZetaDegreeIndexOneAutomatic
import BGS.HasseWeil.FiniteExtensionStandardZetaRationality
import BGS.HasseWeil.FiniteExtensionHasseBoundFromEvenConstantExtensions
import BGS.HasseWeil.PlaneAffineHasseWeilFromZeta
import BGS.HasseWeil.PlaneAffineHasseWeilFromEvenError
import BGS.HasseWeil.ConstantExtensionClosedPlaceCount
import BGS.HasseWeil.ConstantExtensionPlaceSplittingMultiplicity
import BGS.HasseWeil.ConstantExtensionClosedPlaceSplittingFormula
import RiemannRoch.CoordinateFree.RiemannRoch
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#docs (Manual) hasseWeilOverview "Hasse--Weil: route and sources" :=
:::::::

:::source_document "tao-bombieri-stepanov-2014"
%%%
title := "Tao, The Bombieri--Stepanov proof of the Hasse--Weil bound (checked semantic reconstruction)"
kind := .pdf
pdf := "source/TaoBombieriStepanov2014.pdf"
pageRoot := "source"
%%%
:::

:::source_document "stichtenoth-function-fields"
%%%
title := "Stichtenoth, Algebraic Function Fields and Codes, second edition"
kind := .pdf
pdf := "source/StichtenothFunctionFields.pdf"
pageRoot := "source"
%%%
:::

:::source_document "lorenzini-arithmetic-geometry"
%%%
title := "Lorenzini, An Invitation to Arithmetic Geometry (page-preserving OCR derivative of the scan)"
kind := .pdf
pdf := "source/LorenziniArithmeticGeometry.pdf"
pageRoot := "source"
%%%
:::

:::group "hasse_weil"
Hasse--Weil
:::

The selected proof follows Stichtenoth's exact Frobenius-twist argument.  A
square-field Stepanov estimate bounds every twist of a fixed Galois tower;
finite Frobenius averaging makes these bounds two-sided.  Passing to the
normal closure gives a uniform error estimate in the degrees $`2Hn`, where
$`H=(g_N+1)(g_N+2)` and $`g_N` is the genus of the normal closure over its full
constant field.  The zeta trace formula then converts this one divisible
subsequence into the closed Hasse--Weil bound.

Riemann--Roch and exact constant extensions supply the common genus and degree
data used by the twists.  Normalization, the plane-curve genus budget, and
Frobenius deflation form the final affine conversion.  Lorenzini's
Frobenius-class proof is recorded separately as an alternative derivation of
the same lower estimate.  Tao's exposition remains a useful overview.

# Sources and mathematical route

Stichtenoth is the primary source for the selected lower bound.  Lorenzini's
printed page numbers below are followed by scan page numbers for the local
PDF.  Its page-preserving OCR derivative is used for search, and each selected
span links to a visually checked semantic TeX reconstruction; the scan remains
authoritative for every symbol.

| Stage | Exact source boundary |
| --- | --- |
| Riemann--Roch and zeta trace | Stichtenoth, Chapters 1 and 5; Lorenzini VIII.5--6 and IX.4 |
| Square-field Stepanov bound | Stichtenoth pp. 199--202, Proposition 5.2.6 |
| Frobenius twists and averaging | Stichtenoth pp. 202--205, Lemma 5.2.7 and Proposition 5.2.8 |
| Normal-closure transfer | Stichtenoth pp. 205--206, equations (5.37),(5.38) and the end of Theorem 5.2.1 |
| Divisible-subsequence spectral step | Stichtenoth p. 199, Lemma 5.2.5; Lorenzini pp. 354--355, Lemmas 5.1--5.3 |
| Affine conversion | Stichtenoth pp. 197--198, Theorems 5.2.1 and 5.2.3, with normalization and Frobenius deflation below |
| Lorenzini alternative | Lorenzini X.3--6, pp. 351--360 / scans 369--378 |

When the normal closure introduces algebraic constants, its full constant
field $`C` replaces the original field.  Exact scalar extensions from $`C`
preserve genus and the relative Galois tower.  An auxiliary finite field is
then chosen with degree divisible by the relevant Galois-group orders and with
square cardinality, exactly as required by the twist average.

:::::::

#docs (Manual) hasseWeilFoundations "Hasse--Weil: function-field foundations" :=
:::::::

# Function-field foundations

This section develops the Riemann-space, place-tower, and rational-place APIs
used throughout the proof.

:::definition "riemann_spaces" (parent := "hasse_weil") (lean := "BGS.CorvajaZannier.finiteExtensionRiemannSpace, BGS.HasseWeil.exists_fraction_approximating_at_finitePlaces_regular_elsewhere, BGS.HasseWeil.finiteExtensionRiemannSpace_mod_constants_finrank_cast_le_degree, BGS.HasseWeil.planeCurve_finitePlace_riemann_lower, BGS.HasseWeil.mem_onePointPoleOrderSemigroup_of_two_mul_le") (tags := "proved-in-lean, riemann-space, finite-places, principal-parts") (effort := "large") (priority := "high")
%%%
source := {
  document := "tao-bombieri-stepanov-2014"
  spans := #[
    {
      page := "semantic reconstruction, square-field setup"
      text := some {
        path := "source/TaoBombieriStepanov2014.tex"
        startLine := 51
        endLine := 73
      }
      pdf := some { path := "source/TaoBombieriStepanov2014.pdf" }
    }
  ]
}
%%%

For a finite separable extension of a rational function field, Lean defines
the divisor Riemann space $`L(D)`, constructs simultaneous finite-place weak
approximations, and bounds the principal-parts quotient by $`\deg D`.  For an
irreducible plane curve with both coordinate partial derivatives nonzero, the
finite-place endpoint is the coarse Riemann inequality

$$`N\deg(P)+1\leq \dim L(NP)+g_0,`

where the explicit plane bidegree budget $`g_0` replaces an abstract genus.
The one-point pole-semigroup consequence is also proved.  This is a
function-field dimension theorem; it does not by itself identify rational
affine points with degree-one places of the normalization.
:::

:::theorem "riemann_roch_core" (parent := "hasse_weil") (lean := "FunctionField.riemann_roch, FunctionField.ell_eq_of_deg_ge, FunctionField.riemann_ineq, FunctionField.chartToPlace, FunctionField.placeValuation_eq, FunctionField.placeDegree_eq") (tags := "proved-in-lean, riemann-roch, function-fields, vendored-source") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "30--31, Theorems 1.5.15 and 1.5.17"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For an intrinsic divisor $`D`, the coordinate-free function-field
Riemann--Roch theorem gives

$$`\ell(D)=\deg D+1-g+\ell(W-D)`

for a canonical divisor $`W`, and hence

$$`\deg D\geq 2g-1\quad\Longrightarrow\quad
  \ell(D)=\deg D+1-g.`

The theorem is imported from Guanghao Li's Apache-2.0 development at commit
`dbca5beed1da77e2ecd1eec207d0451fa57e8aa6`; the transport to the exhaustive
finite-and-infinity divisor model is the content of `uniform_riemann`.
:::

:::theorem "uniform_riemann" (parent := "hasse_weil") (uses := "riemann_roch_core, riemann_spaces") (lean := "BGS.HasseWeil.finiteExtensionPlaceEquivChart, BGS.HasseWeil.finiteExtensionPlaceDegree_eq_chart, BGS.HasseWeil.finiteExtensionInfinityPlaceValuation_eq_chart, BGS.HasseWeil.finiteExtensionDivisorEquivChart, BGS.HasseWeil.finiteExtensionDivisorDegree_eq_chart, BGS.HasseWeil.finiteExtensionRiemannSpace_eq_chart, BGS.HasseWeil.hasFiniteExtensionUniformEventualRiemannFormula_of_fullConstantField, BGS.HasseWeil.exists_hasFiniteExtensionUniformEventualRiemannFormula_of_constants") (tags := "proved-in-lean, riemann-roch, divisor-transport") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "30--31, Theorems 1.5.15 and 1.5.17"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean identifies every exhaustive finite or infinity place with the matching
Riemann--Roch chart place.  The equivalence preserves residue degree,
normalized valuation, divisor degree, and the Riemann space $`L(D)`.  Exact
constants therefore give the uniform formula

$$`\dim L(D)=\deg D+1-g\qquad(\deg D\geq 2g).`

Equivalently, the exhaustive divisor model satisfies
`HasFiniteExtensionUniformEventualRiemannFormula`.
:::

:::definition "place_towers" (parent := "hasse_weil") (lean := "BGS.HasseWeil.finitePlaceUnder, BGS.HasseWeil.finitePlaceUnder_surjective, BGS.HasseWeil.infinityPlaceUnder, BGS.HasseWeil.infinityPlaceUnder_surjective, BGS.HasseWeil.placeUnder_surjective, BGS.HasseWeil.sum_finitePlaceUnderFiber_ramification_inertia_eq_field_finrank, BGS.HasseWeil.sum_infinityPlaceUnderFiber_ramification_inertia_eq_field_finrank, BGS.HasseWeil.finiteExtensionPlaceDegree_eq_under_mul_relativeInertiaDeg, BGS.HasseWeil.rationalPlaceUnder, BGS.HasseWeil.rationalFinitePlace_relativeInertiaDeg_eq_one, BGS.HasseWeil.rationalInfinityPlace_relativeInertiaDeg_eq_one, BGS.HasseWeil.exists_gal_smul_finitePlace_asIdeal_of_same_under, BGS.HasseWeil.exists_gal_smul_infinityPlace_asIdeal_of_same_under, BGS.HasseWeil.finitePlaceUnderFiber_card_mul_ramificationIdx_mul_inertiaDeg_eq_field_finrank, BGS.HasseWeil.infinityPlaceUnderFiber_card_mul_ramificationIdx_mul_inertiaDeg_eq_field_finrank, BGS.HasseWeil.finitePlaceInertiaGroup_card_eq_ramificationIdx, BGS.HasseWeil.finitePlaceDecompositionGroup_card_eq_ramificationIdx_mul_inertiaDeg, BGS.HasseWeil.infinityPlaceInertiaGroup_card_eq_ramificationIdx, BGS.HasseWeil.infinityPlaceDecompositionGroup_card_eq_ramificationIdx_mul_inertiaDeg, BGS.HasseWeil.sum_card_finitePlaceUnderFiberFixedBy_eq_card_galoisGroup, BGS.HasseWeil.sum_card_infinityPlaceUnderFiberFixedBy_eq_card_galoisGroup") (tags := "proved-in-lean, function-fields, place-towers, ramification, galois") (effort := "large") (priority := "high")

For a tower $`L/M/\mathbb F_q(t)`, Lean maps the integral closure in $`M`
into the integral closure in $`L` and contracts height-one primes.  This
defines restriction for both finite places and places above infinity, hence
for the exhaustive projective place type.  Contraction preserves the finite
place below $`\mathbb F_q(t)`, while the ideal tower law proves that a place
above infinity remains above infinity.  Lying-over proves that all three
restriction maps are surjective, and each branch fiber is identified with the
finite set of prime ideals lying over the intermediate prime.  The fundamental
equality sums ramification index times inertia degree to $`[L:M]`.  In a
Galois tower, Lean proves transitivity on each fiber, constancy of both local
indices, and the exact decomposition formula $`r e f=[L:M]`, where $`r` is the
number of places in the fiber, for finite places
and infinity.  Place degree is multiplicative under restriction; in
particular, a degree-one place restricts to a degree-one place and has
relative residue degree one.  Over a finite constant field, the inertia-group order is $`e`
and the decomposition-group order is $`ef`.  The Galois action on every finite
or infinity restriction fiber is transitive, and each local fixed-point trace
sums exactly to $`|\operatorname{Gal}(L/M)|`.
:::

:::definition "rational_places" (parent := "hasse_weil") (uses := "place_towers") (lean := "BGS.HasseWeil.finiteExtensionRationalPlaceEquivSubtype, BGS.HasseWeil.finiteExtensionRationalPlaceCount_eq_natCard_subtype, BGS.HasseWeil.finiteExtensionRationalPlace_finite") (tags := "proved-in-lean, function-fields, degree-one-places, finite") (effort := "medium") (priority := "high")

For a finite extension of $`K(t)` over a finite field $`K`, Lean defines the
degree-one place type using the exhaustive finite/infinity split and proves it
is finite.  The finite part maps to a degree-one base prime and its finite
lying-over fiber; the base primes themselves inject into the polynomials of
degree less than two.  An explicit equivalence identifies this split type with
the subtype of all exhaustive places having degree one, so its `Nat.card` is
the intended rational-place count.
:::

# Constant fields, Galois closure, and twists

This section constructs constant extensions, their Galois actions, the normal
closure, and the Frobenius-twist fields used in the descent argument.

:::definition "rational_constant_extension" (parent := "hasse_weil") (lean := "BGS.HasseWeil.ratFuncCoefficientAlgHom, BGS.HasseWeil.ratFuncCoefficientAlgHom_injective, BGS.HasseWeil.ratFuncConstantLocalizationLinearEquiv, BGS.HasseWeil.ratFuncCoefficient_moduleFinite, BGS.HasseWeil.ratFuncCoefficient_finrank") (tags := "proved-in-lean, constant-extension, rational-function-field, finite-dimensional") (effort := "large") (priority := "high")

For a finite extension $`S/K`, Lean constructs the coefficient embedding
$`K(X)\hookrightarrow S(X)`.  It localizes $`S[X]` at the images of the
nonzero polynomials in $`K[X]`, proves that this localization is a field, and
identifies it linearly over $`K(X)` with $`S(X)`.  Consequently
$`[S(X):K(X)]=[S:K]`.  This is the rational-function base-change input; the
constant extension of a general function field and its Galois quotient remain.
:::

:::definition "function_field_base_change" (parent := "hasse_weil") (lean := "BGS.HasseWeil.tensorFraction_isFractionRing, BGS.HasseWeil.planeCurveCoordinateRingBaseChangeAlgEquiv, BGS.HasseWeil.planeCurveFunctionFieldBaseChangeAlgEquiv, BGS.HasseWeil.planeCurveFunctionFieldBaseChangeAlgEquiv_tmul_one") (tags := "proved-in-lean, constant-extension, plane-curve, function-field") (effort := "large") (priority := "high")

For an algebraic extension $`E/K`, Lean proves that tensoring a fraction field
with $`E` gives the fraction field of the tensor-product base ring whenever
that base ring is a domain.  Applied to an irreducible plane curve whose
equation remains irreducible over $`E`, this gives the explicit
$`E`-algebra equivalence

$$`E\otimes_K K(C)\simeq E(C_E).`

The equivalence carries $`e\otimes 1` to the constant $`e`; it is the
function-field constant extension used by the Galois action and place
transport below.
:::

:::definition "constant_field_action" (parent := "hasse_weil") (uses := "function_field_base_change") (lean := "BGS.HasseWeil.planeCurveConstantAutHom, BGS.HasseWeil.planeCurveFunctionFieldBaseChange_finrank, BGS.HasseWeil.planeCurveFunctionFieldBaseChange_isGalois, BGS.HasseWeil.planeCurveConstantAutOverBaseMulEquiv, BGS.HasseWeil.orderOf_planeCurveConstantFrobeniusAlgEquiv") (tags := "proved-in-lean, constant-extension, galois, frobenius") (effort := "large") (priority := "high")

Lean transports every automorphism of $`E/K` through the tensor-product
model of $`E(C_E)`.  It acts as prescribed on the enlarged constants and fixes
$`K(C)` pointwise.  When $`K` and $`E` are finite, Lean proves

$$`[E(C_E):K(C)]=[E:K]`,

proves that this is a Galois extension, and identifies its full Galois group
with $`\operatorname{Gal}(E/K)`.  The transported constant-field Frobenius has
exact order $`[E:K]`.
:::

:::definition "constant_field_ratfunc" (parent := "hasse_weil") (uses := "rational_constant_extension, constant_field_action") (lean := "BGS.HasseWeil.planeCurveFunctionFieldBaseChangeAlgHom_function, BGS.HasseWeil.planeCurveFunctionFieldBaseChange_ratFunc_commutes, BGS.HasseWeil.planeCurveFunctionFieldBaseChangeRatFunc_isScalarTower, BGS.HasseWeil.planeCurveFunctionFieldBaseChangeCoefficientRatFunc_isScalarTower, BGS.HasseWeil.finiteDimensional_planeCurveFunctionFieldBaseChange_over_ratFunc, BGS.HasseWeil.separable_planeCurveFunctionFieldBaseChange_over_ratFunc") (tags := "proved-in-lean, constant-extension, rational-function-field, place-tower") (effort := "large") (priority := "high")

Using the first coordinate as separating variable, Lean proves that the square
from $`K(X)\hookrightarrow E(X)` and $`K(C)\hookrightarrow E(C_E)` commutes
exactly.  Thus the induced $`K(X)`-algebra on $`E(C_E)` factors both through
$`K(C)` and through $`E(X)`.  For finite constant extensions, the top field is
finite and separable over the original $`K(X)`.  This supplies the compatible
algebra towers required by the finite-place machinery.
:::

:::definition "constant_field_finite_places" (parent := "hasse_weil") (uses := "constant_field_ratfunc, place_towers") (lean := "BGS.HasseWeil.integralClosureRingEquivOfIntegralTower, BGS.HasseWeil.integralClosureAlgEquivOfIntegralTower, BGS.HasseWeil.ratFuncFiniteIntegralClosureRingEquiv, BGS.HasseWeil.planeCurveFiniteIntegralClosureBaseChangeRingEquiv, BGS.HasseWeil.planeCurveFinitePlaceBaseChangeEquiv") (tags := "proved-in-lean, constant-extension, finite-places, integral-closure") (effort := "large") (priority := "high")

Since $`E[X]` is integral over $`K[X]`, an element of the enlarged function
field is integral over one polynomial ring exactly when it is integral over
the other.  Lean constructs the resulting identity ring equivalence between
the two finite integral closures and transports height-one primes across it.
This identifies the finite-place types based on $`K(X)` and $`E(X)`; the
residue-degree comparison is stated in `constant_field_finite_degrees`.
:::

:::definition "constant_field_finite_degrees" (parent := "hasse_weil") (uses := "constant_field_finite_places, rational_places") (lean := "BGS.HasseWeil.ratFuncFiniteIntegralClosureBaseChangeAlgEquiv, BGS.HasseWeil.finitePlaceResidueFieldBaseChangeAlgEquiv, BGS.HasseWeil.finiteExtensionFinitePlace_degree_baseChange, BGS.HasseWeil.finiteExtensionFinitePlace_baseChange_rational_iff, BGS.HasseWeil.finiteExtensionFinitePlaceDegreeEquivRationalBaseChange, BGS.HasseWeil.natCard_finiteExtensionRationalFinitePlace_eq_degree_baseChange") (tags := "proved-in-lean, constant-extension, finite-places, residue-degree") (effort := "large") (priority := "high")

The integral-closure equivalence is upgraded over the original constants and
transported to residue fields.  Lean proves
$`\deg_K(Q)=[E:K]\deg_E(Q_E)` and hence identifies $`E`-rational finite
places with finite places of degree $`[E:K]` over $`K`, including the equality
of their finite cardinalities.
:::

:::definition "constant_field_infinity_base" (parent := "hasse_weil") (uses := "rational_constant_extension") (lean := "BGS.HasseWeil.ratFuncCoefficientAlgHom_intDegree, BGS.HasseWeil.ratFuncCoefficientAlgHom_C, BGS.HasseWeil.ratFuncCoefficientAlgHom_inftyValuation, BGS.HasseWeil.ratFuncInfinityIntegersRingHom, BGS.HasseWeil.ratFuncInfinityIntegersRingHom_injective, BGS.HasseWeil.ratFuncInfinityIntegersRingHom_comap_infinityPlace, BGS.HasseWeil.ratFuncInfinityResidueFieldRingHom") (tags := "proved-in-lean, constant-extension, infinity-place, local-ring") (effort := "large") (priority := "high")

Lean proves that coefficient extension preserves rational-function integer
degree and therefore the valuation at infinity.  It restricts to an injective
local homomorphism of the two infinity valuation rings, contracts the enlarged
maximal ideal to the original one, and induces an injective map of residue
fields.  The corresponding integral closures in the enlarged curve function
field are identified in `infinity_normalization`.
:::

:::lemma_ "infinity_reciprocal_localization" (parent := "hasse_weil") (uses := "constant_field_infinity_base") (lean := "BGS.HasseWeil.reciprocalPolynomialRingHom, BGS.HasseWeil.reciprocalPolynomialRingHom_injective, BGS.HasseWeil.ratFuncInfinityIntegers_isLocalization_reciprocal, BGS.HasseWeil.reciprocalPolynomialAtOriginAlgEquivInfinityIntegers") (tags := "proved-in-lean, infinity-place, localization, reciprocal-coordinate") (effort := "medium") (priority := "high")

In the reciprocal coordinate $`Y=X^{-1}`, Lean identifies the infinity
valuation ring with the localization $`K[Y]_{(Y)}`.  The proof explicitly
writes every function regular at infinity as a fraction whose denominator is
nonzero at $`Y=0`.  This supplies the local polynomial model needed to
transport normalization at infinity under constant extension.
:::

:::definition "function_field_galois_closure" (parent := "hasse_weil") (uses := "constant_field_ratfunc, place_towers") (lean := "BGS.HasseWeil.functionFieldSeparableClosureEmbedding, BGS.HasseWeil.FunctionFieldNormalClosure, BGS.HasseWeil.functionFieldToNormalClosure, BGS.HasseWeil.functionFieldNormalClosure_finiteDimensional, BGS.HasseWeil.functionFieldNormalClosure_isGalois") (tags := "proved-in-lean, galois-closure, function-field") (effort := "large") (priority := "high")

Lean embeds a finite separable extension of $`K(t)` in the absolute separable
closure and takes its normal closure.  The resulting field is finite Galois
over $`K(t)` and contains the original function field.
:::

:::definition "galois_closure_constants" (parent := "hasse_weil") (uses := "function_field_galois_closure, constant_field_ratfunc, rational_places") (lean := "BGS.HasseWeil.FunctionFieldConstantField, BGS.HasseWeil.functionFieldConstantToFiniteIntegralClosure, BGS.HasseWeil.functionFieldConstantQuotientAlgHom, BGS.HasseWeil.functionFieldConstantField_finiteDimensional, BGS.HasseWeil.functionFieldConstantField_finite, BGS.HasseWeil.functionFieldNormalClosureConstantRestriction, BGS.HasseWeil.mem_functionFieldNormalClosureConstantRestriction_ker_iff, BGS.HasseWeil.functionFieldNormalClosureConstantRestriction_surjective, BGS.HasseWeil.functionFieldNormalClosureConstantField_isExact, BGS.HasseWeil.orderOf_functionFieldNormalClosureConstantFrobenius") (tags := "proved-in-lean, constant-field, galois-restriction, frobenius") (effort := "large") (priority := "high")

The algebraic constants in the Galois closure embed into a finite-place
quotient, so they form a finite extension of $`K`.  Lean constructs the
restriction homomorphism to the cyclic constant-field Galois group, identifies
its kernel, and proves it surjective.  The last step uses the Galois fixed-field
theorem and the fact that $`K(t)` has no algebraic constants beyond $`K`.
After changing the base to these algebraic constants, Lean also proves that
they are the exact constant field of the Galois closure.
:::

:::definition "exact_constant_extension" (parent := "hasse_weil") (uses := "galois_closure_constants") (lean := "BGS.HasseWeil.linearDisjoint_of_inf_eq_bot_of_finite_galois_left, BGS.HasseWeil.exactConstantExtensionImages_linearDisjoint, BGS.HasseWeil.exactConstantExtensionTensor_isField, BGS.HasseWeil.exactConstantExtensionAlgebra, BGS.HasseWeil.exactConstantExtensionLinearEquiv, BGS.HasseWeil.exactConstantExtension_finrank") (tags := "proved-in-lean, exact-constants, linear-disjointness, constant-extension") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "202--204, Lemma 5.2.7 and Proposition 5.2.8 setup"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

A finite Galois extension of the exact constants is linearly disjoint from
the function field.  Its tensor product is a field of the expected degree.
:::

:::definition "constant_extension_exact_constants" (parent := "hasse_weil") (uses := "exact_constant_extension") (lean := "BGS.HasseWeil.exactConstantExtension_algebraicClosure_eq_bot") (tags := "proved-in-lean, exact-constants, constant-extension, regular-base-change") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "203--204, Proposition 5.2.8(a) prerequisite"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

If $`N/C` has exact constants $`C`, then the tensor constant extension
$`S\otimes_C N` has exact constants $`S`.  Lean proves this from linear
disjointness and the finite-field embedding criterion; no geometric
base-change assertion is assumed.
:::

:::definition "constant_extension_galois_product" (parent := "hasse_weil") (uses := "exact_constant_extension") (lean := "BGS.HasseWeil.exactConstantExtensionField, BGS.HasseWeil.exactConstantExtensionBaseAlgebra, BGS.HasseWeil.exactConstantExtensionBaseTower, BGS.HasseWeil.exactConstantExtensionConstantAutHom, BGS.HasseWeil.exactConstantExtensionFunctionAutHom, BGS.HasseWeil.exactConstantExtension_constant_function_commute, BGS.HasseWeil.exactConstantExtensionCombinedAutHom, BGS.HasseWeil.exactConstantExtensionCombinedAutHom_injective, BGS.HasseWeil.exactConstantExtension_finrank_over_base, BGS.HasseWeil.exactConstantExtension_isGalois, BGS.HasseWeil.exactConstantExtensionAutMulEquiv") (tags := "proved-in-lean, constant-extension, galois-group, direct-product") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "203, Proposition 5.2.8, direct-product setup"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The constant and function-field actions commute and are jointly faithful.
For exact constants, they give the full Galois group as a direct product.
:::

:::definition "constant_extension_frobenius_quotient" (parent := "hasse_weil") (uses := "constant_extension_galois_product") (lean := "BGS.HasseWeil.exactConstantExtensionConstantQuotient, BGS.HasseWeil.exactConstantExtensionConstantQuotient_combined, BGS.HasseWeil.exactConstantExtensionConstantQuotient_action_on_constants, BGS.HasseWeil.exactConstantExtensionConstantQuotient_surjective, BGS.HasseWeil.exactConstantExtensionConstantQuotient_ker, BGS.HasseWeil.exactConstantExtensionConstantAutHom_injective, BGS.HasseWeil.exactConstantExtensionFrobenius, BGS.HasseWeil.orderOf_exactConstantExtensionFrobenius, BGS.HasseWeil.exactConstantExtensionConstantQuotient_frobenius, BGS.HasseWeil.exactConstantExtensionFrobeniusFiberEquiv, BGS.HasseWeil.natCard_exactConstantExtensionFrobeniusFiber") (tags := "proved-in-lean, frobenius, quotient, kernel, twists") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "203--205, Proposition 5.2.8"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Restriction to the enlarged constants is onto, with the original
function-field Galois group as kernel.  Its Frobenius fiber is parametrized
exactly by that kernel, and the quotient records the action of every full
automorphism on the embedded enlarged constants.
:::

:::definition "frobenius_twist_subgroups" (parent := "hasse_weil") (uses := "constant_extension_frobenius_quotient") (lean := "BGS.HasseWeil.orderOf_prod_eq_left_of_natCard_dvd, BGS.HasseWeil.zpowers_prod_inf_fst_ker_eq_bot_of_natCard_dvd, BGS.HasseWeil.natCard_zpowers_prod_eq_orderOf_left_of_natCard_dvd") (tags := "proved-in-lean, frobenius, cyclic-subgroup, fixed-fields") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "202--203, Lemma 5.2.7 and Proposition 5.2.8 setup"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

If the function-field Galois-group order divides the constant-extension
degree, every pair consisting of constant Frobenius and a function-field
automorphism has that extension degree as its order.  Its cyclic subgroup
meets the original function-field factor trivially and therefore has the
cardinality required for the fixed-field twists.
:::

:::definition "frobenius_twist_fields" (parent := "hasse_weil") (uses := "constant_extension_frobenius_quotient, frobenius_twist_subgroups, constant_extension_exact_constants") (lean := "BGS.HasseWeil.exactConstantExtensionFrobeniusTwist, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistSubgroup, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistField, BGS.HasseWeil.exactConstantExtensionExtendedBaseField, BGS.HasseWeil.orderOf_exactConstantExtensionFrobeniusTwist, BGS.HasseWeil.natCard_exactConstantExtensionFrobeniusTwistSubgroup, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistSubgroup_inf_quotientKer, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistSubgroup_inf_functionRange, BGS.HasseWeil.frobeniusTwistField_sup_extendedBaseField_eq_top, BGS.HasseWeil.finrank_exactConstantExtension_over_frobeniusTwistField, BGS.HasseWeil.finiteDimensional_exactConstantExtension_over_frobeniusTwistField, BGS.HasseWeil.isGalois_exactConstantExtension_over_frobeniusTwistField, BGS.HasseWeil.finrank_frobeniusTwistField_over_base, BGS.HasseWeil.finrank_frobeniusTwistField_over_ratFunc_eq_original, BGS.HasseWeil.natCard_aut_exactConstantExtension_over_frobeniusTwistField, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistField_algebraicClosure_eq_bot") (tags := "proved-in-lean, frobenius, fixed-fields, degree, exact-constants") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "203--204, Proposition 5.2.8 setup and parts (a)--(b)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For every $`g\in\operatorname{Gal}(N/L)`, Lean constructs the fixed field of
the cyclic group generated by $`(\mathrm{Frob},g)`.  The top field is Galois
of degree $`[S:C]` over this twist, the twist has degree $`[N:L]` over $`L`,
and the twist together with the extended base generates the top field.  Lean
also proves directly that every twist has exact constant field $`C`, by first
descending algebraic elements into $`S` and then using Frobenius fixedness.
:::

:::definition "normal_closure_constant_base" (parent := "hasse_weil") (uses := "galois_closure_constants, constant_extension_frobenius_quotient") (lean := "BGS.HasseWeil.FunctionFieldNormalClosureConstantBase, BGS.HasseWeil.functionFieldNormalClosureConstantToBase, BGS.HasseWeil.functionFieldNormalClosureConstantBaseAlgebra, BGS.HasseWeil.functionFieldNormalClosureConstantBase_isScalarTower, BGS.HasseWeil.functionFieldNormalClosure_finiteDimensional_over_constantBase, BGS.HasseWeil.functionFieldNormalClosure_isGalois_over_constantBase, BGS.HasseWeil.functionFieldNormalClosure_isGalois_over_constantRatFunc, BGS.HasseWeil.functionFieldNormalClosureExactConstantExtensionField, BGS.HasseWeil.functionFieldNormalClosureConstantExtensionAutMulEquiv, BGS.HasseWeil.functionFieldNormalClosureConstantExtensionQuotient_surjective") (tags := "proved-in-lean, normal-closure, constant-base, galois-product") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "205--206, end of the proof of Theorem 5.2.1"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The fixed field of the constant-restriction kernel contains all algebraic
constants.  The actual normal closure is finite Galois over this base, so the
constant-extension product and quotient apply to it.
:::

:::definition "rational_constant_base" (parent := "hasse_weil") (uses := "normal_closure_constant_base") (lean := "BGS.HasseWeil.functionFieldNormalClosureConstantCompositum, BGS.HasseWeil.functionFieldNormalClosureConstantCompositum_fixingSubgroup, BGS.HasseWeil.functionFieldNormalClosureConstantBase_eq_compositum, BGS.HasseWeil.functionFieldNormalClosureConstantBaseX, BGS.HasseWeil.functionFieldNormalClosureConstantBase_constantTower, BGS.HasseWeil.functionFieldNormalClosureConstantBaseX_transcendental, BGS.HasseWeil.functionFieldNormalClosureConstantBase_adjoin_X, BGS.HasseWeil.functionFieldNormalClosureConstantBaseRatFuncAlgEquiv, BGS.HasseWeil.functionFieldNormalClosureConstantBaseRatFuncAlgHom, BGS.HasseWeil.functionFieldNormalClosureConstantBaseRatFuncAlgHom_surjective, BGS.HasseWeil.functionFieldNormalClosureConstantBaseRatFuncAlgEquiv_X") (tags := "proved-in-lean, normal-closure, constant-compositum, rational-function-field") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "205--206, end of the proof of Theorem 5.2.1"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The fixed field of the restriction kernel is exactly the compositum of the
original rational function field with the full algebraic constant field.
The original parameter remains transcendental over those constants and
generates the fixed field, giving an explicit algebra equivalence with the
rational function field over the enlarged constants.
:::

:::::::

#docs (Manual) hasseWeilNormalization "Hasse--Weil: normalization and point counts" :=
:::::::

# Normalization and constant-extension place counts

This section transports finite and infinity normalizations through exact
constant extension and packages the resulting residue-degree and point-count
formulas.

:::lemma_ "finite_field_subfields" (parent := "hasse_weil") (lean := "BGS.HasseWeil.finiteField_fieldRange_le_of_finrank_dvd, BGS.HasseWeil.finiteField_finrank_eq_lcm_of_tensorLift_surjective, BGS.HasseWeil.finiteField_finrank_over_left_eq_div_gcd_of_tensorLift_surjective") (tags := "proved-in-lean, finite-fields, subfields, compositum, degree-divisibility") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "190, Lemma 5.1.9(d), finite-field compositum step"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

If two finite extensions of the same finite field are embedded in a common
finite overfield, and the degree of the first divides the degree of the
second, Lean proves that the image of the first is contained in the image of
the second.  If two embedded finite fields generate the common overfield,
Lean also proves the exact compositum formulas

$$`[T:C]=\operatorname{lcm}([S:C],[K:C]),\qquad
[T:S]=\frac{[K:C]}{\gcd([S:C],[K:C])}.`

Generation is expressed by surjectivity of the canonical tensor-product map.
These are the finite-field inputs needed for constant-extension residue
fields; they do not assert that a place residue field is generated by the two
embedded fields.
:::

:::lemma_ "constant_normalization" (parent := "hasse_weil") (lean := "BGS.HasseWeil.polynomialTensorCancel, BGS.HasseWeil.polynomialTensorCancelOverCoefficientPolynomial, BGS.HasseWeil.finiteFieldPolynomialIntegralClosureBaseChangeAlgEquiv, BGS.HasseWeil.constantExtensionTensorPolynomialAlgebra, BGS.HasseWeil.finiteFieldConstantExtensionIntegralClosurePolynomialAlgEquiv, BGS.HasseWeil.finiteFieldConstantExtensionIntegralClosurePolynomialAlgEquiv_tmul, BGS.HasseWeil.finiteFieldConstantExtensionIntegralClosureAlgEquiv, BGS.HasseWeil.finiteFieldConstantExtensionIntegralClosureAlgEquiv_tmul") (tags := "proved-in-lean, constant-extension, normalization, smooth-base-change") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "115, Theorem 3.6.3(h), integral bases in constant extensions"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean first identifies polynomial coefficient base change with constant tensor
base change.  Smooth base change then commutes with integral closure, giving
the explicit $`S`-algebra equivalence

$$`S\otimes_C\overline{C[X]}^{\,N}
  \simeq \overline{S[X]}^{\,S\otimes_C N}.`

The equivalence is first kept over $`S[X]` and then restricted to $`S`; the
image of every pure tensor is proved explicitly.  Thus the normalization ring
in a finite constant extension is identified without an axiom, with the exact
polynomial algebra structure exposed for the finite-place transport.
:::

:::lemma_ "normalization_place_transport" (parent := "hasse_weil") (lean := "BGS.HasseWeil.ratFuncInducedPolynomialAlgebra_eq, BGS.HasseWeil.integralClosureAlgEquivRatFuncFiniteOfAlgebraMap, BGS.HasseWeil.normalizationAlgEquivRatFuncFiniteOfAlgebraMap, BGS.HasseWeil.finiteExtensionFinitePlaceEquivOfNormalizationAlgEquiv, BGS.HasseWeil.finiteExtensionFinitePlaceResidueFieldAlgEquivOfNormalization, BGS.HasseWeil.finiteExtensionFinitePlace_residueField_finrank_eq_of_normalization, BGS.HasseWeil.finiteExtensionFinitePlaceEquivOfNormalizationAlgEquiv_under") (tags := "proved-in-lean, normalization, finite-places, residue-field") (effort := "medium") (priority := "high")

A compatible embedding $`S(X)\hookrightarrow T` identifies any chosen
$`S[X]`-normalization of $`T` with the finite-place model.  Lean
transports height-one ideals, residue fields, their degrees over $`S`, and
contractions to $`S[X]` across this equivalence.  Polynomial algebra
structures need only have equal algebra maps; definitional equality is not
assumed.
:::

:::definition "constant_extension_function_field" (parent := "hasse_weil") (uses := "rational_constant_extension, exact_constant_extension, constant_normalization, normalization_place_transport") (lean := "BGS.HasseWeil.ratFuncToExactConstantExtension, BGS.HasseWeil.ratFuncToExactConstantExtension_injective, BGS.HasseWeil.ratFuncToExactConstantExtension_algebraMap, BGS.HasseWeil.rationalBase_algebraMap_eq, BGS.HasseWeil.rationalBase_scalarTower, BGS.HasseWeil.finiteDimensional_over_extendedRatFunc, BGS.HasseWeil.isSeparable_over_extendedRatFunc, BGS.HasseWeil.scalarTower_constant_ratFunc_exactConstantExtension, BGS.HasseWeil.exactConstantExtensionNormalizationAlgEquiv") (tags := "proved-in-lean, constant-extension, rational-function-field, normalization") (effort := "large") (priority := "high")

Lean constructs the canonical embedding $`S(X)\hookrightarrow S\otimes_C N`,
proves compatibility with the original copy of $`C(X)`, and supplies the
finite separable function-field structure.  It then identifies the
$`S[X]`-normalization from constant base change with the exact finite-place
normalization.
:::

:::lemma_ "infinity_normalization" (parent := "hasse_weil") (uses := "infinity_reciprocal_localization, constant_normalization, constant_extension_function_field") (lean := "BGS.HasseWeil.ratFuncToExactConstantExtension_reciprocal_X, BGS.HasseWeil.exactConstantExtensionReciprocalPolynomialAlgebra_eq, BGS.HasseWeil.finiteFieldReciprocalNormalizationAlgEquiv, BGS.HasseWeil.exactConstantExtensionInfinityAffineNormalizationAlgEquiv, BGS.HasseWeil.exactConstantExtensionInfinityAffineNormalization_map_primeCompl, BGS.HasseWeil.exactConstantExtensionInfinityNormalizationLocalizationRingEquiv") (tags := "proved-in-lean, constant-extension, infinity-place, localization") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "115, Theorem 3.6.3(h), integral bases in constant extensions"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

In the reciprocal coordinate $`Y=X^{-1}`, smooth base change identifies the
constant extension of the affine normalization with the normalization over
$`S[Y]`.  Transporting the prime-complement localization then gives a ring
equivalence with the actual infinity integral closure of
$`S\otimes_C N/S(X)`.
:::

:::lemma_ "constant_extension_infinity_places" (parent := "hasse_weil") (uses := "infinity_normalization, constant_residues") (lean := "BGS.HasseWeil.ratFunc_isFractionRing_reciprocalPolynomial, BGS.HasseWeil.exactConstantExtensionDownstairsInfinityPlace, BGS.HasseWeil.exactConstantExtensionDownstairsResidueFieldAlgEquiv, BGS.HasseWeil.exactConstantExtensionUpstairsInfinityPlace, BGS.HasseWeil.exactConstantExtensionUpstairsResidueFieldRingEquiv, BGS.HasseWeil.exactConstantExtensionInfinityTensorIdeal_isMaximal, BGS.HasseWeil.exactConstantExtensionInfinityPlace_degree_eq_div_gcd, BGS.HasseWeil.exactConstantExtensionInfinityPlace_degree_eq_one_of_dvd, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlaceEquiv, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlaceEquiv_under, BGS.HasseWeil.exactConstantExtensionPresentedInfinityResidueFieldRingEquiv") (tags := "proved-in-lean, constant-extension, infinity-places, degree-formula") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "115, Theorem 3.6.3(g), residue fields under constant extension"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "190, Lemma 5.1.9(d), degree and splitting formulas"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The reciprocal normalization now produces actual downstairs and upstairs
infinity places and identifies their residue fields.  Maximality and residue
finiteness are derived internally.  Their degrees obey

$$`\deg_S(Q)=\frac{\deg_C(P)}{\gcd([S:C],\deg_C(P))},`

so a downstairs degree dividing $`[S:C]` gives an $`S`-rational upstairs
infinity place.
:::

:::lemma_ "constant_residues" (parent := "hasse_weil") (uses := "constant_normalization, finite_field_subfields") (lean := "BGS.HasseWeil.constantTensorResidueAlgHom, BGS.HasseWeil.constantTensorResidueAlgHom_surjective, BGS.HasseWeil.constantTensorResidue_finrank_eq_lcm, BGS.HasseWeil.finiteFieldConstantExtensionIntegralClosureRingHom, BGS.HasseWeil.finiteFieldConstantExtensionResidueFieldAlgEquiv, BGS.HasseWeil.finiteFieldConstantExtensionDownstairsIdeal_isMaximal, BGS.HasseWeil.finiteFieldConstantExtensionResidue_finrank_eq_lcm, BGS.HasseWeil.finiteFieldConstantExtensionResidue_finrank_over_constants_eq_div_gcd, BGS.HasseWeil.finiteFieldConstantExtensionResidue_finrank_eq_one_of_dvd") (tags := "proved-in-lean, constant-extension, normalization, residue-field, finite-fields") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "115, Theorem 3.6.3(g), residue-field composita"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For a maximal ideal $`q` of $`S\otimes_C R` and its contraction $`p` to
$`R`, Lean proves that the canonical map

$$`S\otimes_C\kappa(p)\longrightarrow\kappa(q)`

is surjective.  When the fields are finite, this gives

$$`[\kappa(q):C]
  =\operatorname{lcm}([S:C],[\kappa(p):C]).`

Lean transports this formula across `constant_normalization` to maximal ideals
of the actual base-changed normalization and proves

$$`[\kappa(q):S]
  =\frac{[\kappa(p):C]}{\gcd([S:C],[\kappa(p):C])}.`

Thus $`q` is rational over $`S` whenever $`[\kappa(p):C]` divides $`[S:C]`.
Lean also proves that $`p` is maximal.  The generic normalization-to-place
transport is instantiated for the canonical embedding of $`S(X)` into the
exact constant extension in `constant_extension_function_field`.
:::

:::lemma_ "constant_extension_finite_places" (parent := "hasse_weil") (uses := "constant_normalization, constant_residues, constant_extension_function_field") (lean := "BGS.HasseWeil.exactConstantExtensionTensorNormalizationHeightOne, BGS.HasseWeil.exactConstantExtensionUpstairsFinitePlace, BGS.HasseWeil.exactConstantExtensionUpstairsResidueField_finite, BGS.HasseWeil.exactConstantExtensionUpstairsIdeal_isMaximal, BGS.HasseWeil.exactConstantExtensionDownstairsFinitePlace, BGS.HasseWeil.exactConstantExtensionDownstairsFinitePlace_asIdeal, BGS.HasseWeil.exactConstantExtensionFinitePlace_degree_eq_div_gcd") (tags := "proved-in-lean, constant-extension, finite-places, degree-formula") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "115, Theorem 3.6.3(g), place degrees under constant extension"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Height-one ideals in the explicit constant-extension normalization now define
actual finite places over $`S`, and their contractions define actual finite
places over $`C`.  Their degrees satisfy

$$`\deg_S(Q)=\frac{\deg_C(P)}{\gcd([S:C],\deg_C(P))}.`

Maximality and finiteness of both residue fields are derived internally, not
passed as downstream hypotheses.
:::

:::lemma_ "constant_extension_rational_places" (parent := "hasse_weil") (uses := "place_towers, constant_extension_finite_places") (lean := "BGS.HasseWeil.finiteExtensionFinitePlace_degree_dvd_relative_finrank_of_under_degree_one, BGS.HasseWeil.exactConstantExtensionUpstairsFinitePlace_degree_eq_one_of_under_degree_one") (tags := "proved-in-lean, constant-extension, rational-places, degree-divisibility") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204, Proposition 5.2.8(c), rational-place degree argument"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

A place above a degree-one base place has degree dividing the Galois degree.
Therefore, if $`[N:C(X)]` divides $`[S:C]`, every corresponding finite place
in the exact constant extension has degree one over $`S`.
:::

:::definition "extension_counts" (parent := "hasse_weil") (lean := "BGS.HasseWeil.extensionPlaneCurvePolynomial, BGS.HasseWeil.extensionAffinePointCount, BGS.HasseWeil.extensionField_natCard, BGS.HasseWeil.extensionAffinePointCount_one, BGS.HasseWeil.extensionPlaneCurvePolynomial_absolutelyIrreducible, BGS.HasseWeil.extensionPlaneCurveFunctionField_algebraicClosure_eq_bot") (tags := "proved-in-lean, finite-field-extension, point-count")

Lean fixes canonical degree-$`n` finite-field extensions, base-changes a
bivariate polynomial, and defines its affine point count there.  It proves the
extension cardinality, compatibility at degree one, preservation of absolute
irreducibility, and exactness of the constant field of the resulting function
field.  These definitions provide the sequence to which zeta rationality and
the even-extension estimate must eventually be applied.
:::

# Affine points and normalization

This section compares affine points with degree-one places of the
normalization and controls the exceptional affine fibers.

:::lemma_ "affine_partition" (parent := "hasse_weil") (uses := "extension_counts") (lean := "BGS.HasseWeil.affinePlaneCurvePoint_card_eq_regular_add_critical, BGS.HasseWeil.regularPoint_card_eq_punctured_add_one, BGS.HasseWeil.affineSecondCoordinateCriticalPoints_card_le") (tags := "proved-in-lean, affine-points, critical-locus")

Affine points are partitioned into points where the chosen partial derivative
is nonzero and the complementary critical locus.  The regular points can be
punctured at one selected pole point, and the critical locus has an explicit
resultant bound.  The local-normalization comparison is stated in
`normalization_places`.
:::

:::lemma_ "affine_fiber_bound" (parent := "hasse_weil") (uses := "extension_counts") (lean := "BGS.HasseWeil.affinePlaneCurvePointEquivSecondCoordinateRoots, BGS.HasseWeil.affinePlaneCurvePoint_card_le_card_mul_secondDegree, BGS.HasseWeil.affinePlaneCurvePointEquivSwap, BGS.HasseWeil.affinePlaneCurvePoint_card_le_card_mul_firstDegree, BGS.HasseWeil.affinePlaneCurveZeros_card_eq_affinePlaneCurvePoint_card") (tags := "proved-in-lean, affine-points, fiber-count") (effort := "small")

Fiberwise root counting gives both elementary estimates
$`\#C(K)\leq \#K\,d_y` and $`\#C(K)\leq \#K\,d_x`.  Lean also identifies the
internal affine-point subtype with the external finite zero set.  These bounds
will handle the large-bidegree case in the final affine comparison.
:::

:::lemma_ "coordinate_shear" (parent := "hasse_weil") (lean := "BGS.HasseWeil.planeYShearAlgEquiv, BGS.HasseWeil.planeXShearAlgEquiv, BGS.HasseWeil.card_affinePlaneCurveZeros_planeYShearAlgEquiv, BGS.HasseWeil.card_affinePlaneCurveZeros_planeXShearAlgEquiv, BGS.HasseWeil.planeYShearAlgEquiv_absolutelyIrreducible_iff, BGS.HasseWeil.planeXShearAlgEquiv_absolutelyIrreducible_iff, BGS.HasseWeil.planeYShearAlgEquiv_pderivs_ne_zero_of_zero_ne, BGS.HasseWeil.planeXShearAlgEquiv_pderivs_ne_zero_of_ne_zero, BGS.HasseWeil.exists_pow_eq_of_forall_pderiv_eq_zero, BGS.HasseWeil.not_irreducible_of_forall_pderiv_eq_zero, BGS.HasseWeil.pderiv_zero_ne_zero_or_pderiv_one_ne_zero_of_absolutelyIrreducible, BGS.HasseWeil.pderivs_ne_zero_or_planeYShear_or_planeXShear_of_absolutelyIrreducible") (tags := "proved-in-lean, coordinate-change, point-count, irreducibility") (effort := "medium")

The two invertible shears $`(x,y)\mapsto(x,x+y)` and
$`(x,y)\mapsto(x+y,y)` preserve affine point counts and absolute
irreducibility and satisfy exact chain rules.  Simultaneous vanishing over a
perfect field makes the polynomial a $`p`-th power.  Hence an absolutely
irreducible plane polynomial over a finite field either already has two
nonzero partials or one of the two shears supplies them.
:::

:::lemma_ "normalization_places" (parent := "hasse_weil") (uses := "affine_partition, riemann_spaces") (lean := "BGS.HasseWeil.planeCurvePartialYLocalization_isStandardSmooth, BGS.HasseWeil.squareExtensionClosedPoint_localization_isDiscreteValuationRing, BGS.HasseWeil.finrank_residueField_eq_of_commonLocalization, BGS.HasseWeil.squareExtensionClosedPointExhaustiveFinitePlace_placeDegree_eq_residueDegree_of_partialY, BGS.HasseWeil.squareExtensionClosedPointExhaustiveFinitePlace_placeDegree_le_two_of_partialY, BGS.HasseWeil.squareExtensionClosedPointExhaustiveFinitePlace_residue_squareFrobenius_of_partialY") (tags := "proved-in-lean, normalization, local-dvr, residue-field") (effort := "large") (priority := "high")
%%%
source := {
  document := "tao-bombieri-stepanov-2014"
  spans := #[
    {
      page := "semantic reconstruction, regular affine points"
      text := some {
        path := "source/TaoBombieriStepanov2014.tex"
        startLine := 103
        endLine := 113
      }
      pdf := some { path := "source/TaoBombieriStepanov2014.pdf" }
    }
  ]
}
%%%

At a point where the second partial derivative is nonzero, Lean proves that the
affine local ring is smooth and a discrete valuation ring.  It identifies this
local ring with the selected normalization valuation ring, proves equality of
the affine-centre and normalization residue degrees, obtains degree at most two
for quadratic-extension centres, and proves the quadratic Frobenius identity
in the normalization residue field.  These are committed local-normalization
theorems.  The degree-one specialization for a regular rational point over the
full square field is `regular_degree_one`.
:::

:::lemma_ "regular_degree_one" (parent := "hasse_weil") (uses := "normalization_places") (lean := "BGS.HasseWeil.affinePointExhaustiveFinitePlace_degree_eq_one_of_partialY") (tags := "proved-in-lean, normalization, affine-point, degree-one") (effort := "medium") (priority := "high")

Specialize the smooth local comparison to every
`AffineSecondCoordinateRegularPoint f` over the full square constant field and
prove that `affinePointExhaustiveFinitePlace` has constant-field degree one.
This supplies the quantified geometric premise of the square-field count from
the local DVR and residue-degree comparison.
:::

:::lemma_ "affine_into_normalization" (parent := "hasse_weil") (uses := "affine_partition, regular_degree_one") (lean := "BGS.HasseWeil.affineSecondCoordinateRegularPointToRationalFinitePlace, BGS.HasseWeil.affineSecondCoordinateRegularPointToRationalFinitePlace_injective, BGS.HasseWeil.affineSecondCoordinateRegularPoint_card_le_rationalPlaceCount, BGS.HasseWeil.affinePlaneCurvePoint_card_le_rationalPlaceCount_add_critical") (tags := "proved-in-lean, affine-points, normalization, count-comparison") (effort := "medium")

Regular affine points inject into degree-one finite normalization places.
Hence the affine count is at most the full rational-place count plus the
explicit critical locus.  The reverse inequality is handled separately by
centering every good rational finite place.
:::

:::lemma_ "affine_exceptional_fibers" (parent := "hasse_weil") (uses := "affine_into_normalization") (lean := "BGS.HasseWeil.ratFuncRationalFinitePlaceEquiv, BGS.HasseWeil.secondCoordinateAffineExceptionalPolynomial_ne_zero, BGS.HasseWeil.secondCoordinateAffineExceptionalBase_card_le, BGS.HasseWeil.rationalBasePlace_primesOver_card_le_finrank, BGS.HasseWeil.rationalFinitePlaceOverPolynomialZeros_card_le, BGS.HasseWeil.planeCurveSecondCoordinate_mem_valuationSubringAtPrime_of_affineExceptional_ne_zero, BGS.HasseWeil.planeCurveGoodRationalFinitePlaceCenter, BGS.HasseWeil.planeCurveGoodRationalFinitePlaceCenter_secondCoordinate_residue, BGS.HasseWeil.exists_planeCurveGoodRationalFinitePlace_centeredCoordinateRingHom, BGS.HasseWeil.planeCurveGoodRationalFinitePlaceCenter_partialY_ne_zero, BGS.HasseWeil.planeCurveGoodRationalFinitePlace_valuationSubring_eq_dominating, BGS.HasseWeil.planeCurveGoodRationalFinitePlaceCenter_injective, BGS.HasseWeil.planeCurveExceptionalRationalFinitePlace_card_le, BGS.HasseWeil.finiteExtensionRationalPlaceCount_le_affine_add_exceptional") (tags := "proved-in-lean, affine-points, normalization, exceptional-fibers") (effort := "large")

The leading coefficient times the discriminant cuts out every exceptional
base fiber.  Outside it, Lean constructs the affine center of every rational
finite place, identifies the centered smooth local ring with the dominating
normalization DVR, and proves that the center map is injective.  Together
with the exceptional-fiber bound this gives the unconditional reverse count
comparison.
:::

:::lemma_ "affine_error_arithmetic" (parent := "hasse_weil") (uses := "affine_fiber_bound, affine_into_normalization, affine_exceptional_fibers") (lean := "BGS.HasseWeil.abs_affine_sub_card_le_of_two_sided_count_comparison, BGS.HasseWeil.abs_pointCount_sub_card_le_two_mul_sqrt_of_fiber_bound, BGS.HasseWeil.criticalCount_le_two_mul_sqrt, BGS.HasseWeil.zetaDegree_mul_sqrt_le_three_mul_bidegree, BGS.HasseWeil.one_le_sqrt_mul_bidegree") (tags := "proved-in-lean, affine-points, numerical-transfer") (effort := "small")

Lean isolates the final numerical bookkeeping.  A two-sided normalization
comparison transfers an intrinsic Hasse--Weil estimate to affine points.  The
large-bidegree branch follows from fiber counting; in the small branch the
resultant bound for the critical locus is already on square-root scale.  The
coarse zeta-degree budget and constant boundary term also fit a universal
bidegree coefficient.
:::

:::::::

#docs (Manual) hasseWeilStepanov "Hasse--Weil: Bombieri--Stepanov upper bound" :=
:::::::

# Square-field Stepanov

This section constructs the half-Frobenius auxiliary and proves the one-sided
Bombieri--Stepanov estimate over sufficiently large square fields.

:::lemma_ "square_restriction" (parent := "hasse_weil") (uses := "riemann_spaces") (lean := "BGS.HasseWeil.squareRootFrobeniusCoefficients, BGS.HasseWeil.exists_squareFieldStepanovAuxiliary_of_target_finrank_upper, BGS.HasseWeil.squareFieldStepanovFirstRestriction_eq_zero_or_principalDivisor_pos_at_finitePlace") (tags := "proved-in-lean, square-field, semilinear-restriction") (effort := "large") (priority := "high")
%%%
source := {
  document := "tao-bombieri-stepanov-2014"
  spans := #[
    {
      page := "semantic reconstruction, Stepanov restrictions"
      text := some {
        path := "source/TaoBombieriStepanov2014.tex"
        startLine := 75
        endLine := 101
      }
      pdf := some { path := "source/TaoBombieriStepanov2014.pdf" }
    }
  ]
}
%%%

Over a quadratic finite extension $`S/K`, Lean implements the two
half-Frobenius restriction maps.  Coefficients of the first restriction are
transported by the square-root Frobenius automorphism, so that the restriction
is semilinear over $`S` but linear over $`K`.  At a finite place whose residue
field satisfies $`z^{|K|^2}=z`, the local Frobenius identity converts the
vanishing of the second restriction into positive order of the nonzero first
restriction.
:::

:::lemma_ "square_auxiliary" (parent := "hasse_weil") (uses := "riemann_spaces, square_restriction") (lean := "BGS.HasseWeil.exists_squareField_onePointStepanovAuxiliary_of_degree_one, BGS.HasseWeil.stepanov_dimension_inequality") (tags := "proved-in-lean, square-field, stepanov-auxiliary") (effort := "large") (priority := "high")

Let $`s=|K|`, $`\ell=s-1`, and $`m=s+2g`.  Given a degree-one pole place,
the Riemann lower bound, exact constants, and
$`(g+1)(g+2)\leq s`, rank--nullity constructs coefficients for which the
second restriction vanishes and the first restriction is nonzero.  The
theorem returns the section families and all restriction identities explicitly;
it does not choose the normalization places on which zeros will be counted.
:::

:::lemma_ "square_zero_count" (parent := "hasse_weil") (uses := "square_auxiliary") (lean := "BGS.HasseWeil.Fintype.card_le_of_squareFieldStepanovAuxiliary, BGS.HasseWeil.stepanov_zero_bound") (tags := "proved-conditional-composition, square-field, zero-count") (effort := "large") (priority := "high")

For an injective finite family of selected finite places away from the pole,
and assuming the quadratic Frobenius identity in every residue field, the
nonzero first restriction has positive order at every selected place.  The
product formula and its one-point pole budget give

$$`\#I\leq \ell+s m
  \leq s^2+(2g+1)s.`

This is the abstract conditional zero count.  The geometric family of
degree-one places is supplied when it is applied in `square_upper`.
:::

:::theorem "square_upper" (parent := "hasse_weil") (uses := "affine_partition, square_zero_count, regular_degree_one") (lean := "BGS.HasseWeil.planeCurve_affinePoint_card_le_of_regularPlace_degree_one, BGS.HasseWeil.planeCurve_affinePoint_card_le_bidegree_of_regularPlace_degree_one, BGS.HasseWeil.planeCurve_affinePoint_card_le_squareField, BGS.HasseWeil.planeCurve_affinePoint_card_le_squareField_bidegree") (tags := "proved-in-lean, square-field, stepanov-upper") (effort := "large") (priority := "high")
%%%
source := {
  document := "tao-bombieri-stepanov-2014"
  spans := #[
    {
      page := "semantic reconstruction, weak square-field bound"
      text := some {
        path := "source/TaoBombieriStepanov2014.tex"
        startLine := 51
        endLine := 113
      }
      pdf := some { path := "source/TaoBombieriStepanov2014.pdf" }
    }
  ]
}
%%%

Lean assembles the regular-point zero count, the one removed pole point, and
the critical-locus estimate into an upper bound for the full affine curve over
sufficiently large square fields.  The first endpoint retains the actual
critical-locus cardinality, and the second replaces it by its explicit
bidegree bound.  Both theorems explicitly assume that every selected regular
affine point gives a degree-one exhaustive place.  Thus the square-field
composition is proved.  The automatic endpoints discharge that last premise
with `regular_degree_one`, giving the square-field estimate from irreducibility,
the two nonzero partials, exact constants, the square-cardinality identity, and
the stated large-field inequality.  This is the one-sided estimate used in the
Galois-twist argument.
:::

# Intrinsic Riemann-space budget

This section develops the intrinsic genus budget used in the ordinary
Bombieri--Stepanov estimate and in the optional fixed-field route.

:::lemma_ "intrinsic_riemann_budget" (parent := "hasse_weil") (uses := "riemann_spaces, riemann_roch_core") (lean := "BGS.HasseWeil.finiteExtensionPrincipalDivisor_ratFuncX_inl_nonnegative, BGS.HasseWeil.finiteExtensionPrincipalDivisor_ratFuncX_inr_eq_neg_ramificationIdx, BGS.HasseWeil.finiteExtensionPoleDivisor_ratFuncX_inr_eq_ramificationIdx, BGS.HasseWeil.finiteExtensionHeight_ratFuncX_eq_finrank, BGS.HasseWeil.infinitySupported_riemann_lower_of_monomial, BGS.HasseWeil.infinitySupported_riemann_lower_of_primitive, BGS.HasseWeil.exists_nonzero_primitive_element, BGS.HasseWeil.finitePlace_riemann_lower_of_primitive, BGS.HasseWeil.exists_finitePlace_riemann_lower_budget, BGS.HasseWeil.finiteExtension_onePoint_riemann_lower_of_genus") (tags := "proved-in-lean, function-fields, primitive-element, genus, riemann-space") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "21--23, Proposition 1.4.14 and Theorem 1.4.17(a)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For every finite separable extension of $`K(X)`, Lean chooses a nonzero
primitive element and uses the independent monomials $`X^i y^j` to construct
a natural-number Riemann budget.  The exact pole divisor of $`X` makes its
multiples cofinal among effective divisors supported above infinity.
Principal parts then transfer the same budget to every finite place.  No
genus, Riemann--Roch theorem, or external geometric premise is assumed.
When the constant field is full, the connected Riemann--Roch theorem also
proves directly that the intrinsic genus is one simultaneous budget for every
finite or infinity one-point Riemann space.  Thus uniformity of the twist
budgets reduces exactly to a uniform genus bound.
:::

:::theorem "bombieri_square_upper" (parent := "hasse_weil") (uses := "riemann_roch_core, square_restriction, square_zero_count, rational_places") (tags := "gap, source-specified, lorenzini, square-field, stepanov-upper") (effort := "large") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "355--357, Theorem 5.4 and equations (5.4)--(5.6) (scans 373--375)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 368
      endLine := 534
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Let $`X/\mathbf F_q` be a nonsingular complete curve of genus $`g`, with
$`q=p^\alpha`, $`\alpha` even, and $`q>(g+1)^4`.  Then

$$`|X(\mathbf F_q)|\leq q+1+(2g+1)\sqrt q.`

If $`X(\mathbf F_q)` is empty there is nothing to prove.  Otherwise choose a
rational point $`P`, put $`H_m=H^0(X,mP)`, and choose a basis adapted to the
pole-order filtration.  For $`r=p^{\alpha/2}=\sqrt q`, $`m=r+2g`, and an
integer $`\ell` satisfying

$$`g+\frac{g\sqrt q}{g+1}<\ell<\sqrt q,`

the valuation separation $`\ell r<q` makes the expansion in
$`H_\ell^rH_m^q` unique.  Riemann--Roch and rank--nullity then give a nonzero
auxiliary $`F` whose restriction vanishes.  It is an $`r`-th power, vanishes
at every rational point other than $`P` with multiplicity at least $`r`, and
has pole degree at most $`\ell r+qm`.  Thus

$$`r\bigl(|X(\mathbf F_q)|-1\bigr)\leq\ell r+qm,`

which yields the displayed bound.  This node records the exact numerical
form of Lorenzini X.5.4; the current Lean square-field theorem is a weaker
degree-dependent form and does not yet discharge this node.
:::

:::::::

#docs (Manual) hasseWeilBaseChange "Hasse--Weil: base change and genus" :=
:::::::

# Base change of divisors and genus

Lorenzini changes the finite ground field before applying the square-field and
Galois-cover estimates.  The following three results are the direct
Riemann-space proof that this operation preserves genus.  They replace the
coefficientwise different calculation in the selected route.

:::definition "base_change_divisors" (parent := "hasse_weil") (uses := "constant_extension_function_field, place_towers") (tags := "gap, source-specified, lorenzini, constant-extension, divisors") (effort := "medium") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "242, Lemma 4.14 (scan 260)"
      text := some {
        path := "source/LorenziniVII.tex"
        startLine := 20
        endLine := 49
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "243, Definition 4.16 and constant function fields (scan 261)"
      text := some {
        path := "source/LorenziniVII.tex"
        startLine := 93
        endLine := 117
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "324, Lemma 5.4 (scan 342)"
      text := some {
        path := "source/LorenziniIX.tex"
        startLine := 119
        endLine := 128
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

Let $`X/k` be a nonsingular complete curve and let $`k'/k` be finite
separable.  Lemma VII.4.14 and Definition VII.4.16 construct the regular
compositum $`k'(X)`, the function field of the constant base change.
Lemma IX.5.4 identifies divisors on $`X` with invariant divisors after passage
to an algebraic closure.  The finite-extension statement required here is the
bridge between those two results: extension of valuations sends $`D` to a
divisor $`D_{k'}`, agrees with the common-algebraic-closure construction, and
preserves degree after residue degrees and splitting multiplicities are summed
over every fiber.  None of the three cited results states that finite
degree-preservation bridge directly; it is the content of this gap.
:::

:::lemma_ "base_change_riemann_spaces" (parent := "hasse_weil") (uses := "base_change_divisors, riemann_roch_core") (tags := "gap, source-specified, lorenzini, constant-extension, riemann-space") (effort := "large") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "325--326, Proposition 5.6 (scans 343--344)"
    text := some {
      path := "source/LorenziniIX.tex"
      startLine := 222
      endLine := 313
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For every divisor $`D` defined over $`k`, scalar extension induces

$$`H^0(X,D)\otimes_k k'\;\simeq\;
H^0(X_{k'},D_{k'}).`

Equivalently,

$$`\dim_k H^0(X,D)=\dim_{k'}H^0(X_{k'},D_{k'}).`

Lorenzini proves that a $`k`-basis of the invariant Riemann space remains a
$`\bar k`-basis after passage to an algebraic closure.  Once
`base_change_divisors` identifies the finite base-changed divisor inside that
common closure, faithful descent gives the displayed finite scalar-extension
isomorphism.  The isomorphism is therefore an explicit consequence to prove,
not the literal statement of Proposition IX.5.6.  Corollary IX.5.9 and
Corollary IX.5.11 give the corresponding $`H^1` and canonical-divisor
comparisons after algebraic closure.
:::

:::theorem "constant_extension_genus" (parent := "hasse_weil") (uses := "base_change_riemann_spaces, constant_extension_function_field") (tags := "optional-route, gap, source-specified, lorenzini, constant-extension, genus") (effort := "small") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "326--327, Corollaries 5.8--5.11 (scans 344--345)"
    text := some {
      path := "source/LorenziniIX.tex"
      startLine := 316
      endLine := 367
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Let $`k` be perfect and $`k'/k` finite.  The base changes of $`X/k` and
$`X_{k'}/k'` to a common algebraic closure are the same curve.  Applying
Corollary IX.5.8 over both ground fields therefore gives

$$`g(X_{k'}/k')=g(X/k).`

Canonical divisors and their Riemann--Roch dimensions are preserved as well.
This is the direct genus-invariance theorem used in Lorenzini VIII.6 and X.6;
it requires no coefficientwise comparison of different ideals.
:::

:::::::

#docs (Manual) hasseWeilConstantExtensionGenus "Hasse--Weil: constant-extension genus" :=
:::::::

# Constant-extension genus

Stichtenoth proves that an exact finite extension of constants is unramified
and preserves genus.  The finite and reciprocal-infinity normalization charts
give the two local coefficient calculations; the exhaustive place split then
identifies the total different and hence the genus.

:::lemma_ "twist_riemann_budget" (parent := "hasse_weil") (uses := "frobenius_twist_fields, intrinsic_riemann_budget") (lean := "BGS.HasseWeil.finiteDimensional_frobeniusTwistField_over_ratFunc, BGS.HasseWeil.isSeparable_frobeniusTwistField_over_ratFunc, BGS.HasseWeil.exists_common_frobeniusTwistField_finitePlace_riemann_lower_budget, BGS.HasseWeil.exists_common_frobeniusTwistField_exactConstants_and_riemann_budget, BGS.HasseWeil.rationalInfinityPlace_card_frobeniusTwistField_le_original_finrank") (tags := "optional-route, proved-in-lean, frobenius-twists, exact-constants, riemann-space, degree") (effort := "large") (priority := "low")

For a fixed finite Galois constant extension $`S/C`, every Frobenius-twist
fixed field is finite separable over $`C(X)` and has exact constant field
$`C`.  Finiteness of the twist family gives a common natural-number Riemann
budget.  Every twist has the same $`C(X)`-degree as $`N`, so its rational
infinity-place contribution is bounded by $`[N:C(X)]`, uniformly in $`S`.
The intrinsic genus supplies a common Riemann budget for varying $`S` once
genus invariance under exact extension of constants is known.
:::

:::lemma_ "constant_extension_genus_support" (parent := "hasse_weil") (uses := "canonical_cotrace, constant_extension_finite_places, constant_extension_infinity_places, constant_extension_function_field") (lean := "BGS.HasseWeil.coefficientPolynomial_formallyUnramified, BGS.HasseWeil.coefficientRationalFunction_isSeparable, BGS.HasseWeil.coefficientPolynomial_differentIdeal_eq_top, BGS.HasseWeil.finiteFieldPolynomial_differentIdeal_eq_top, BGS.HasseWeil.ratFuncInfinityIntegers_isLocalization_coefficientPrimeCompl, BGS.HasseWeil.ratFuncInfinityIntegers_coefficient_moduleFinite, BGS.HasseWeil.ratFuncInfinityIntegers_coefficient_formallyUnramified, BGS.HasseWeil.ratFuncInfinityIntegers_coefficient_differentIdeal_eq_top, BGS.HasseWeil.exactConstantExtension_rationalFunctionRanges_linearDisjoint, BGS.HasseWeil.exactConstantExtension_finiteDifferent_eq_map, BGS.HasseWeil.exactConstantExtensionInfinityNormalizationAlgebra, BGS.HasseWeil.exactConstantExtensionInfinityNormalizationAlgebra_coe, BGS.HasseWeil.exactConstantExtension_infinityDifferent_eq_map, BGS.HasseWeil.multiplicity_map_eq_ramificationIdx_mul_under, Finsupp.sum_mul_degree_eq_of_div_gcd_fibers, BGS.HasseWeil.finiteExtensionTotalDifferentEffectiveDivisor, BGS.HasseWeil.finiteExtensionTotalDifferentEffectiveDivisor_inl, BGS.HasseWeil.finiteExtensionTotalDifferentEffectiveDivisor_inr, BGS.HasseWeil.finiteExtensionTotalDifferentEffectiveDivisor_degree, BGS.HasseWeil.exactConstantExtension_extended_algebraicClosure_eq_bot, BGS.HasseWeil.finiteExtension_totalDifferentDegree_eq_two_finrank_add_two_genus_sub_two, BGS.HasseWeil.finiteExtension_totalDifferentDegree_eq_two_finrank_add_two_genus_sub_two_intrinsic, BGS.HasseWeil.finiteExtension_totalDifferentDegree_eq_two_finrank_add_two_genus_sub_two_of_compatibleChart, BGS.HasseWeil.exactConstantExtension_finrank_over_extendedRatFunc_eq") (tags := "proved-in-lean, constant-extension, different, riemann-hurwitz, genus") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "98--99, Corollary 3.4.12 and Theorem 3.4.13"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "114--117, Theorem 3.6.3(a),(b), equations (3.77),(3.78)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

For a finite separable extension $`S/C`, the coefficientwise extension
$`C[X]\subset S[X]` has unit different.
Inside the common top field, the copies of $`S(X)` and $`N` are linearly
disjoint over $`C(X)` and generate the whole field.  The cotrace
Riemann--Hurwitz equality, the degree identity
$`[S\otimes_C N:S(X)]=[N:C(X)]`, and the exact ideal-multiplicity formula
hold for the precise $`S(X)`-induced algebra structure.  The finite
normalization different satisfies
$`\mathfrak D_{S[X]}=\mathfrak D_{C[X]}\mathcal O_S` exactly, using the
linear-disjoint compositum theorem and the unit different in the constant
direction.

At infinity, the reciprocal infinity ring over $`S`
is the localization of $`S[X]` by the image of the reciprocal-origin
complement over $`C`; a product over the finite Galois group supplies the
required descended denominator.  It follows that the extension of infinity
valuation rings is finite, formally unramified, and has unit different.

The original different extends to the enlarged infinity normalization, with
the coefficient-direction different contributing the unit ideal.
For finitely supported weighted-degree sums, pulled-back
multiplicities, degree divided by a gcd, and fiber cardinality equal to that
gcd imply equality of weighted sums, without a finiteness assumption on the
ambient place types.  The total-different multiplicities form an exhaustive
effective divisor whose degree is the sum of its finite and above-infinity
parts.  Together with the ramification-one, fiber-cardinality, and
degree-divided-by-gcd formulas, this reduces preservation of total different
degree to pointwise preservation of the coefficients.
:::

:::theorem "constant_extension_unramified" (parent := "hasse_weil") (uses := "constant_extension_finite_places, constant_extension_infinity_places") (lean := "BGS.HasseWeil.exactConstantExtensionFinitePlace_ramificationIdx_eq_one, BGS.HasseWeil.exactConstantExtensionInfinityPlace_ramificationIdx_eq_one") (tags := "proved-in-lean, source-specified, constant-extension, unramified") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "114--115, Theorem 3.6.3(a) and equation (3.77)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Every finite or infinity place in the exact constant extension has
ramification index one over its contracted place.  This is the two-chart form
of Theorem 3.6.3(a).
:::

## Local normalization charts

:::lemma_ "finite_chart_unramified" (parent := "hasse_weil") (uses := "constant_extension_genus_support, constant_extension_finite_places, constant_extension_unramified") (lean := "BGS.HasseWeil.exactConstantExtensionUpstairsFinitePlace_eq_compatibleNormalizationTransport, BGS.HasseWeil.exactConstantExtensionPresentedFinitePlace_ramificationIdx_eq_one") (tags := "proved-in-lean, source-specified, constant-extension, finite-chart, unramified") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "98, Corollary 3.4.12, transitivity of the different"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "114--115, Theorem 3.6.3(a) and equation (3.77)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The presented prime in the $`S[X]`-normalization agrees with transport through
the compatible normalization equivalence and has ramification index one over
its contracted prime.  This is the finite-chart form of the zero relative
different exponent in (3.77).
:::

:::lemma_ "infinity_chart_unramified" (parent := "hasse_weil") (uses := "constant_extension_genus_support, constant_extension_infinity_places, constant_extension_unramified") (lean := "BGS.HasseWeil.exactConstantExtensionInfinityNormalizationBaseChangeRingEquiv, BGS.HasseWeil.exactConstantExtensionInfinityNormalizationBaseChangeRingEquiv_coe, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlace_ramificationIdx_eq_one") (tags := "proved-in-lean, source-specified, constant-extension, infinity-chart, unramified") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "98, Corollary 3.4.12, transitivity of the different"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "114--115, Theorem 3.6.3(a) and equation (3.77)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The reciprocal-coordinate normalization is identified with constant base
change by an explicit ring equivalence.  Under this identification every
presented prime above infinity has ramification index one.  Together with the
finite chart, this covers every place.
:::

:::lemma_ "different_coefficients" (parent := "hasse_weil") (uses := "finite_chart_unramified, infinity_chart_unramified, constant_extension_genus_support") (lean := "BGS.HasseWeil.exactConstantExtension_presented_totalDifferentMultiplicity_eq") (tags := "proved-in-lean, source-specified, constant-extension, different-coefficient") (effort := "small") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "98, Corollary 3.4.12, transitivity of the different"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "115, equation (3.77) in the proof of Theorem 3.6.3"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

For every presented place, finite or above infinity, the coefficient of the
$`S(X)`-different equals the coefficient of the $`C(X)`-different at the
contracted place.  Transitivity of the different and ramification index one
give the equality in both normalization charts.
:::

## From the different to genus

:::theorem "genus_from_different" (parent := "hasse_weil") (uses := "constant_extension_genus_support") (lean := "BGS.HasseWeil.exactConstantExtension_totalDifferentDegree_eq_of_presentedMultiplicity, BGS.HasseWeil.exactConstantExtension_chart_genus_eq_of_presentedMultiplicity") (tags := "proved-conditional-composition, constant-extension, different-degree, genus") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "98--99, Corollary 3.4.12 and Theorem 3.4.13"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "114--115, Theorem 3.6.3(b), equations (3.77),(3.78)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

If every presented upstairs place has the same total-different multiplicity
as its downstairs place, then the total different degrees agree.  The Hurwitz
formula and equality of rational-function extension degrees then imply
equality of the chart genera.
:::

:::theorem "constant_extension_genus_via_different" (parent := "hasse_weil") (uses := "different_coefficients, genus_from_different") (lean := "BGS.HasseWeil.exactConstantExtension_genus_eq") (tags := "proved-in-lean, source-specified, constant-extension, genus") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "114--117, Theorem 3.6.3(b), equations (3.77),(3.78)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The coefficient compatibility identifies the total different degrees.  The
Hurwitz formula, the equality of rational-function extension degrees, and
exactness of the enlarged constants then give genus invariance under exact
finite extension of constants, as in Theorem 3.6.3(b).
:::

:::lemma_ "twist_scalar_extension_transport" (parent := "hasse_weil") (uses := "frobenius_twist_fields, exact_constant_extension") (lean := "BGS.HasseWeil.exactConstantExtensionFrobeniusTwistMultiplicationAlgEquiv, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistMultiplicationAlgEquivOverConstants, FunctionField.genus_eq_of_algEquiv") (tags := "proved-in-lean, constant-extension, frobenius-twists, genus-transport") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "203--204, setup and Proposition 5.2.8(b)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Multiplication identifies the scalar extension of every Frobenius-twist fixed
field with the common top field, as an algebra over the enlarged constants.
Intrinsic genus is preserved by an algebra equivalence over the constant
field.
:::

:::lemma_ "twist_genus_invariance" (parent := "hasse_weil") (uses := "twist_scalar_extension_transport, constant_extension_genus_via_different") (lean := "BGS.HasseWeil.genus_frobeniusTwistField_eq_original") (tags := "proved-in-lean, source-specified, constant-extension, genus, frobenius-twists") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204, Proposition 5.2.8(b)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Apply constant-extension genus invariance on both sides of the multiplication
equivalence.  Every Frobenius-twist fixed field then has the genus of the
original normal closure, which is Proposition 5.2.8(b).
:::

:::::::

#docs (Manual) hasseWeilLorenziniAlternative "Hasse--Weil: Lorenzini alternative" :=
:::::::

# Lorenzini's Frobenius-class route

Lorenzini derives the lower estimate by counting prescribed Frobenius classes
in a regular Galois cover.  Frobenius classes partition the unramified fibers,
up to a fixed finite branch locus, and their bounded average turns a uniform
upper estimate into a lower estimate.  This is a complete mathematical route
to retain alongside the selected exact-twist proof.

:::theorem "regular_galois_closure" (parent := "hasse_weil") (uses := "function_field_galois_closure, galois_closure_constants") (tags := "optional-route, gap, source-specified, lorenzini, galois-closure, constant-field") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "351, Definition 4.1 (scan 369)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 48
      endLine := 68
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Let $`F/\mathbf F_{q_0}(t)` be finite separable, let $`N` be its normal
closure, and let $`C` be the algebraic closure of $`\mathbf F_{q_0}` in $`N`.
Then $`C/\mathbf F_{q_0}` is finite and, over $`C`, the inclusions

$$`C(t)\subset F_C\subset N`

give Galois covers $`Z\to X_C` and $`Z\to\mathbf P^1_C`.  This is exactly the
construction in Definition X.4.1.  It does not yet assert stability under any
further constant extension.
:::

:::lemma_ "regular_constant_extensions" (parent := "hasse_weil") (uses := "regular_galois_closure, exact_constant_extension, constant_extension_galois_product") (tags := "optional-route, gap, derived, exact-constants, linear-disjointness, galois-closure") (effort := "large") (priority := "low")

Because $`C` is the full constant field of $`N`, every finite constant
extension $`S/C` is linearly disjoint from $`N/C`.  Hence the scalar tensor
product is a field of the expected degree.  If $`N/C(t)` is Galois, restriction
identifies its Galois group after scalar extension with the original group;
the scalar extension of $`F_C` remains the corresponding intermediate field.
These are algebraic consequences of exact constants and linear disjointness,
not assertions contained in Lorenzini Definition X.4.1.  Geometry of the
associated curves is treated separately below.
:::

:::lemma_ "closed_place_branch_locus" (parent := "hasse_weil") (uses := "place_towers") (lean := "BGS.HasseWeil.dedekindRamificationLocus, BGS.HasseWeil.dedekindRamificationLocus_finite, BGS.HasseWeil.dedekindBranchLocus, BGS.HasseWeil.dedekindBranchLocus_finite, BGS.HasseWeil.finiteExtensionBranchLocus, BGS.HasseWeil.finiteExtensionBranchLocus_finite") (tags := "proved-in-lean, lorenzini, ramification, closed-places, branch-locus") (effort := "large") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "249, Proposition 5.7 (scan 267)"
    text := some {
      path := "source/LorenziniVII.tex"
      startLine := 232
      endLine := 261
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For a tower $`L/M/K(t)` that is finite and separable over $`K(t)`, define the
branch locus on $`M` as follows.  On the finite chart, take the contractions
of the height-one primes in the support of the different of the normalization
in $`L`; at infinity, add the base places admitting a ramified lift to $`L`.
Lean proves that their union is a finite set of closed places.  This is the
algebraic closed-place form of Proposition VII.5.7.  A degree-$`d` closed
place can contribute $`d` geometric points after scalar extension, so this
theorem alone is not yet the uniform geometric-point bound below.
:::

:::lemma_ "finite_branch_locus" (parent := "hasse_weil") (uses := "closed_place_branch_locus") (tags := "optional-route, gap, source-specified, lorenzini, ramification, geometric-points, branch-locus") (effort := "medium") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "249, Proposition 5.7 (scan 267)"
      text := some {
        path := "source/LorenziniVII.tex"
        startLine := 232
        endLine := 261
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "354, Lemma 4.6 (scan 372)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 236
        endLine := 262
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

For a finite separable morphism $`\pi:Z\to Y`, the branch locus
$`B\subset Y(\overline{\mathbf F}_q)` is finite.  If $`b=|B|`, then for every
$`n\geq1` the number of $`\mathbf F_{q^n}`-rational branch points is at most
$`b`.  To pass from `closed_place_branch_locus` to this statement, one must
identify the geometric points above every closed branch place and bound their
total number by the sum of the residue degrees of the finite closed-place
locus.  That closed-place/geometric-point bridge is the remaining Lean step.
The resulting constant is exactly the branch error used in Lemma X.4.6.
:::

:::::::

#docs (Manual) hasseWeilLorenziniGeometry "Hasse--Weil: regular Galois geometry" :=
:::::::

# Regular Galois geometry

Constant extension preserves the regular cover, its genus, and its finite
branch locus.  These facts make the Galois closure uniform along the chosen
divisible sequence of finite fields.

:::lemma_ "constant_extension_geometry" (parent := "hasse_weil") (uses := "regular_constant_extensions, constant_extension_genus, base_change_divisors, finite_branch_locus") (tags := "optional-route, gap, source-specified, lorenzini, constant-extension, genus, branch-locus") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "249, Proposition 5.7 (scan 267)"
      text := some {
        path := "source/LorenziniVII.tex"
        startLine := 232
        endLine := 261
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "326, Corollary 5.8 (scan 344)"
      text := some {
        path := "source/LorenziniIX.tex"
        startLine := 316
        endLine := 329
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359, permission to extend the ground field (scan 377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 655
        endLine := 668
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "360, asserted independence of the constants (scan 378)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 738
        endLine := 743
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

The base-change statement required at this point is the following.  For every
finite extension $`S/C` in `regular_galois_closure`, scalar extension preserves
the genera of $`X_C` and $`Z`.  A geometric point is ramified after base change
exactly when its contraction is ramified before base change, with the same
ramification index.  Hence the geometric branch subsets for
$`Z\to X_C` and $`Z\to\mathbf P^1_C` are unchanged, not merely bounded in
cardinality.  Together with linear disjointness, the Galois groups,
intermediate subgroup $`H`, genera, and branch constants may therefore be
fixed once and used over every further finite constant extension.  Corollary
IX.5.8 supplies genus invariance.  Proposition VII.5.7 supplies finiteness of
the branch set, but not its base-change invariance.  The sentences on X.359
and X.360 use and later assert this stability without proving it; the exact
ramification and geometric-point comparison remain the content of this gap.
:::

:::theorem "stable_galois_closure" (parent := "hasse_weil") (uses := "constant_extension_geometry, extension_counts") (tags := "optional-route, gap, source-specified, lorenzini, galois-closure, constant-extension, divisible-subsequence") (effort := "small") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "284, setup and proof of Lemma 5.12 (scan 302)"
      text := some {
        path := "source/LorenziniVIII.tex"
        startLine := 87
        endLine := 110
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359, further ground-field extension before equation (6.1) (scan 377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 655
        endLine := 674
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "360, field-independent constants and equation (6.6) (scan 378)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 738
        endLine := 746
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

The fixed-subsequence reconstruction is as follows.  Choose once and for all
an even integer $`e>1` divisible by
$`[C:\mathbf F_{q_0}]` and large enough that

$$`q_0^e>(\max(g(X),g(Z))+1)^4.`

Then $`\mathbf F_{q_0^e}` contains $`C`, its cardinality is a square, and all
Galois groups, genera, and branch constants fixed in
`constant_extension_geometry` remain unchanged.  If $`N_n` is the original
point-count sequence, base change gives the canonical reindexing

$$`\#X_{\mathbf F_{q_0^e}}(\mathbf F_{q_0^{en}})=N_{en}.`

This is the definitional point-count identity used in the proof of Lorenzini
VIII.5.12.  The full zeta-product statement of that lemma assumes that $`e`
is prime to the characteristic, so it is not invoked here: the displayed
identity itself holds for every $`e`.  This is the constant-extension step
suppressed before X.6.  Lorenzini permits further ground-field extension and
later uses constants independent of the field of definition, but does not
spell out this single fixed $`e`; the construction here is the explicit
derivation justified by `constant_extension_geometry`.  It is the reason the
later estimate is needed only on one fixed divisible subsequence.
:::

:::definition "frobenius_element_locus" (parent := "hasse_weil") (uses := "stable_galois_closure, finite_branch_locus, place_towers") (tags := "optional-route, gap, source-specified, lorenzini, frobenius-element, galois-cover") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "351, Corollary 3.8 (scan 369)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 8
        endLine := 18
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "353, Definitions 4.4--4.5 (scan 371)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 158
        endLine := 232
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359, fixed-point operator in the proof of Theorem 6.1 (scan 377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 601
        endLine := 631
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

Let $`\pi:Z\to Y` be a Galois cover over $`k=\mathbf F_q` with group $`G`.
For an unramified geometric point $`\bar P\in Z(\bar k)` above a rational point
of $`Y`, let $`P` be its corresponding closed point of $`Z`.  Its decomposition
group $`D(P)` is attached to this closed point.  The Frobenius element attached
to the chosen geometric lift is the unique $`\sigma\in D(P)` characterized by

$$`\sigma(\bar P)=\operatorname{Fr}_q(\bar P).`

Define

$$`\mathcal N_1(Z/Y,\sigma)=
\{\bar P\in Z(\bar k):\pi(\bar P)\in Y(k),\ P\text{ unramified},\
  \sigma(\bar P)=\operatorname{Fr}_q(\bar P)\}.`

For $`\bar P\in\mathcal N_1(Z/Y,\sigma)`, extend $`\sigma` to $`Z_{\bar k}` and
put $`\psi=\sigma^{-1}\circ\operatorname{Fr}_q`.  Then
$`\psi(\bar P)=\bar P`; at every
$`\bar Q\in\mathcal N_1(Z/Y,\sigma)` and every function regular at $`\bar Q`,

$$`\psi^*f\equiv f\pmod{\mathfrak m_{\bar Q}}.`

Moreover Corollary X.3.8 gives
$`\operatorname{div}(\operatorname{Fr}_q^*f)
=q\,F^{-1}(\operatorname{div}f)`, and hence

$$`\operatorname{ord}_{\bar P}(\psi^*f)
=q\operatorname{ord}_{\bar P}(f).`
:::

:::::::

#docs (Manual) hasseWeilLorenziniStepanov "Hasse--Weil: Frobenius-class upper bound" :=
:::::::

# Frobenius-class upper bound

Riemann--Roch supplies powers with controlled poles at one geometric point.
The twisted Stepanov operator combines them with Frobenius and forces uniform
vanishing on a prescribed Frobenius class.

:::lemma_ "geometric_power_riemann_spaces" (parent := "hasse_weil") (uses := "riemann_roch_core, constant_extension_genus, frobenius_element_locus") (tags := "optional-route, gap, source-expanded, lorenzini, riemann-space, frobenius-power") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "316, Theorem 4.1 and Corollary 4.2 (scan 334)"
      text := some {
        path := "source/LorenziniIX.tex"
        startLine := 23
        endLine := 66
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "356--357, power spaces in the proof of Theorem 5.4 (scans 374--375)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 394
        endLine := 503
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359, power spaces in the proof of Theorem 6.1 (scan 377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 609
        endLine := 642
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

For a geometric point $`P` put
$`H_m=H^0(Z_{\bar k},mP)`.  These spaces are finite-dimensional over
$`\bar k`, not over $`\mathbf F_q`.  If $`r=p^\mu`, then

$$`H_m^r=\{f^r:f\in H_m\}`

is a $`\bar k`-subspace of the same dimension because $`\bar k` is perfect;
the powering map is Frobenius-semilinear.  The pullback $`\psi^*` is an
injective $`\bar k`-algebra homomorphism and satisfies

$$`\psi^*(H_m)\subseteq H_{qm}\cap\bar k(Z)^q
\subseteq H_{qm}\cap\bar k(Z)^r`

whenever $`r\mid q`.  The last inclusion is the multiplicity input omitted
from Lorenzini's sketch: the relative Frobenius is a $`q`-th power on
$`\bar k(Z)`, and an automorphism preserves the set of $`q`-th powers.
:::

:::lemma_ "twisted_stepanov_kernel" (parent := "hasse_weil") (uses := "geometric_power_riemann_spaces, frobenius_element_locus") (tags := "optional-route, gap, source-expanded, lorenzini, stepanov-auxiliary, rank-nullity") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "356--357, equations (5.5)--(5.6) (scans 374--375)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 394
        endLine := 514
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359, adaptation in Theorem 6.1 (scan 377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 609
        endLine := 652
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

Let $`q=p^\alpha`, let $`r=p^\mu<q`, and choose a pole-order-separated
$`\bar k`-basis $`s_1,\ldots,s_d` of $`H_m`.  If $`\ell r<q`, comparison of
the smallest pole orders proves that every element of

$$`V=H_\ell^r\psi^*(H_m)`

has a unique expansion $`\sum_i v_i\psi^*(s_i)` with $`v_i\in H_\ell^r`.
For the terminal basis index, the same valuation argument says directly that
the last coefficient is regular everywhere and has a zero at $`\bar P`, hence is
zero.  The printed sentence at X.357 saying that the coefficient has both a
zero and a pole at $`P` is a slip: the displayed inequality gives positive
order at $`P`, while membership in $`H_\ell^r` gives no pole away from $`P`.
Thus the map

$$`\delta_\sigma:V\longrightarrow H_\ell^rH_m,qquad
\sum_i v_i\psi^*(s_i)\longmapsto\sum_i v_i s_i`

is well defined and $`\bar k`-linear.  In particular,

$$`\dim\ker\delta_\sigma\geq
\dim H_\ell\dim H_m-\dim H_{\ell r+m}.`

For $`\ell,m>g`, Riemann--Roch makes the right side at least

$$`(\ell+1-g)(m+1-g)-(\ell r+m+1-g).`

All vector spaces, dimensions, and the rank--nullity argument here are over
$`\bar k`, exactly as in Lorenzini X.6.1.
:::

:::theorem "frobenius_class_upper" (parent := "hasse_weil") (uses := "twisted_stepanov_kernel, geometric_power_riemann_spaces") (tags := "optional-route, gap, source-expanded, lorenzini, frobenius-class, stepanov-upper") (effort := "medium") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "356--357, numerical calculation in Theorem 5.4 (scans 374--375)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 422
        endLine := 534
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "358--359, Theorem 6.1 and its adaptation (scans 376--377)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 587
        endLine := 653
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

If $`\mathcal N_1(Z/Y,\sigma)` is empty, the estimate is immediate.  Otherwise
choose $`\bar P\in\mathcal N_1(Z/Y,\sigma)`, take $`r=\sqrt q`,
$`m=\sqrt q+2g`, and choose an integer $`\ell` with

$$`g+\frac{g\sqrt q}{g+1}<\ell<\sqrt q.`

Such an integer exists when $`q>(g+1)^4`, and the preceding kernel dimension
is positive.  A nonzero $`F\in\ker\delta_\sigma` vanishes at every member of
$`\mathcal N_1(Z/Y,\sigma)` except possibly the chosen pole $`\bar P`.  Since
$`F` is an $`r`-th power, each zero has multiplicity at least $`r`; its pole
divisor has degree at most $`\ell r+qm`.  Hence

$$`r\bigl(N_1(Z/Y,\sigma)-1\bigr)\leq\ell r+qm`

and therefore

$$`N_1(Z/Y,\sigma)\leq q+1+(2g(Z)+1)\sqrt q.`

This is Lorenzini X.6.1 with the power and zero-multiplicity steps made
explicit.
:::

:::::::

#docs (Manual) hasseWeilLorenziniAveraging "Hasse--Weil: Frobenius-class averaging" :=
:::::::

# Frobenius-class averaging

The unramified Frobenius classes partition each fiber up to the bounded branch
locus.  Averaging the classwise upper bounds gives the complementary lower
bound and hence the divisible-extension error estimate.

:::lemma_ "unramified_frobenius_average" (parent := "hasse_weil") (uses := "finite_branch_locus, frobenius_element_locus") (tags := "optional-route, gap, source-specified, lorenzini, frobenius-class, bounded-average") (effort := "medium") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "354, Lemma 4.6 (scan 372)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 236
      endLine := 262
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Let $`U=Y\setminus B` be the complement of the geometric branch locus.  The
Frobenius element is unique, so the sets
$`\mathcal N_1(Z_{\mathbf F_{q^n}}/Y_{\mathbf F_{q^n}},\sigma)` are disjoint.
Every unramified rational base point has exactly $`|G|` geometric points above
it.  Consequently

$$`\sum_{\sigma\in G}N_1
(Z_{\mathbf F_{q^n}}/Y_{\mathbf F_{q^n}},\sigma)
=|G|\,|U(\mathbf F_{q^n})|,`

and, with $`b=|B|`,

$$`\left|\sum_{\sigma\in G}N_1
-|G|\,|Y(\mathbf F_{q^n})|\right|\leq |G|b`

uniformly in $`n`.
:::

:::lemma_ "frobenius_class_lower" (parent := "hasse_weil") (uses := "unramified_frobenius_average, frobenius_class_upper") (tags := "optional-route, gap, source-specified, lorenzini, frobenius-class, lower-bound") (effort := "small") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "359--360, equations (6.1)--(6.4) (scans 377--378)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 670
      endLine := 700
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For $`Y=\mathbf P^1`, set $`A=2g(Z)+1` and let
$`C_0=C(Z/\mathbf P^1)=|G|b` be the full Lemma X.4.6 constant.  If

$$`\delta_\tau=N_1(Z/\mathbf P^1,\tau)-(q+1),`

then $`|\sum_\tau\delta_\tau|\leq C_0` and
$`\delta_\tau\leq A\sqrt q` for every $`\tau`.  Isolating one term gives

$$`N_1(Z/\mathbf P^1,\sigma)
\geq q+1-C_0-(|G|-1)A\sqrt q.`

This last step is the elementary finite-family inequality: isolate one summand
and bound each of the remaining $`|G|-1` summands from above.
:::

:::lemma_ "intermediate_frobenius_inclusion" (parent := "hasse_weil") (uses := "place_towers, frobenius_element_locus, stable_galois_closure") (tags := "optional-route, gap, source-specified, lorenzini, decomposition-group, tower") (effort := "large") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "360, Lemma 6.2 (scan 378)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 709
        endLine := 730
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "118--119, Proposition 8.6(2) (scans 136--137)"
      text := some {
        path := "source/LorenziniIII.tex"
        startLine := 12
        endLine := 69
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

In the Galois tower $`Z\to X\to\mathbf P^1`, put
$`G=\operatorname{Gal}(Z/\mathbf P^1)` and
$`H=\operatorname{Gal}(Z/X)`.  If $`\sigma\in H` and
$`\bar P\in\mathcal N_1(Z/\mathbf P^1,\sigma)`, let $`P` be the corresponding
closed point of $`Z`.  Unramifiedness over the rational base point gives

$$`D_{Z/\mathbf P^1}(P)=\langle\sigma\rangle\subseteq H,`

so $`D_{Z/X}(P)=D_{Z/\mathbf P^1}(P)\cap H` is the same group.  If $`Q'` is
the closed image of $`P` on $`X`, multiplicativity of ramification indices
first shows that $`P` is unramified over $`Q'`.  The inclusion
$`k(X)\subseteq k(Z)^{D(P)}` and Proposition III.8.6(2) give ramification
index and residue degree one for $`Q'` over the rational point of
$`\mathbf P^1`; hence $`Q'` is rational.  At the chosen
geometric lift $`\bar P`, the relation
$`\sigma(\bar P)=\operatorname{Fr}_q(\bar P)` is unchanged, so the same
$`q`-power residue Frobenius and uniqueness show that $`\sigma` is also its
Frobenius element for $`Z\to X`.  Therefore

$$`\mathcal N_1(Z/\mathbf P^1,\sigma)
\subseteq\mathcal N_1(Z/X,\sigma).`
:::

:::theorem "extension_count_lower" (parent := "hasse_weil") (uses := "frobenius_class_lower, intermediate_frobenius_inclusion, unramified_frobenius_average") (tags := "optional-route, gap, source-specified, lorenzini, extension-count, lower-bound") (effort := "medium") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "360, equations (6.5)--(6.6) (scan 378)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 700
      endLine := 746
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Apply the bounded average to $`Z\to X` and the preceding inclusion to every
$`\sigma\in H`.  If $`C_X` is the branch constant for $`Z/X`, then

$$`\begin{aligned}
|H|\,|X(\mathbf F_q)|
&\geq\sum_{\sigma\in H}N_1(Z/X,\sigma)-C_X\\
&\geq\sum_{\sigma\in H}N_1(Z/\mathbf P^1,\sigma)-C_X.
\end{aligned}`

Together with `frobenius_class_lower`, this yields

$$`|X(\mathbf F_{q^n})|-(q^n+1)
\geq-C_0-\frac{C_X}{|H|}
-(|G|-1)(2g(Z)+1)q^{n/2}`

for every $`n\geq1`, with the same constants after all further constant
extensions.
:::

:::theorem "divisible_extension_error" (parent := "hasse_weil") (uses := "stable_galois_closure, bombieri_square_upper, extension_count_lower") (tags := "optional-route, gap, source-specified, lorenzini, divisible-subsequence, two-sided-error") (effort := "medium") (priority := "low")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "354--355, Lemma 5.1 and its proof (scans 372--373)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 295
        endLine := 360
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "355--357, Theorem 5.4 (scans 373--375)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 368
        endLine := 534
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "359--360, end of the proof (scans 377--378)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 655
        endLine := 746
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

This node packages Lorenzini's suppressed fixed-extension reduction.  Let
$`e=2d>1` be the fixed extension degree chosen in
`stable_galois_closure`.  The ordinary square-field Stepanov estimate gives
the upper bound and `extension_count_lower` gives the lower bound.  Thus there
are constants $`C_0,C_1` such that, for every $`n\geq1`,

$$`\left|N_{2dn}-(q_0^{2dn}+1)\right|
\leq C_0+C_1(q_0^d)^n.`

This is precisely the point-count estimate consumed by the later spectral
step.  No estimate at extension degrees not divisible by $`e` is required.
:::

:::::::

#docs (Manual) hasseWeilExactTwists "Hasse--Weil: exact twists" :=
:::::::

# Exact Frobenius twists

Stichtenoth's fixed fields turn one square-field upper bound into a two-sided
estimate.  Exact averaging at finite places and a uniform bound at infinity
are sufficient; Proposition 5.2.8(c)'s sharper infinity identity is not used.

## Twist bounds and Frobenius averaging

This section applies the square-field estimate to the fixed fields, proves the
exact degree-one-place averages, and formulates the resulting even-extension
error for a fixed Galois tower.

:::theorem "intrinsic_square_upper" (parent := "hasse_weil") (uses := "rational_places, square_zero_count, intrinsic_riemann_budget") (lean := "BGS.HasseWeil.rationalInfinityPlace_card_le_finrank, BGS.HasseWeil.finiteExtensionRationalPlaceCount_le_squareFieldStepanov_of_finitePlaceRiemann, BGS.HasseWeil.finiteExtensionRationalPlaceCount_le_squareFieldStepanov, BGS.HasseWeil.exists_squareFieldStepanov_budget") (tags := "proved-in-lean, square-field, function-fields, rational-places") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "199--202, Proposition 5.2.6"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For an arbitrary finite separable extension of $`S(t)`, the one-point
Stepanov argument bounds its complete degree-one place count by

$$`N_1\le |S|+(2g+1)|K|+[L:S(t)],\qquad |S|=|K|^2.`

If a rational finite place exists, the proof chooses it as the pole, counts
the other rational finite places, and bounds the infinity contribution by the
extension degree.  If none exists, the infinity bound closes the estimate
directly.  The intrinsic Riemann construction supplies a budget automatically,
so the composed endpoint retains only exact constants and the explicit
large-square-field inequality for that budget.  It requires no plane equation
for the function field.
:::

:::theorem "even_upper" (parent := "hasse_weil") (uses := "square_upper, extension_counts") (lean := "BGS.HasseWeil.halfExtensionToEvenExtensionAlgHom, BGS.HasseWeil.finrank_evenExtension_over_halfExtension, BGS.HasseWeil.extensionAffinePointCount_two_mul_le_stepanov") (tags := "optional-route, proved-in-lean, even-extensions, stepanov-upper") (effort := "large") (priority := "low")
%%%
source := {
  document := "tao-bombieri-stepanov-2014"
  spans := #[
    {
      page := "semantic reconstruction, square-field upper estimate"
      text := some {
        path := "source/TaoBombieriStepanov2014.tex"
        startLine := 51
        endLine := 113
      }
      pdf := some { path := "source/TaoBombieriStepanov2014.pdf" }
    }
  ]
}
%%%

For the canonical extension-count sequence, Lean embeds the degree-$`n`
extension into the degree-$`2n` extension and proves that the latter has
relative degree two.  Applying `square_upper` over this tower gives the
explicit one-sided estimate

$$`N_{2n}\le q^{2n}+(2g_0+1)q^n+((2d_2-1)d_1)d_2`

under the stated bidegree, absolute-irreducibility, nonzero-partial, and
large-field hypotheses.  This removes any ambiguity about transporting the
square-field result to the canonical sequence.  It is still an upper bound,
not the two-sided $`O(q^n)` error required by the spectral step.
:::

:::lemma_ "galois_average" (parent := "hasse_weil") (lean := "BGS.HasseWeil.sum_card_fixedBy_eq_card_group_of_isPretransitive, BGS.HasseWeil.sum_card_fixedBy_fibers_eq_card_mul_card_group, BGS.HasseWeil.sum_card_fixedBy_quotientFiber_eq_card_ker, BGS.HasseWeil.sum_card_fixedBy_quotientFiber_eq_card_ker_of_stabilizer_card, BGS.HasseWeil.abs_le_of_uniform_upper_and_abs_sum_le, BGS.HasseWeil.abs_twistError_le_geometric_of_uniform_upper_and_abs_sum_le, BGS.HasseWeil.twistError_isBigO_geometric_of_uniform_upper_and_abs_sum_le") (tags := "proved-in-lean, burnside, frobenius-coset, decomposition-groups, finite-average, two-sided-error") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "202--203, Lemma 5.2.7, cyclic subgroup enumeration"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "204--205, Proposition 5.2.8(c), decomposition-group averaging"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The combinatorial and numerical averaging steps are complete.  Burnside's
lemma gives exactly $`|G|` fixed points after summing over a nonempty transitive
$`G`-set, and $`|I||G|` for a finite family of transitive fibers.  Its
Frobenius-coset form says that if every point stabilizer surjects onto a finite
quotient $`C`, then the fixed-point trace over any fiber of $`G\to C` is
$`|\ker(G\to C)|`.  Surjectivity is reduced further to the source identity
$`|D|=|\ker(D\to C)|\,|C|` for every decomposition group $`D`.  If every member
of a finite family of twist errors has a common upper bound and the total error
is bounded, then each individual error has a two-sided bound.  The asymptotic
version returns the geometric `IsBigO` estimate needed by the spectral
argument.  The exact constant-extension quotient is already constructed.
The local stabilizer-kernel identification is isolated in
`frobenius_place_actions`; instantiating it for every constant-extension place
and interpreting fixed points as rational places of the twists remain
separate.
:::

:::lemma_ "frobenius_place_actions" (parent := "hasse_weil") (lean := "BGS.HasseWeil.stabilizerRestriction_ker_eq_inertia_of_residue_finrank_one, BGS.HasseWeil.finiteExtensionFinitePlace_degree_finitePlaceGalSmul, BGS.HasseWeil.finiteExtensionInfinityPlace_degree_infinityPlaceGalSmul, BGS.HasseWeil.finitePlaceOfDegreeGalAction, BGS.HasseWeil.infinityPlaceOfDegreeGalAction, BGS.HasseWeil.finitePlaceUnderFiber_stabilizer_eq_decompositionGroup, BGS.HasseWeil.infinityPlaceUnderFiber_stabilizer_eq_decompositionGroup, BGS.HasseWeil.finitePlaceDecompositionGroup_card_eq_restrictedKernel_mul_card_constantAut, BGS.HasseWeil.infinityPlaceDecompositionGroup_card_eq_restrictedKernel_mul_card_constantAut, BGS.HasseWeil.finitePlaceUnderFiber_stabilizer_card_eq_restrictedKernel_mul_card_constantAut, BGS.HasseWeil.infinityPlaceUnderFiber_stabilizer_card_eq_restrictedKernel_mul_card_constantAut") (tags := "proved-in-lean, frobenius-fiber, finite-places, decomposition-groups, inertia") (effort := "large") (priority := "high")

Relative Galois conjugation preserves absolute degree on finite and infinity
places and acts on each fixed-degree family.  On a restriction fiber, Lean
identifies the point stabilizer with the decomposition group.  If the residue
degree over the enlarged constants is one, compatibility of the constant
action identifies the restricted quotient kernel with inertia.  For a place
of degree $`[S:C]` over a rational base place, Lean then proves the exact
stabilizer-cardinality identity required by Frobenius-coset averaging.
:::

:::lemma_ "exact_constant_finite_actions" (parent := "hasse_weil") (uses := "constant_extension_frobenius_quotient, frobenius_place_actions") (lean := "BGS.HasseWeil.exactConstantExtensionConstantToFiniteIntegralClosureRingHom, BGS.HasseWeil.exactConstantExtensionFiniteIntegralClosureConstantAlgebra, BGS.HasseWeil.exactConstantExtensionFiniteIntegralClosure_algebraMap_val, BGS.HasseWeil.exactConstantExtensionConstantQuotient_action_on_finiteNormalization, BGS.HasseWeil.exactConstantExtensionFinitePlace_stabilizerRestriction_ker_eq_inertia, BGS.HasseWeil.exactConstantExtensionFinitePlace_decompositionGroup_card") (tags := "proved-in-lean, constant-extension, finite-places, inertia, decomposition-groups") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204--205, Proposition 5.2.8(c), decomposition and inertia groups"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The enlarged constants embed into the finite normalization, and the
canonical constant quotient describes the Galois action on that embedding.
At a place whose residue field has degree one over $`S`, the quotient kernel
inside its decomposition group is exactly inertia.  With top degree $`[S:C]`
and rational restricted place, Lean obtains the required decomposition-group
cardinality identity.  Relating these hypotheses to every place counted in
the twist family is the content of `finite_twist_places`.
:::

:::lemma_ "finite_twist_places" (parent := "hasse_weil") (uses := "exact_constant_finite_actions, constant_extension_rational_places") (lean := "BGS.HasseWeil.finiteDimensional_exactConstantExtension_over_baseRatFunc, BGS.HasseWeil.exactConstantExtensionCompatibleBaseFinitePlace, BGS.HasseWeil.exactConstantExtensionCompatibleResidueFieldAlgEquiv, BGS.HasseWeil.exactConstantExtensionCompatibleBaseFinitePlace_degree_eq, BGS.HasseWeil.exactConstantExtensionCompatibleBaseFinitePlace_under_original, BGS.HasseWeil.exactConstantExtensionFinitePlace_decompositionGroup_card_of_rational_base") (tags := "proved-in-lean, constant-extension, finite-places, normalization") (effort := "large") (priority := "high")

Lean now identifies the actual place represented in the $`S[X]`-
normalization with its $`C[X]`-normalization model, including the residue
field and contraction to the original field.  If its restriction to the
intermediate field is rational and $`[N:L]` divides $`[S:C]`, the constant-
extension degree formula supplies all local hypotheses and hence the exact
decomposition-group cardinality identity.  Infinity places and the global
fixed-point interpretation remain separate.
:::

:::lemma_ "finite_frobenius_average" (parent := "hasse_weil") (uses := "galois_average, finite_twist_places") (lean := "BGS.HasseWeil.MonoidHom.stabilizer_surjective_of_isPretransitive_of_isCyclic, BGS.HasseWeil.exactConstantExtensionFinitePlace_frobeniusFiber_fixedPoint_sum, BGS.HasseWeil.sum_card_fixedBy_quotientFiber_fibers_eq_card_mul_card_ker, BGS.HasseWeil.natCard_fixedBy_eq_sum_natCard_invariantFiberFixedBy, BGS.HasseWeil.exactConstantExtensionFinitePlace_frobeniusFiber_fixedPoint_sum_of_under_rational, BGS.HasseWeil.sum_card_finitePlaceUnderFiber_fixedBy_frobeniusTwist_eq_card_galois, BGS.HasseWeil.frobeniusTwistField_rationalFinitePlace_equiv_sigma_fiberFixedBy, BGS.HasseWeil.frobeniusTwistFieldRationalFinitePlaceCount_eq_sum_fiberFixedBy, BGS.HasseWeil.sum_frobeniusTwistFieldRationalFinitePlaceCount_eq_card_galois_mul_card") (tags := "proved-in-lean, frobenius, finite-places, fixed-points, global-average") (effort := "large") (priority := "high")

For an actual finite place with rational restriction and
$`[N:L]\mid[S:C]`, the exact decomposition-group formula makes the constant
quotient surjective on one stabilizer.  Transitivity and cyclicity propagate
this to the whole restriction fiber, and Frobenius-coset Burnside gives the
exact fixed-point sum $`|\operatorname{Gal}(N/L)|`.  Lean also proves the
finite-family quotient-fiber sum and the nonduplicating sigma decomposition
of fixed points along any invariant base map.  The function-field
specialization identifies presentation-free restriction fibers with rational
finite places of each twist, and summing over all
twists gives exactly

$$`\sum_\gamma N^{\mathrm{fin}}_1(F_\gamma)
  = |\operatorname{Gal}(N/C(X))|\,|C|.`
:::

:::lemma_ "twist_lifts" (parent := "hasse_weil") (uses := "frobenius_twist_fields, finite_twist_places, exact_constant_finite_actions, constant_field_finite_degrees, constant_extension_infinity_places") (lean := "BGS.HasseWeil.rationalFinitePlace_fiber_card_eq_one_of_finrank_dvd_degree, BGS.HasseWeil.finitePlaceGalSmul_eq_self_over_rationalFinitePlace_of_finrank_dvd_degree, BGS.HasseWeil.exactConstantExtensionFinitePlace_finrank_constants_dvd_degree, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistOverFixedField, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistOverFixedField_apply, BGS.HasseWeil.frobeniusTwistField_rationalFinitePlace_fiber_card_eq_one, BGS.HasseWeil.frobeniusTwistField_rationalFinitePlace_lift_fixed, BGS.HasseWeil.rationalFinitePlaceEquivLift, BGS.HasseWeil.natCard_rationalFinitePlaceLift_eq, BGS.HasseWeil.exactConstantExtensionFrobeniusTwistOverFixedField_zpowers_eq_top, BGS.HasseWeil.finitePlaceUnder_degree_eq_one_of_generator_fixed, BGS.HasseWeil.rationalFinitePlaceEquivGeneratorFixedPlace, BGS.HasseWeil.frobeniusTwistField_finitePlace_ramificationIdx_eq_one, BGS.HasseWeil.frobeniusTwistField_fixed_finitePlace_under_degree_eq_one, BGS.HasseWeil.exactConstantExtensionFrobeniusTwist_finitePlaceGalSmul_eq_overFixedField, BGS.HasseWeil.frobeniusTwistField_ambientFixed_finitePlace_under_degree_eq_one, BGS.HasseWeil.frobeniusTwistField_rationalFinitePlace_equiv_ambientFixedFinitePlace, BGS.HasseWeil.rationalInfinityPlace_fiber_card_eq_one_of_finrank_dvd_degree, BGS.HasseWeil.infinityPlaceGalSmul_eq_self_over_rationalInfinityPlace_of_finrank_dvd_degree, BGS.HasseWeil.rationalInfinityPlaceEquivLift, BGS.HasseWeil.rationalInfinityPlaceLift_fixed, BGS.HasseWeil.infinityPlaceUnder_degree_eq_one_of_generator_fixed, BGS.HasseWeil.rationalInfinityPlaceEquivGeneratorFixedPlace, BGS.HasseWeil.exactConstantExtensionInfinityPlace_finrank_constants_dvd_degree, BGS.HasseWeil.frobeniusTwistField_infinityPlace_ramificationIdx_eq_one, BGS.HasseWeil.frobeniusTwistField_fixed_infinityPlace_under_degree_eq_one, BGS.HasseWeil.exactConstantExtensionFrobeniusTwist_infinityPlaceGalSmul_eq_overFixedField, BGS.HasseWeil.frobeniusTwistField_ambientFixed_infinityPlace_under_degree_eq_one, BGS.HasseWeil.frobeniusTwistField_rationalInfinityPlace_equiv_ambientFixedInfinityPlace, BGS.HasseWeil.frobeniusTwistFieldRationalPlaceCount_eq_finiteExtensionRationalPlaceCount") (tags := "proved-in-lean, frobenius-twists, finite-places, infinity-places, fixed-points, unramified") (effort := "large") (priority := "high")

Every top finite-place degree is divisible by $`[S:C]`.  Since a twist field
has relative degree $`[S:C]`, every rational finite place of the twist has a
unique top lift fixed by the canonical generator.  Lean proves that this
generator spans the relative Galois group and that all finite places are
unramified: inertia acts trivially on the enlarged constants, while the twist
subgroup meets the constant-restriction kernel trivially.  The converse
descent now follows.  The resulting equivalence identifies rational finite
places of the twist field with degree-$`[S:C]` top finite places fixed by the
ambient Frobenius twist.  The reciprocal normalization gives the same degree
divisibility at infinity.  Lean proves unramifiedness over each twist field
there as well and obtains the parallel equivalence between rational infinity
places and degree-$`[S:C]` ambient infinity places fixed by the twist.
:::

:::lemma_ "bounded_twist_average" (parent := "hasse_weil") (uses := "finite_frobenius_average, twist_lifts") (lean := "BGS.HasseWeil.frobeniusTwistFieldRationalInfinityPlaceCount_le_original_finrank, BGS.HasseWeil.sum_frobeniusTwistFieldRationalInfinityPlaceCount_le, BGS.HasseWeil.sum_frobeniusTwistFieldRationalPlaceCount_eq, BGS.HasseWeil.sum_frobeniusTwistFieldRationalPlaceError_eq, BGS.HasseWeil.abs_sum_frobeniusTwistFieldRationalPlaceError_le") (tags := "proved-in-lean, frobenius-twists, rational-places, bounded-average") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204--205, finite-chart part of Proposition 5.2.8(c), with bounded infinity correction"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Adding the rational infinity places to the exact finite-place average gives
the complete rational-place count of every twist.  Each infinity contribution
is at most $`[N:C(X)]`, so Lean proves the exact centered identity

$$`\sum_\gamma (N_1(F_\gamma)-|C|-1)
  = \sum_\gamma N_1^\infty(F_\gamma)-|\operatorname{Gal}(N/C(X))|`

and the uniform bound

$$`\left|\sum_\gamma (N_1(F_\gamma)-|C|-1)\right|
  \le |\operatorname{Gal}(N/C(X))|[N:C(X)].`

Ramified finite fibers are included in the exact finite-place sum; only the
uniform infinity correction enters the displayed error bound.
:::

:::::::

#docs (Manual) hasseWeilFixedTower "Hasse--Weil: fixed Galois tower" :=
:::::::

# Fixed Galois tower

The rational-base twist estimates and the exact intermediate-base average
meet in one fixed Galois tower.  A separate normal-closure bridge transports
the resulting degree-one count back to exact constant extensions of the
original function field.

:::lemma_ "intermediate_finite_average" (parent := "hasse_weil") (uses := "galois_average, finite_twist_places") (lean := "BGS.HasseWeil.sum_card_finitePlaceUnderFiber_fixedBy_intermediateFrobeniusTwist_eq_card_galois, BGS.HasseWeil.intermediateFrobeniusTwistField_rationalFinitePlace_equiv_sigma_fiberFixedBy, BGS.HasseWeil.sum_intermediateFrobeniusTwistFieldRationalFinitePlaceCount_eq_card_galois_mul_card") (tags := "proved-in-lean, source-specified, frobenius-twists, intermediate-base, finite-places, exact-average") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204--205, Proposition 5.2.8(c), decomposition-group average"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Let $`C(X)\subseteq L\subseteq N`, with $`N/L` Galois, and choose the
auxiliary constant extension degree divisible by
$`|\operatorname{Gal}(N/L)|`.  For each rational finite place $`P` of $`L`,
the Frobenius-coset fixed-point sum over its restriction fiber equals the
group order.  The fixed top places are precisely the rational finite places
of the intermediate-base twist fields.  Summing first over $`P` and then over
the twists gives

$$`\sum_{\gamma\in\operatorname{Gal}(N/L)}
  N_1^{\mathrm{fin}}(F_\gamma)
  = |\operatorname{Gal}(N/L)|N_1^{\mathrm{fin}}(L).`

Ramified fibers are already included through their decomposition and inertia
groups; no unramified-place omission is made.
:::

:::lemma_ "intermediate_bounded_average" (parent := "hasse_weil") (uses := "intermediate_finite_average, rational_places") (lean := "BGS.HasseWeil.intermediateFrobeniusTwistFieldRationalInfinityPlaceCount_le_original_finrank, BGS.HasseWeil.intermediateBaseRationalInfinityPlaceCount_le_original_finrank, BGS.HasseWeil.sum_intermediateFrobeniusTwistFieldRationalInfinityPlaceCount_le, BGS.HasseWeil.sum_intermediateFrobeniusTwistFieldRationalPlaceCount_eq, BGS.HasseWeil.abs_sum_intermediateFrobeniusTwistFieldRationalPlaceCount_sub_card_mul_base_le") (tags := "proved-in-lean, source-specified, frobenius-twists, intermediate-base, rational-places, bounded-average") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "204--205, finite-chart part of Proposition 5.2.8(c), with bounded infinity correction"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Each twist and the intermediate field have at most $`[N:C(X)]` rational
infinity places.  Adding these bounded terms to
`intermediate_finite_average` gives the division-free estimate

$$`\left|\sum_\gamma N_1(F_\gamma)
 -|\operatorname{Gal}(N/L)|N_1(L)\right|
 \le 2[N:C(X)]^2.`

This weaker consequence of Stichtenoth's exact average is sufficient: once
every summand is individually close to $`|C|+1`, finite averaging bounds
$`N_1(L)-(|C|+1)` without dividing by the group order.
:::

:::lemma_ "twist_overlap" (parent := "hasse_weil") (uses := "frobenius_twist_fields, intermediate_finite_average") (lean := "BGS.HasseWeil.intermediateFrobeniusTwistField_algEquiv_rationalBaseFrobeniusTwistField") (tags := "proved-in-lean, frobenius-twists, intermediate-base, rational-base, overlap") (effort := "medium") (priority := "high")

For $`\gamma\in\operatorname{Gal}(N/L)`, restricting scalars gives an
automorphism of $`N/C(X)`.  The two Frobenius-twist subgroups in the common
constant extension are equal, so their fixed fields are canonically
$`C(X)`-isomorphic.  Hence the pointwise estimate proved for the
rational-base twist applies to the corresponding summand in
`intermediate_bounded_average`.  This is the required overlap; it does not
postulate two independently indexed exact sums.
:::

:::theorem "uniform_twist_stepanov_upper" (parent := "hasse_weil") (uses := "intrinsic_square_upper, intrinsic_riemann_budget, twist_genus_invariance, frobenius_twist_fields, twist_lifts") (lean := "BGS.HasseWeil.frobeniusTwistFieldRationalPlaceCount_le_squareField_of_genus") (tags := "proved-in-lean, source-specified, frobenius-twists, stepanov-upper") (effort := "small") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "199--202, Proposition 5.2.6"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "204, Proposition 5.2.8(b)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The common genus of the fixed fields supplies one Riemann budget independent
of the twist and of the enlarged constant field.  Applying the intrinsic
square-field theorem then gives the uniform upper bound used for every fixed
field in Proposition 5.2.6.
:::

:::theorem "twist_pointwise_error" (parent := "hasse_weil") (uses := "uniform_twist_stepanov_upper, bounded_twist_average") (lean := "BGS.HasseWeil.abs_frobeniusTwistFieldRationalPlaceError_le_squareField_of_genus") (tags := "proved-in-lean, frobenius-twists, two-sided-error") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "202--205, Lemma 5.2.7 and Proposition 5.2.8"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "204, Proposition 5.2.8(b)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The exact finite-place average and the bounded infinity contribution center
the twist family at $`|C|+1`.  Combining this identity with the uniform upper
bound gives an explicit absolute-error estimate for every rational-base twist,
with constants depending only on the genus and rational-function degree of
the original field.
:::

## Normal-closure transport

:::theorem "normal_closure_count_transfer" (parent := "hasse_weil") (uses := "function_field_galois_closure, galois_closure_constants, normal_closure_constant_base, rational_constant_base, exact_constant_extension, constant_extension_galois_product, constant_place_support") (lean := "BGS.HasseWeil.functionFieldNormalClosureConstantField_isExact_for_constantRatFunc, BGS.HasseWeil.functionFieldNormalClosureOriginalCompositumConstantField_isExact_for_constantRatFunc, BGS.HasseWeil.functionFieldNormalClosureConstantExtension_ratFuncScalarTower, BGS.HasseWeil.functionFieldNormalClosureConstantExtension_finiteDimensional, BGS.HasseWeil.functionFieldNormalClosureConstantExtension_isGalois, BGS.HasseWeil.functionFieldNormalClosureConstantExtension_finrank, BGS.HasseWeil.functionFieldNormalClosureConstantExtension_card_aut_eq, BGS.HasseWeil.functionFieldNormalClosureOriginalCompositumConstantExtension_rationalPlaceCount_eq_exactConstantExtensionCount, BGS.HasseWeil.functionFieldNormalClosureOriginalCompositumConstantExtension_rationalPlaceCount_eq_originalExactConstantExtensionCount") (tags := "proved-in-lean, source-specified, normal-closure, constant-extension, closed-places") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "205--206, equations (5.37),(5.38)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Let $`N/K(X)` be a normal closure, let $`C` be its full constant field, and
let $`M=CF\subseteq N`.  Exactness of $`K` in $`F` identifies $`M` with
$`C\otimes_KF`; $`C` is exact in both $`M` and $`N`, and $`N/M` is Galois.
After any further finite Galois constant extension $`S/C`, tensoring the
inclusion gives a finite Galois tower

$$`S\otimes_C M\ \subseteq\ S\otimes_C N`

over $`S(X)`, with the original relative degrees and Galois-group orders.
Closed-place splitting and the $`C(X)`-equivalence $`C\otimes_KF\simeq M`
transport the level-$`m` count of $`M` to the level-$`[C:K]m` count of
$`F`.  These structural identities replace the two overlapping exact sums in
the source proof.
:::

:::theorem "fixed_tower_hasse" (parent := "hasse_weil") (uses := "twist_pointwise_error, intermediate_bounded_average, twist_overlap") (lean := "BGS.HasseWeil.intermediateFrobeniusTwistFieldRationalPlaceCount_eq_rationalBase, BGS.HasseWeil.abs_intermediateBaseRationalPlaceError_le_squareField_of_genus_exact, BGS.HasseWeil.abs_intermediateBaseRationalPlaceError_le_squareField_of_genus") (tags := "proved-in-lean, galois-geometry, twisted-stepanov, two-sided-error") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "202--205, Lemma 5.2.7 and Proposition 5.2.8"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "205--206, end of Theorem 5.2.1, equations (5.37),(5.38)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

Let $`C/K_0` be quadratic, let $`N/C(X)` be finite Galois with exact constant
field $`C`, and let $`L` be a fixed intermediate field.  Assume the auxiliary
constant extension degree is divisible by both relevant Galois-group orders
and that $`|K_0|` exceeds the genus threshold.  The rational-base pointwise
estimate transports to every intermediate twist, and the intermediate average
then gives

$$`|N_1(L)-(|C|+1)|\le A+B|K_0|,
  \qquad |C|=|K_0|^2,`

where $`A,B` are explicit polynomials in $`[N:C(X)]` and $`g(N/C)`, independent
of the auxiliary constant field.  The exact theorem and its degree-only
corollary are the fixed-tower estimate used by the normal-closure argument.
:::

:::::::

#docs (Manual) hasseWeilDivisibleError "Hasse--Weil: divisible extension error" :=
:::::::

# Divisible extension error

Finite-field divisibility chooses a square auxiliary field satisfying both
Galois-order conditions.  The fixed-tower bound and the normal-closure count
bridge then control the exact constant extensions in degrees $`2Hn`.

:::lemma_ "divisible_constant_fields" (parent := "hasse_weil") (lean := "BGS.HasseWeil.finiteFieldExtensionAlgHomOfDvd, BGS.HasseWeil.finiteFieldExtension_isScalarTower_of_dvd, BGS.HasseWeil.finrank_double_finiteFieldExtension, BGS.HasseWeil.natCard_double_finiteFieldExtension_eq_sq, BGS.HasseWeil.degree_le_natCard_finiteFieldExtension_mul, BGS.HasseWeil.natCard_aut_dvd_finrank_factorial, BGS.HasseWeil.natCard_aut_dvd_finrank_factorial_of_tower") (tags := "proved-in-lean, finite-fields, degree-divisibility") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "205--206, choice of the auxiliary constant extension"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For $`H,n>0`, finite-field embeddings realize the nested degrees
$`Hn\mid 2Hn`, and the degree-$`2Hn` field has square cardinality over the
degree-$`Hn` field.  A factorial multiple is divisible by the orders of both
Galois groups in a finite tower.  These facts choose one auxiliary extension
that satisfies every divisibility condition of `fixed_tower_hasse`.
:::

## Optional all-even bridge

:::theorem "conditional_even_extension_error" (parent := "hasse_weil") (uses := "constant_place_support, schmidt_index_one") (lean := "BGS.HasseWeil.evenExtensionError_isBigO_of_pointwise_bound, BGS.HasseWeil.finiteExtensionClosedPlaceEvenError_isBigO_of_exactConstantExtension_bound, BGS.HasseWeil.finiteExtensionClosedPlaceHasseBound_of_exactConstants_and_evenError, BGS.HasseWeil.finiteExtensionClosedPlaceHasseBound_of_evenExactConstantExtension_bound") (tags := "optional-route, proved-conditional-composition, two-sided-error, square-extensions") (effort := "large") (priority := "low")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "190, Lemma 5.1.9(c),(d), constant-extension count transport"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "199, Lemma 5.2.5, equations (5.20)--(5.24)"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

Lean proves the exact conditional bridge.  A uniform two-sided pointwise bound
on the degree-$`2n` exact constant extensions gives the required `IsBigO`, and
the closed-place splitting identity transports it to the base field.  Exact
constants then discharge divisor index one, zeta rationality, the trace
formula, and the numerator-degree budget, under the geometric pointwise bound.
:::

## Divisible normal-closure estimate

:::theorem "normal_closure_error" (parent := "hasse_weil") (uses := "fixed_tower_hasse, normal_closure_count_transfer, divisible_constant_fields") (lean := "BGS.HasseWeil.exactConstantExtensionClosedPlaceError_le_normalClosureConstants") (tags := "proved-in-lean, source-specified, divisible-subsequence, normal-closure, two-sided-error") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "205--206, end of Theorem 5.2.1, equations (5.37),(5.38) and lower bound (5.24)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Let $`g_N` be the genus of the normal closure over its full constant field,
put $`H=(g_N+1)(g_N+2)`, and write $`D=[N:C(X)]`.  For every $`n>0`, the
fixed-tower estimate, the normal-closure count transfer, and the auxiliary
degree-$`2Hn` constant field give

$$`\left|N_{2Hn}-q^{2Hn}-1\right|
 \leq 2(D^2+2D^3)+D^2(2g_N+1)q^{Hn}.`

Thus one fixed divisible-even subsequence has square-root-scale error.  The
theorem makes no claim for extension degrees outside the multiples of $`2H`.
:::

:::::::

#docs (Manual) hasseWeilZeta "Hasse--Weil: zeta function and trace formula" :=
:::::::

# Divisors and zeta recurrence

This section builds finite zeta coefficients from ideals and effective
divisors, then derives rationality from Riemann--Roch stabilization and formal
recurrences.

:::lemma_ "zeta_coefficients" (parent := "hasse_weil") (uses := "place_towers") (lean := "BGS.HasseWeil.ratFuncFinitePlace_degree_le_finite, BGS.HasseWeil.finiteExtensionFinitePlace_degree_le_finite, BGS.HasseWeil.finiteExtensionPlace_degree_le_finite, BGS.HasseWeil.finiteExtensionPlaceDegreeLEFintype, BGS.HasseWeil.ratFuncPolynomial_hasFiniteQuotients, BGS.HasseWeil.ratFuncFiniteIntegralClosure_hasFiniteQuotients, BGS.HasseWeil.finiteExtensionAffineClassGroup_finite, BGS.HasseWeil.finiteExtensionAffineIdealDegree, BGS.HasseWeil.finiteExtensionAffineIdeal_cardQuot_eq_card_pow_degree, BGS.HasseWeil.finiteExtensionAffineIdealDegree_eq_zero_iff, BGS.HasseWeil.finite_setOf_finiteExtensionAffineIdealDegree_eq, BGS.HasseWeil.finiteExtensionAffineIdealCount") (tags := "proved-in-lean, zeta-function, places, ideals, finite-coefficients") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "185--188, Lemma 5.1.1 and Definition 5.1.5"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean proves directly that only finitely many places have degree at most a
fixed bound.  Independently, the affine normalization of $`K[X]` has finite
quotients and finite class group.  A nonzero affine ideal has degree
$`\dim_K(A/I)`, satisfies $`|A/I|=|K|^{\deg I}`, and the ideals of each fixed
degree form a finite type.  This defines an affine ideal-count coefficient
sequence.  Its comparison with full divisors must additionally account for
the infinity places.
:::

:::lemma_ "ideal_divisors" (parent := "hasse_weil") (uses := "zeta_coefficients") (lean := "BGS.HasseWeil.effectiveDivisorIdeal, BGS.HasseWeil.nonzeroIdealEffectiveDivisorEquiv, BGS.HasseWeil.finiteExtensionEffectiveFiniteDivisorDegree, BGS.HasseWeil.effectiveDivisorIdeal_cardQuot_eq_card_pow_degree, BGS.HasseWeil.finiteExtensionAffineIdealEffectiveDivisorEquiv, BGS.HasseWeil.finiteExtensionAffineIdealDegree_eq_divisorDegree, BGS.HasseWeil.finiteExtensionAffineIdealsOfDegreeEquivEffectiveFiniteDivisorsOfDegree, BGS.HasseWeil.finiteExtensionAffineIdealCount_eq_effectiveFiniteDivisorCount") (tags := "proved-in-lean, zeta-function, ideals, effective-divisors") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "185--187, effective divisors and finite coefficients"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Unique factorization of nonzero ideals in the affine Dedekind normalization
gives an equivalence with effective divisors supported at finite places.  Lean
proves both inverse identities, pointwise prime multiplicities, and

$$`\dim_K(A/I)=\sum_P v_P(I)\deg P.`

Consequently the affine-ideal count of degree $`n` is exactly the effective
finite-divisor count of degree $`n`; `divisor_split` adjoins the infinity-place
component.
:::

:::lemma_ "divisor_split" (parent := "hasse_weil") (uses := "ideal_divisors, zeta_coefficients") (lean := "BGS.HasseWeil.FiniteExtensionEffectiveDivisor, BGS.HasseWeil.FiniteExtensionEffectiveInfinityDivisor, BGS.HasseWeil.finiteExtensionEffectiveDivisorDegree, BGS.HasseWeil.finiteExtensionEffectiveDivisorSplitEquiv, BGS.HasseWeil.finiteExtensionEffectiveDivisorDegree_split, BGS.HasseWeil.finiteExtensionEffectiveDivisorEquivEffectiveIntegralDivisor, BGS.HasseWeil.finiteExtensionEffectiveDivisorAffineInfinityEquiv, BGS.HasseWeil.finiteExtensionEffectiveDivisorDegree_eq_affine_add_infinity, BGS.HasseWeil.finiteExtensionEffectiveDivisorCount, BGS.HasseWeil.finiteExtensionEffectiveDivisorCount_eq_sum_affineIdealCount_mul_infinityCount") (tags := "proved-in-lean, zeta-function, effective-divisors, infinity-places") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "185--187, effective divisors and zeta coefficients"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

An effective divisor on the exhaustive place type splits canonically into
finite and infinity components, and its degree is the sum of their degrees.
Lean identifies the finite component with a nonzero ideal in the affine
normalization, proves both fixed-degree types finite, and obtains the exact
convolution

$$`A_n=\sum_{m=0}^{n} I_m A^{\infty}_{n-m}.`

Thus `finiteExtensionEffectiveDivisorCount` is now the full divisor
coefficient sequence, rather than only the affine coefficient sequence.
:::

:::lemma_ "class_counts" (parent := "hasse_weil") (uses := "riemann_spaces") (lean := "BGS.HasseWeil.finiteVectorSpace_oneDimensionalSubspace_card_eq_geomSum, BGS.HasseWeil.finiteVectorSpace_nonzeroScalarOrbitQuotient_card_eq_div, BGS.HasseWeil.EffectiveDivisorInPrincipalClass, BGS.HasseWeil.finiteExtensionPrincipalDivisor_eq_zero_iff_isBaseConstant, BGS.HasseWeil.projectiveRiemannSectionEquivEffectiveDivisorInPrincipalClass, BGS.HasseWeil.effectiveDivisorInPrincipalClass_finite, BGS.HasseWeil.effectiveDivisorInPrincipalClass_card_eq_div") (tags := "proved-in-lean, zeta-function, divisor-class, projectivization") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "187, Lemma 5.1.4(b), divisors in a fixed class"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For an effective divisor $`D`, nonzero sections of $`L(D)` modulo
$`K^\times` map to effective divisors $`(x)+D`.  Exact constants make the
kernel precisely $`K^\times`, so Lean obtains an equivalence and the count

$$`\#\{E\geq0:E\sim D\}
  =\frac{|K|^{\dim L(D)}-1}{|K|-1}.`

This is the fixed-class count in Lemma 5.1.4(b).  Summing it across all
classes of a fixed degree still requires the degree-zero class group and an
effective representative for every relevant class.
:::

:::lemma_ "riemann_stabilization" (parent := "hasse_weil") (uses := "intrinsic_riemann_budget") (lean := "BGS.HasseWeil.finiteExtensionOnePointRiemannSurplus, BGS.HasseWeil.finiteExtensionOnePointRiemannSurplus_antitone_of_lower, BGS.HasseWeil.finiteExtensionOnePointRiemannSpace_eventually_exact_increment, BGS.HasseWeil.finiteExtensionShiftedRiemannSurplus, BGS.HasseWeil.finiteExtensionShiftedRiemannSurplus_antitone_of_lower, BGS.HasseWeil.finiteExtensionRiemannSpace_shift_eventually_exact_increment, BGS.HasseWeil.finiteExtensionRiemannSpace_shift_eventually_closedFormula, BGS.HasseWeil.finiteExtensionRiemannSpace_shift_eventually_cardinality_formula") (tags := "proved-in-lean, riemann-space, eventual-growth, zeta-function") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "187, Lemma 5.1.4, eventual divisor-class count"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The coarse Riemann lower bound and the principal-parts increment bound make

$$`\dim L(nP)+g-(n\deg P+1)`

an antitone natural-number sequence.  It is therefore eventually constant,
so $`\dim L((n+1)P)-\dim L(nP)=\deg P` for all sufficiently large $`n`.
The same argument now applies to every effective shift $`D+nP`, giving an
eventual closed dimension formula and the corresponding exact cardinality
growth over the finite constant field.  This supplies the elementary
stabilization behind the divisor-class recurrence, but does not by itself
count divisors in a class.  The present principal-parts API starts from an
effective divisor; handling arbitrary class representatives still requires a
separate shift to an effective representative.
:::

:::lemma_ "degree_index" (parent := "hasse_weil") (uses := "zeta_coefficients") (lean := "BGS.HasseWeil.finiteExtensionDivisorDegreeHom, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_pos, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_dvd_divisorDegree, BGS.HasseWeil.exists_finiteExtensionDivisor_degree_eq_index, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_isGCD, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_eq_one_iff") (tags := "proved-in-lean, zeta-function, divisors, degree-index") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "187, Lemma 5.1.4, divisor-degree index"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "191, Corollary 5.1.11, F. K. Schmidt's theorem"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

Divisor degree is an additive homomorphism to $`\mathbf Z`.  Lean proves
that its image is $`\partial\mathbf Z` for a positive natural number
$`\partial`, and that $`\partial` is the gcd of all exhaustive place
degrees.  In particular, coefficients outside degrees divisible by
$`\partial` vanish, and $`\partial=1` exactly when a divisor of degree one
exists.  No exact-constants-to-$`\partial=1` implication is used here:
Stichtenoth proves that later, after indexed rationality and the
constant-extension zeta identity.
:::

:::lemma_ "class_recurrence" (parent := "hasse_weil") (uses := "class_counts, divisor_split, degree_index, uniform_riemann") (lean := "BGS.HasseWeil.FiniteExtensionDivisorClass, BGS.HasseWeil.finiteExtensionDivisorClassDegree, BGS.HasseWeil.finiteExtensionEffectiveDivisorClassFiberEquiv, BGS.HasseWeil.HasFiniteExtensionUniformEventualRiemannFormula, BGS.HasseWeil.finiteExtensionEffectiveDivisorCount_eq_classCount_mul_geomSum_of_uniformRiemann, BGS.HasseWeil.finiteExtensionDivisorClassOfDegree_natCard_add_index, BGS.HasseWeil.finiteExtensionEffectiveDivisorCount_indexed_eventual_recurrence, BGS.HasseWeil.finiteExtensionEffectiveDivisorCount_indexed_eventual_recurrence_complex, BGS.HasseWeil.hasFiniteExtensionUniformEventualRiemannFormula_of_fullConstantField") (tags := "proved-in-lean, zeta-function, divisor-class, recurrence") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "187--188, Lemma 5.1.4, divisor-class recurrence"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean forms the full divisor-class quotient, descends divisor degree to it,
and identifies each fixed-degree effective fiber with the projectivized
Riemann space of a signed class representative.  Translation by a divisor
of degree $`\partial` proves periodicity of the number of degree classes.
The uniform Riemann--Roch bridge supplies the eventual dimension formula for
every sufficiently large signed divisor.  The actual coefficients therefore
satisfy

$$`A_{n+2\partial}
  =(q^\partial+1)A_{n+\partial}-q^\partial A_n.`

The displayed recurrence and all class-group bookkeeping are proved in Lean;
the earlier named Riemann--Roch parameter is now discharged by
`uniform_riemann`.
:::

:::lemma_ "formal_recurrence" (parent := "hasse_weil") (lean := "BGS.HasseWeil.curveZetaDenominator_eq_quadratic, BGS.HasseWeil.coeff_mul_curveZetaDenominator_succ_succ, BGS.HasseWeil.powerSeries_eq_coe_trunc_of_coeff_eq_zero, BGS.HasseWeil.exists_curveZetaRationalForm_of_eventual_coeff_recurrence, BGS.HasseWeil.exists_normalized_curveZetaRationalForm_of_eventual_coeff_recurrence, BGS.HasseWeil.indexedCurveZetaDenominator, BGS.HasseWeil.HasIndexedCurveZetaRationalForm, BGS.HasseWeil.coeff_mul_indexedCurveZetaDenominator, BGS.HasseWeil.exists_normalized_indexedCurveZetaRationalForm_of_eventual_coeff_recurrence, BGS.HasseWeil.exists_normalized_curveZetaRationalForm_with_natDegree_lt, BGS.HasseWeil.exists_normalized_indexedCurveZetaRationalForm_with_natDegree_lt") (tags := "proved-in-lean, zeta-function, power-series, recurrence, degree-bound") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "187--188, Lemma 5.1.4 and the rationality calculation"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For a power series $`Z(T)=\sum A_nT^n`, Lean expands the coefficient of
$`Z(T)(1-T)(1-qT)`.  If the $`A_n` eventually satisfy the resulting
second-order recurrence, every sufficiently high coefficient of that product
vanishes.  Truncation therefore gives an actual polynomial $`P(T)` and proves
$`Z(T)(1-T)(1-qT)=P(T)`, preserving the normalized constant coefficient.
The construction also exposes $`\deg P<N+2`; the indexed version gives
$`\deg P<N+2\partial`.
Given the explicit recurrence, the same argument applies to the degree-index
denominator $`(1-T^\partial)(1-q^\partial T^\partial)`.  The standard
denominator is obtained when $`\partial=1`.
:::

:::lemma_ "euler_uniqueness" (parent := "hasse_weil") (uses := "formal_recurrence") (lean := "BGS.HasseWeil.powerSeries_eq_of_constantCoeff_eq_of_derivative_eq_mul, BGS.HasseWeil.eq_formalPointCountZeta_of_normalized_pointCountDerivative, BGS.HasseWeil.effectiveDivisorCountSeries, BGS.HasseWeil.HasEffectiveDivisorPointCountRecurrence, BGS.HasseWeil.effectiveDivisorCountSeries_hasPointCountDerivative, BGS.HasseWeil.effectiveDivisorCountSeries_eq_formalPointCountZeta, BGS.HasseWeil.exists_formalPointCountZeta_rational_of_effectiveDivisor_recurrences, BGS.HasseWeil.exists_formalPointCountZeta_indexed_rational_of_effectiveDivisor_recurrences, BGS.HasseWeil.exists_formalPointCountZeta_rational_with_natDegree_lt_of_effectiveDivisor_recurrences, BGS.HasseWeil.exists_formalPointCountZeta_indexed_rational_with_natDegree_lt_of_effectiveDivisor_recurrences") (tags := "proved-in-lean, zeta-function, power-series, euler-product, degree-bound") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "189--190, Proposition 5.1.8, Euler product"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Over $`\mathbf C[[T]]`, a constant coefficient together with an equation
$`Z'=ZA` determines $`Z` coefficient by coefficient.  Hence any normalized
effective-divisor series satisfying Euler's point-count derivative identity
is provably equal to
`formalPointCountZeta pointCount`.  Lean packages the exact marked-divisor
coefficient recurrence and composes it with both the indexed and standard
rationality theorems, retaining the explicit numerator bounds
$`\deg P<N+2` and $`\deg P<N+2\partial`.  The required marked-divisor recurrence for exhaustive
closed places is supplied by `closed_place_euler`; identifying its closed-place
sequence is identified with the geometric extension point count in
`closed_place_euler`.
:::

:::::::

#docs (Manual) hasseWeilZetaTrace "Hasse--Weil: degree index and zeta trace" :=
:::::::

# Degree index one and the zeta trace

This section proves the closed-place Euler recurrence, removes the divisor
degree index by exact constant extension, and extracts the finite reciprocal-root
trace formula.

:::lemma_ "closed_place_euler" (parent := "hasse_weil") (uses := "divisor_split, zeta_coefficients") (lean := "BGS.HasseWeil.weightedEffectiveDivisorCount, BGS.HasseWeil.weightedClosedPlaceExtensionCount, BGS.HasseWeil.weightedEffectiveDivisorPointCountRecurrence, BGS.HasseWeil.finiteExtensionEffectiveDivisorDegree_eq_weight, BGS.HasseWeil.finiteExtensionClosedPlaceExtensionCount, BGS.HasseWeil.finiteExtensionEffectiveDivisorPointCountRecurrence") (tags := "proved-in-lean, zeta-function, euler-product, closed-places") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "189--190, Proposition 5.1.8, Euler product"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Marking one occurrence of a place in an effective divisor gives an explicit
finite combinatorial bijection.  After restricting to the finite set of
places of degree at most $`n+1`, Lean obtains

$$`(n+1)A_{n+1}
  =\sum_{i+j=n} A_i\sum_{\deg P\mid j+1}\deg P.`

Thus the exhaustive effective-divisor series satisfies the exact formal
Euler recurrence with the closed-place sequence
$`N_r=\sum_{\deg P\mid r}\deg P`.  No geometric counting hypothesis is used.
:::

:::theorem "indexed_zeta" (parent := "hasse_weil") (uses := "class_recurrence, closed_place_euler, euler_uniqueness, degree_index") (lean := "BGS.HasseWeil.finiteExtensionEffectiveDivisorCount_zero, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_indexed_rational, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_indexed_rational_of_constants, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_indexed_rational_with_natDegree_lt_of_constants") (tags := "proved-in-lean, zeta-function, riemann-roch, divisor-index, degree-bound") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "189--190, Proposition 5.1.8, divisor zeta and Euler product"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean now composes the exhaustive divisor-class recurrence with the closed-place
Euler recurrence.  Exact constants automatically supply Riemann--Roch, so
this produces a normalized polynomial numerator with denominator
$`(1-T^\partial)(1-q^\partial T^\partial)`, where $`\partial` is the divisor
degree index and retains the formal numerator-degree bound.  The composition
contains no additional zeta-function or Riemann--Roch assumption.  The
standard denominator separately requires $`\partial=1`.
:::

:::lemma_ "simple_pole_growth" (parent := "hasse_weil") (uses := "class_recurrence, uniform_riemann") (lean := "BGS.HasseWeil.finiteExtensionDivisorClassOfDegreeIndexMul, BGS.HasseWeil.exists_finiteExtensionEffectiveDivisorCount_pow_mul_lt_add_index_ge, BGS.HasseWeil.indexedCurveZetaNumerator_eval_one_ne_zero_of_growth, BGS.HasseWeil.finiteExtensionClosedPlaceZeta_indexedNumerator_eval_one_ne_zero_of_uniformRiemann, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_indexed_rational_nonvanishing") (tags := "proved-in-lean, zeta-function, simple-pole, divisor-count") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "188--189, Proposition 5.1.6 and Corollary 5.1.7"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The Riemann--Roch class formula yields a discrete simple-pole witness.  For
some sufficiently large admissible $`n`, Lean proves

$$`q^{\partial}A_n<A_{n+\partial}.`

Lean compresses the coefficients supported in multiples of $`\partial`, uses
an arbitrarily late strict-growth witness, and proves that the normalized
indexed numerator is nonzero at $`T=1`.  This is the required simple-pole
noncancellation, derived from Riemann--Roch rather than assumed.
:::

:::lemma_ "extension_identity" (parent := "hasse_weil") (uses := "degree_index") (lean := "BGS.HasseWeil.subst_pointCountDerivativeSeries_mul_derivative_X_pow, BGS.HasseWeil.pointCountDerivativeSeries_nat_mul, BGS.HasseWeil.formalPointCountZeta_hasDegreeExtensionIdentity_of_positive, BGS.HasseWeil.formalPointCountZeta_hasDegreeExtensionIdentity, BGS.HasseWeil.finiteExtensionClosedPlaceExtensionCount_eq_zero_of_not_dvd_index, BGS.HasseWeil.finiteExtensionClosedPlaceZeta_hasDegreeExtensionIdentity") (tags := "proved-in-lean, zeta-function, constant-extension, formal-algebra") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "191, Proposition 5.1.10, constant-extension zeta identity"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean reindexes the point-count logarithmic derivative.  If
$`N_{\mathrm{ext}}(r)=N(\partial r)` and $`N(n)=0` outside multiples of
$`\partial`, uniqueness of the normalized differential equation proves

$$`Z_{\mathrm{ext}}(T^{\partial})=Z(T)^{\partial}.`

The identity is derived rather than assumed.  Its geometric count relation
is supplied by the completed constant-extension place splitting theorem; the
required degree-index support of the exhaustive closed-place count is also
proved internally.
:::

:::lemma_ "schmidt_algebra" (parent := "hasse_weil") (uses := "indexed_zeta, extension_identity, simple_pole_growth") (lean := "BGS.HasseWeil.indexedCurveZetaDenominatorPolynomial, BGS.HasseWeil.HasFormalDegreeExtensionZetaIdentity, BGS.HasseWeil.subst_indexedCurveZetaDenominator, BGS.HasseWeil.clearedNumeratorIdentity_of_two_indexed_rationalForms, BGS.HasseWeil.indexedCurveZetaDenominatorPolynomial_derivative_eval_one_ne_zero, BGS.HasseWeil.degreeIndex_eq_one_of_twoIndexed_clearedNumeratorIdentity, BGS.HasseWeil.degreeIndex_eq_one_of_two_indexed_rationalForms_and_degreeExtension") (tags := "proved-in-lean, zeta-function, degree-index, formal-algebra") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "191, Corollary 5.1.11, F. K. Schmidt's theorem"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean formalizes the noncircular pole-order comparison.  The constant
extension may retain an arbitrary positive degree index $`e`; only its indexed
rational form is used.  Clearing denominators and differentiating at $`T=1`
contradicts $`\partial>1`, because the two sides then have different zero
orders.  Hence $`\partial=1` once the geometric extension-count identity is
available.
:::

:::lemma_ "finite_split_count" (parent := "hasse_weil") (uses := "constant_extension_finite_places, place_towers") (lean := "BGS.HasseWeil.exactConstantExtensionFinitePlace_ramificationIdx_eq_one, BGS.HasseWeil.exactConstantExtensionFinitePlace_fiber_card_eq_gcd, BGS.HasseWeil.exactConstantExtensionPresentedFinitePlaceEquiv, BGS.HasseWeil.exactConstantExtensionPresentedFinitePlaceFiberEquiv, BGS.HasseWeil.exactConstantExtensionPresentedFinitePlaceFiber_natCard_eq_gcd, BGS.HasseWeil.exactConstantExtensionPresentedUpstairsFinitePlaceEquiv, BGS.HasseWeil.exactConstantExtensionPresentedFinitePlaceFiber_natCard_eq_gcd_of_downstairs") (tags := "proved-in-lean, constant-extension, finite-places, splitting") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "190, Lemma 5.1.9, constant-extension place splitting"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Every finite place is unramified in an exact extension of constants.  Lean
identifies the explicit enlarged-constant normalization primes with all actual
finite places over both constant fields and proves that every full fiber over
a degree-$`d` place has $`\gcd(r,d)` elements.
:::

:::lemma_ "infinity_split_count" (parent := "hasse_weil") (uses := "constant_extension_infinity_places, place_towers") (lean := "BGS.HasseWeil.exactConstantExtensionInfinityPlace_ramificationIdx_eq_one, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlace_degree_baseChange, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlace_relativeInertiaDeg_eq_div_gcd, BGS.HasseWeil.exactConstantExtensionInfinityPlace_fiber_card_eq_gcd, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlaceFiberEquiv, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlaceFiber_natCard_eq_gcd") (tags := "proved-in-lean, constant-extension, infinity-places, splitting") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "190, Lemma 5.1.9, constant-extension place splitting"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

The reciprocal presentation exhausts the actual infinity places.  Residue
degrees satisfy the constant-field tower formula, all relative ramification
indices are one, and every fiber over a degree-$`d` infinity place has
$`\gcd(r,d)` elements.
:::

:::lemma_ "constant_place_support" (parent := "hasse_weil") (uses := "finite_split_count, infinity_split_count, closed_place_euler") (lean := "BGS.HasseWeil.ExactConstantExtensionPresentedInfinityPlace, BGS.HasseWeil.ExactConstantExtensionPresentedPlace, BGS.HasseWeil.exactConstantExtensionPresentedPlace_degree_eq_div_gcd, BGS.HasseWeil.exactConstantExtensionPresentedPlace_degree_eq_one_iff_dvd, BGS.HasseWeil.exactConstantExtensionPresentedRationalPlaceEquivDegreeDvd, BGS.HasseWeil.exactConstantExtensionPresentedPlace_closedContribution_eq, BGS.HasseWeil.finiteExtensionClosedPlaceExtensionCount_eq_degreeDvdSum, BGS.HasseWeil.finiteExtensionClosedPlaceExtensionCount_eq_sum_degree_dvd, BGS.HasseWeil.finiteExtensionClosedPlaceExtensionCount_zero, BGS.HasseWeil.div_gcd_dvd_iff_dvd_mul, BGS.HasseWeil.sum_degree_dvd_eq_sum_degree_dvd_of_div_gcd_fibers, BGS.HasseWeil.exactConstantExtensionPresentedInfinityPlaceFiber_natCard_eq_gcd_of_downstairs, BGS.HasseWeil.exactConstantExtensionPresentedPlaceFiber_natCard_eq_gcd_of_downstairs, BGS.HasseWeil.exactConstantExtensionClosedPlaceExtensionCount_eq") (tags := "proved-in-lean, constant-extension, closed-places, rational-place-support") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "190, Lemma 5.1.9(d), constant-extension splitting and rational-place criterion"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "206--207, equation (5.40), extension-count identity"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

The finite and reciprocal-infinity normalizations are combined into one
presented-place type.  For an exact degree-$`r` constant extension, Lean proves
that an upstairs presented place is rational exactly when its downstairs
degree divides $`r`.  This identifies the support of the closed-place
coefficient with rational presented places.  The finite-support arithmetic is
complete, including level zero and the bounded fiber-sum identity.  Both the
finite and infinity fibers now have the required exhaustive gcd cardinality;
for every finite separable function-field extension, their global sum gives
$`N_{S\otimes_C N}(n)=N_N([S:C]n)` exactly.
:::

:::lemma_ "schmidt_index_one" (parent := "hasse_weil") (uses := "schmidt_algebra, constant_place_support, extension_identity, indexed_zeta") (lean := "BGS.HasseWeil.exactConstantExtensionClosedPlaceExtensionCount, BGS.HasseWeil.exactConstantExtensionClosedPlaceExtensionCount_eq_classical_decidableEq, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_indexed_rational_nonvanishing_of_constants, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_eq_one_of_exactConstantExtension_closedPlaceCount, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_eq_one_of_all_exactConstantExtension_closedPlaceCount, BGS.HasseWeil.finiteExtensionDivisorDegreeIndex_eq_one_of_exactConstants") (tags := "proved-in-lean, zeta-function, degree-index, constant-extension") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "191, Proposition 5.1.10 and Corollary 5.1.11"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For a finite separable function-field extension with exact constants, choose
the constant extension of degree $`\partial`, apply the exact closed-place
identity, and compare pole orders at $`T=1`.  The comparison forces the divisor
degree index to satisfy $`\partial=1`.
:::

:::theorem "zeta_rational_form" (parent := "hasse_weil") (uses := "extension_counts, indexed_zeta, schmidt_index_one") (lean := "BGS.HasseWeil.hasCurveZetaRationalForm_of_indexed_index_one, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_rational_with_natDegree_lt_of_uniformRiemann, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_rational_with_genus_degree_bound, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_rational_with_genus_degree_bound_of_exactConstants") (tags := "proved-in-lean, zeta-function, algebraic-geometry, coarse-degree") (effort := "large") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "284--287, Definition 5.11 and Theorem 6.1 (scans 302--305)"
    text := some {
      path := "source/LorenziniVIII.tex"
      startLine := 70
      endLine := 277
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For the actual extension point-count sequence, Lean constructs
$`P\in\mathbf C[T]`
with $`P(0)=1` and proves that the canonical formal exponential zeta series has
curve form

$$`Z_C(T)=\frac{P(T)}{(1-T)(1-qT)}.`

Degree index one converts the indexed Riemann--Roch numerator to this standard
form, with noncancellation.  The constant-extension splitting formula supplies
degree index one by Schmidt's argument.  The present Lean endpoint proves only

$$`\deg P<2g+2,`

or equivalently $`\deg P\leq2g+1`; it does not yet prove Lorenzini's sharp
$`\deg P\leq2g`.  This one-degree distinction is recorded in the next node
rather than hidden by the name of this proved boundary.
:::

:::theorem "sharp_zeta_rationality" (parent := "hasse_weil") (uses := "zeta_rational_form, riemann_roch_core, class_counts") (tags := "gap, source-specified, lorenzini, zeta-function, sharp-degree") (effort := "large") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "285--287, Theorem 6.1 and equations (6.1)--(6.7) (scans 303--305)"
    text := some {
      path := "source/LorenziniVIII.tex"
      startLine := 136
      endLine := 270
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For a nonsingular complete curve $`X/\mathbf F_q` of genus $`g`, the standard
zeta numerator may be chosen in $`\mathbf Z[T]` with

$$`P(0)=1,\qquad \deg P\leq2g,\qquad
Z_X(T)=\frac{P(T)}{(1-T)(1-qT)}.`

Lorenzini obtains the sharp truncation by counting effective divisors in each
degree class and inserting the exact Riemann--Roch formula once the degree is
greater than $`2g-2`.  Formalizing the sharp last-coefficient cancellation and
the integral-coefficient conclusion are the remaining differences between
`zeta_rational_form` and this theorem.
:::

:::lemma_ "zeta_trace" (parent := "hasse_weil") (uses := "zeta_rational_form") (lean := "BGS.HasseWeil.formalPointCountZeta, BGS.HasseWeil.formalPointCountZeta_hasPointCountDerivative, BGS.HasseWeil.hasZetaNumeratorPointCountFormula_of_formalPointCountZeta_rational, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_trace_with_degree_budget, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_trace_with_degree_budget_of_exactConstants") (tags := "proved-in-lean, formal-power-series, trace-formula")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "283, equation (5.4) (scan 301)"
      text := some {
        path := "source/LorenziniVIII.tex"
        startLine := 3
        endLine := 7
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "354, opening of Section 5 (scan 372)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 266
        endLine := 289
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

Lean proves directly from formal power-series differentiation that a
normalized rational form yields reciprocal-root parameters $`\alpha_i` with

$$`\#C(\mathbf F_{q^n})=q^n+1-\sum_i\alpha_i^n.`

Thus no analytic logarithm is used.  Exact constants and a genus budget now
supply the rational form and trace package together.
:::

:::::::

#docs (Manual) hasseWeilFunctionalEquation "Hasse--Weil: functional equation" :=
:::::::

# Functional equation and reciprocal roots

This page records Lorenzini VIII.7 exactly.  The functional equation is needed
for the full reciprocal-root Riemann hypothesis, although the shorter formal
route to the degree-one point-count inequality only uses the upper root bound.

:::theorem "zeta_functional_equation" (parent := "hasse_weil") (uses := "sharp_zeta_rationality, riemann_roch_core, class_counts") (tags := "gap, source-specified, lorenzini, zeta-function, functional-equation") (effort := "large") (priority := "medium")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "288--290, Theorem 7.1 (scans 306--308)"
    text := some {
      path := "source/LorenziniVIII.tex"
      startLine := 345
      endLine := 473
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

For a nonsingular complete curve $`X/\mathbf F_q` of genus $`g`, write

$$`Z_X(T)=\frac{f(T)}{(1-T)(1-qT)},\qquad
f(T)=\prod_{i=1}^{2g}(1-\alpha_iT).`

Riemann--Roch with a canonical class of degree $`2g-2` pairs the low-degree
and high-degree divisor-class contributions and proves

$$`Z_X(1/(qT))=(qT^2)^{1-g}Z_X(T).`

The same coefficient comparison forces $`\deg f=2g`.  The reciprocal-root
consequence is separated into the next node so that repeated roots are retained
with their multiplicities.
:::

:::lemma_ "reciprocal_root_pairing" (parent := "hasse_weil") (uses := "zeta_functional_equation") (tags := "gap, source-specified, lorenzini, zeta-function, reciprocal-roots") (effort := "medium") (priority := "medium")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[
    {
      page := "288, Theorem 7.1(ii) (scan 306)"
      text := some {
        path := "source/LorenziniVIII.tex"
        startLine := 369
        endLine := 405
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "290, Remark 7.2 (scan 308)"
      text := some {
        path := "source/LorenziniVIII.tex"
        startLine := 475
        endLine := 504
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    },
    {
      page := "354--355, reciprocal pairing as used in Lemma 5.1 (scans 372--373)"
      text := some {
        path := "source/LorenziniX.tex"
        startLine := 274
        endLine := 360
      }
      pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
    }
  ]
}
%%%

If $`f(T)=\prod_{i=1}^{2g}(1-\alpha_iT)`, then

$$`\prod_{i=1}^{2g}\alpha_i=q^g`

and there is a permutation $`\tau` of the $`2g` indexed roots such that

$$`\alpha_{\tau(i)}=\frac q{\alpha_i}`

for every $`i`.  Equivalently, the root multiset, not merely the underlying
set, is invariant under $`\alpha\mapsto q/\alpha`.  Lorenzini uses this pairing
in Lemma X.5.1 to turn the upper spectral bound into the equality
$`|\alpha_i|=\sqrt q`.  The targeted degree-one point-count inequality only
needs the upper bound $`|\alpha_i|\leq\sqrt q`, but the pairing is part of the
complete source proof.
:::

:::::::

#docs (Manual) hasseWeilGenus "Hasse--Weil: genus and zeta degree" :=
:::::::

# Genus and zeta-degree control

This section proves the plane-curve genus budget and the corresponding zeta
numerator-degree estimate.

:::lemma_ "functional_gluing" (parent := "hasse_weil") (lean := "BGS.HasseWeil.exists_linearMap_extending_eq_zero_on, BGS.HasseWeil.exists_linearMap_extending_eq_zero_on_inf, BGS.HasseWeil.exists_ne_zero_linearMap_extending_eq_zero_on_inf") (tags := "proved-in-lean, linear-algebra, weil-functional") (effort := "small") (priority := "high")

A functional on a subspace $`U` which vanishes on $`U\cap V` glues with
zero on $`V`.  Lean extends the glued map to the ambient vector space and
preserves nonvanishing.  This is the abstract extension step used by the
placewise cotrace construction below.
:::

:::lemma_ "ratfunc_canonical_divisor" (parent := "hasse_weil") (uses := "riemann_roch_core") (lean := "BGS.HasseWeil.ratFuncIdentityInfinityPlace_degree_eq_one, BGS.HasseWeil.ratFuncCanonicalInfinityDivisor_degree, BGS.HasseWeil.ratFuncCanonicalInfinityDivisor_isCanonical") (tags := "proved-in-lean, rational-function-field, canonical-divisor") (effort := "medium") (priority := "high")

Lean chooses an actual place above infinity in the identity extension
$`K(X)/K(X)` and proves that it has degree one.  Thus the divisor $`-2\infty`
has degree $`-2`; genus zero and the negative-degree Riemann--Roch-space
vanishing theorem prove that it is canonical.  This supplies the base
functional for the cotrace construction without an assumption.
:::

:::lemma_ "canonical_cotrace" (parent := "hasse_weil") (uses := "functional_gluing, ratfunc_canonical_divisor") (lean := "BGS.HasseWeil.valuation_trace_le_one_of_different_count_bounds_over, BGS.HasseWeil.finiteExtensionFiberTrace_surjective, BGS.HasseWeil.finiteExtensionFiberTrace_finite_valuation_le_one, BGS.HasseWeil.finiteExtensionFiberTrace_infinite_valuation_le_exp_neg_two, BGS.HasseWeil.finiteExtensionFiberCotrace_vanishes_on_intersection, BGS.HasseWeil.finiteExtensionFiberCotrace_ne_zero, BGS.HasseWeil.finiteExtensionCanonicalDifferent_le_divOmega, BGS.HasseWeil.exists_element_with_counts_over_and_exact_at, BGS.HasseWeil.exists_trace_eq_of_count_threshold_lt_neg_different, BGS.HasseWeil.ratFuncCanonicalWeil_exists_singlePlace_witness, BGS.HasseWeil.finiteExtensionFiberLift_normalized_trace, BGS.HasseWeil.finiteExtensionFiberCotrace_detects_finite_excess, BGS.HasseWeil.finiteExtensionFiberCotrace_detects_infinity_excess, BGS.HasseWeil.finiteExtensionFiberCotrace_detects_not_le, BGS.HasseWeil.finiteExtensionCanonicalDifferent_isCanonical_of_cotrace") (tags := "proved-in-lean, cotrace, canonical-divisor, different, local-maximality") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[
    {
      page := "91--93, Definition 3.4.1, Proposition 3.4.2, Remark 3.4.4"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    },
    {
      page := "93--97, Theorem 3.4.6; 94, Corollary 3.4.7"
      pdf := some { path := "source/StichtenothFunctionFields.pdf" }
    }
  ]
}
%%%

For a finite separable function field with full constant field, Lean constructs
the placewise field-trace map on fiber-constant adeles.  The local different
bounds at finite places and the order-$`-2` infinity bound put its image in
the base canonical filtration.  Surjectivity and linear-functional gluing then
produce a nonzero Weil differential $`\omega` satisfying

$$`D_{dX}\leq\operatorname{div}(\omega).`

Lean proves equality when $`K` is the full constant field.  Weak
approximation and trace duality construct a one-place witness for every
finite excess.  At infinity, multiplying by a squared uniformizer compensates
for the base differential's order $`-2`.  These witnesses detect every
$`B\nleq D_{dX}` after cotrace.  Linear-functional gluing therefore makes
$`D_{dX}` the exact maximal vanishing divisor, completing Steps (b1)--(b3) of
Stichtenoth's argument without a Riemann--Hurwitz degree premise.
:::

:::lemma_ "canonical_genus_bridge" (parent := "hasse_weil") (uses := "riemann_roch_core, canonical_cotrace") (lean := "BGS.HasseWeil.finiteExtensionCanonicalDifferent_degree_eq_two_genus_sub_two_iff, BGS.HasseWeil.finiteExtensionCanonicalDifferent_isCanonical_iff_genus_le_finrank_of_degree_eq, BGS.HasseWeil.finiteExtensionCanonicalDifferent_finrank_bounds_of_degree_eq, BGS.HasseWeil.finiteExtensionCanonicalDifferent_isCanonical_of_degree_eq, BGS.HasseWeil.finiteExtension_genus_le_budget_of_cotrace_and_degree_eq, BGS.HasseWeil.finiteExtension_genus_le_budget_of_canonicalDifferent_isCanonical, BGS.HasseWeil.finiteExtension_genus_le_canonicalDifferent_finrank_of_cotrace, BGS.HasseWeil.finiteExtension_genus_le_budget_of_cotrace, BGS.HasseWeil.planeCurve_canonicalDifferentDivisor_degree_le_two_genusBudget_sub_two, BGS.HasseWeil.planeCurve_genus_le_bidegreeGenusBudget_of_cotrace_degree_eq, BGS.HasseWeil.planeCurve_genus_le_bidegreeGenusBudget_of_cotrace") (tags := "proved-in-lean, canonical-divisor, genus-bound, one-partial") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "99, Corollary 3.4.14, degree of the different"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

With only the second coordinate derivative nonzero, Lean already bounds the
explicit different divisor by

$$`\deg D_{dX}\leq 2(d_x-1)(d_y-1)-2.`

Lean also separates the older conditional route into the Riemann--Hurwitz
degree identity and the one-dimensional Riemann--Roch condition

$$`D_{dX}\text{ is canonical}\quad\Longleftrightarrow\quad
g\leq\dim_K L(D_{dX}),`

with $`g-1\leq\dim_K L(D_{dX})\leq g`.  The direct cotrace theorem now removes
both conditions: canonicality follows from local maximality, and any upper
bound for $`\deg D_{dX}` gives the corresponding genus bound.  For an
absolutely irreducible plane polynomial, Lean discharges the
full-constant-field hypothesis and proves

$$`g\leq(d_x-1)(d_y-1)`

assuming only $`\partial f/\partial y\ne0` and
$`\deg_y f<|K|`.  No canonical-different degree identity remains in this
one-coordinate genus step.
:::

:::lemma_ "genus_budget" (parent := "hasse_weil") (uses := "uniform_riemann, intrinsic_riemann_budget") (lean := "BGS.HasseWeil.genus_le_budget_of_uniformRiemann_onePoint, BGS.HasseWeil.finiteExtensionFinitePlace_nonempty, BGS.HasseWeil.planeCurve_genus_le_bidegreeGenusBudget") (tags := "proved-in-lean, riemann-roch, genus-bound, plane-curve") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "31, Theorem 1.5.17, nonspecial divisors"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Lean proves a generic comparison: if one-point Riemann spaces satisfy
$`n\deg(P)+1\leq\ell(nP)+B` and the uniform eventual Riemann--Roch formula
has genus parameter $`g`, then $`g\leq B`.  The plane-curve specialization
constructs a finite place, proves the constant field is exact, applies the
transported Riemann--Roch theorem, and obtains unconditionally
$`g\leq(d_x-1)(d_y-1)`.
:::

:::lemma_ "zeta_degree" (parent := "hasse_weil") (uses := "zeta_rational_form, genus_budget, formal_recurrence") (lean := "BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_rational_with_genus_degree_bound, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_trace_with_degree_budget, BGS.HasseWeil.exists_finiteExtensionClosedPlaceZeta_trace_with_degree_budget_of_exactConstants") (tags := "proved-in-lean, zeta-numerator, genus-bound, coarse-degree") (effort := "medium") (priority := "high")

From the truncation construction Lean obtains $`\deg P<2g+2`, which is enough
for the external theorem's universal coefficient.  Combining this with the
automatic plane-curve genus budget gives $`\deg P\leq 2B+1`.  This avoids
requiring the sharper identity $`\deg P=2g`; exact constants now discharge
degree index one automatically.
:::

:::::::

#docs (Manual) hasseWeilConclusion "Hasse--Weil: spectral and affine conclusion" :=
:::::::

# Spectral and affine conclusion

The normal-closure estimate controls one fixed divisible-even sequence.  The
spectral argument converts it to the degree-one closed-place bound; plane
normalization and Frobenius deflation then give the affine theorem.

## Divisible spectral conversion

:::theorem "conditional_spectral_bound" (parent := "hasse_weil") (uses := "zeta_trace, zeta_degree, constant_place_support") (lean := "BGS.HasseWeil.spectral_norm_le_sqrt_of_evenPowerSum_isBigO, BGS.HasseWeil.spectral_norm_le_sqrt_of_divisibleEvenPowerSum_isBigO, BGS.HasseWeil.divisibleEvenPowerSum_isBigO_of_extensionPointCountError_isBigO_of_rank, BGS.HasseWeil.abs_pointCount_sub_card_sub_one_le_of_rank_extensionFormula_and_divisibleEvenError_isBigO, BGS.HasseWeil.abs_pointCount_sub_card_sub_one_le_of_zetaNumerator_and_divisibleEvenError_isBigO, BGS.HasseWeil.abs_pointCount_sub_card_sub_one_le_of_formalPointCountZeta_rational_and_divisibleEvenError_isBigO, BGS.HasseWeil.divisibleEvenExtensionError_isBigO_of_pointwise_bound, BGS.HasseWeil.finiteExtensionClosedPlaceHasseBound_of_exactConstants_and_divisibleEvenError, BGS.HasseWeil.finiteExtensionClosedPlaceHasseBound_of_exactConstants_and_divisibleEvenError_bound, BGS.HasseWeil.finiteExtensionClosedPlace_divisibleEvenError_bound_of_constantBase, BGS.HasseWeil.finiteExtensionClosedPlace_divisibleEvenError_isBigO_of_constantBase, BGS.HasseWeil.finiteExtensionClosedPlaceHasseBound_of_constantBase_bound") (tags := "proved-conditional-composition, proved-divisible-subsequence, arbitrary-rank, spectral, hasse-bound") (effort := "large") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "199, Lemma 5.2.5, equations (5.20)--(5.22)"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Assuming the two-sided even-extension estimate, every reciprocal-root modulus
is bounded by $`\sqrt q` using a finite power-sum argument and specializes the
trace formula at degree one.  The same conclusion holds, for an arbitrary
numerator rank, when estimates are available only in degrees $`2\delta n`.
For a finite separable function field with exact constants and a genus budget,
Lean now consumes the pointwise Lorenzini-shaped premise

$$`|N_{2\delta n}-q^{2\delta n}-1|
\leq A+B(q^\delta)^n`

and proves

$$`|N_1-q-1|\leq (\deg P)\sqrt q`

using zeta rationality, index one, and the trace formula.  This is the
divisible-even-subsequence form of Stichtenoth Lemma 5.2.5.  Constant-base
transport gives the corresponding conditional theorem over the original
ground field.
:::

:::theorem "spectral_bound" (parent := "hasse_weil") (uses := "normal_closure_error, conditional_spectral_bound") (lean := "BGS.HasseWeil.finiteExtensionClosedPlaceHasseWeil") (tags := "proved-in-lean, source-specified, closed-places, spectral, hasse-bound") (effort := "small") (priority := "high")
%%%
source := {
  document := "lorenzini-arithmetic-geometry"
  spans := #[{
    page := "354--355, Lemmas 5.1--5.3 (scans 372--373)"
    text := some {
      path := "source/LorenziniX.tex"
      startLine := 274
      endLine := 360
    }
    pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }
  }]
}
%%%

Apply the divisible spectral lemma to `normal_closure_error`.  The resulting
root-modulus bound and the degree-one trace formula give, for every finite
separable $`F/K(X)` with exact constants,

$$`|N_1-q-1|\leq (2g(F/K)+1)\sqrt q.`

Lorenzini's simultaneous-phase argument on pp. 354--355 is an equivalent
form of the spectral step; its stronger functional-equation conclusion is not
needed here.
:::

## Affine normalization

:::theorem "affine_from_rational_hasse" (parent := "hasse_weil") (uses := "affine_into_normalization, affine_error_arithmetic") (lean := "BGS.HasseWeil.abs_affinePlaneCurvePoint_card_sub_card_le_eight_mul_bidegree_of_rationalPlaceHasse") (tags := "proved-conditional-composition, affine-plane, normalization") (effort := "medium") (priority := "high")

Suppose both coordinate partials are nonzero and the normalization satisfies

$$`|N_1-q-1|\leq r\sqrt q,\qquad
  r\leq 2(d_x-1)(d_y-1)+1.`

The two normalization comparisons, the critical-fiber estimate, and the
elementary fiber bound then give

$$`|N_{\mathrm{aff}}-q|\leq 8\sqrt q\,d_xd_y.`
:::

:::theorem "conditional_affine_hasse_weil" (parent := "hasse_weil") (uses := "affine_from_rational_hasse, genus_budget, zeta_degree, conditional_spectral_bound") (lean := "BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree_of_standardZeta, BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree_of_evenError, BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree_of_divisibleEvenError") (tags := "proved-conditional-composition, proved-divisible-subsequence, affine-plane") (effort := "large") (priority := "high")

For an absolutely irreducible plane equation whose two coordinate partials
are nonzero, Lean now composes exact constants, the intrinsic bidegree genus
budget, automatic zeta/index/trace, the spectral argument, and both directions
of the affine/normalization comparison.  The result is the coefficient-$`8`
affine Hasse bound under either the all-even or one fixed divisible-even
`IsBigO` estimate and the two nonzero-partial hypotheses.
:::

## Frobenius deflation

:::lemma_ "frobenius_deflation_step" (parent := "hasse_weil") (uses := "coordinate_shear") (lean := "BGS.HasseWeil.planeFirstInflateHom_planeFirstDeflate, BGS.HasseWeil.hasBidegreeAtMost_of_planeFirstInflateHom, BGS.HasseWeil.absolutelyIrreducible_of_planeFirstInflateHom_eq, BGS.HasseWeil.pderiv_one_ne_zero_of_planeFirstInflateHom_eq, BGS.HasseWeil.degreeOf_zero_lt_of_planeFirstInflateHom_eq, BGS.HasseWeil.card_affinePlaneCurveZeros_eq_of_planeFirstInflateHom_eq, BGS.HasseWeil.exists_planeFirstFrobeniusDeflationStep") (tags := "proved-in-lean, affine-plane, frobenius, inseparable-coordinate") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "144--145, Proposition 3.10.2(c),(d), Frobenius subfields and separating elements"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

If $`\partial f/\partial x=0` and the actual $`x`-degree is positive, Lean
constructs $`g` with $`f(x,y)=g(x^p,y)`.  This single step preserves the
affine zero count, absolute irreducibility, the nonzero $`y`-partial, and the
given bidegree bounds, while strictly lowering the actual $`x`-degree.
:::

:::lemma_ "frobenius_deflation_iteration" (parent := "hasse_weil") (uses := "frobenius_deflation_step") (lean := "BGS.HasseWeil.exists_planeFirstSeparatingDeflation_or_degreeOf_zero") (tags := "proved-in-lean, affine-plane, frobenius, termination") (effort := "medium") (priority := "high")

Strong induction on the actual $`x`-degree iterates the strict step.  If the
$`y`-partial is nonzero, the process either reaches actual $`x`-degree zero
or produces a same-count, no-larger-bidegree equation with both partials
nonzero.
:::

:::lemma_ "univariate_degenerate" (parent := "hasse_weil") (lean := "BGS.HasseWeil.degreeOf_one_eq_one_of_absolutelyIrreducible_degreeOf_zero, BGS.HasseWeil.card_affinePlaneCurveZeros_eq_card_of_degreeOf_zero") (tags := "proved-in-lean, affine-plane, univariate, exact-point-count") (effort := "medium") (priority := "high")

If the actual $`x`-degree is zero, extension to the algebraic closure turns
the equation into an irreducible univariate polynomial in $`y`, hence a
linear polynomial.  Lean constructs the unique rational $`y`-root and proves
that the affine zero count is exactly $`|K|`.
:::

:::lemma_ "frobenius_deflation" (parent := "hasse_weil") (uses := "frobenius_deflation_iteration, univariate_degenerate, coordinate_shear") (lean := "BGS.HasseWeil.separatingFrobeniusDeflation_or_exactPointCount, BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_of_separating_case") (tags := "proved-in-lean, source-specified, affine-plane, frobenius, inseparable-coordinate") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "144--145, Proposition 3.10.2(c),(d), Frobenius subfields and separating elements"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

Assume first that $`f` has positive degree in both coordinates.  In
characteristic $`p`, the identity $`\partial f/\partial x=0` means that every
$`x`-exponent is divisible by $`p`; hence

$$`f(x,y)=g(x^p,y)`

for a unique polynomial $`g`.  The Frobenius map is a bijection on every
finite field, so $`f` and $`g` have the same affine zero count.  Absolute
irreducibility descends from $`f` to $`g`, and the first coordinate degree is
divided by $`p`.  A nonzero second partial remains nonzero.  Iterating in each
coordinate produces an absolutely irreducible $`f_{\mathrm{sep}}` with both
partials nonzero, the same affine zero count, and bidegrees satisfying

$$`d'_x\leq d_x,\qquad d'_y\leq d_y.`

Simultaneous vanishing of the two partials would make $`f` a $`p`-th power over
the algebraic closure, contradicting absolute irreducibility.  If an actual
coordinate degree is zero, absolute irreducibility over the algebraic closure
forces the remaining univariate polynomial to be linear, and its affine zero
count is exactly $`|K|`.  Proposition 3.10.2(c),(d) gives the corresponding
function-field description in terms of Frobenius subfields and separating
elements.
:::

## General affine theorem

:::theorem "affine_hasse_weil" (parent := "hasse_weil") (uses := "spectral_bound, affine_from_rational_hasse, genus_budget, frobenius_deflation") (lean := "BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree_of_separating, BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree, BGS.HasseWeil.generalBivariateAffineHasseWeilTheorem") (tags := "proved-in-lean, source-specified, affine-plane, external-replacement") (effort := "medium") (priority := "high")
%%%
source := {
  document := "stichtenoth-function-fields"
  spans := #[{
    page := "197--198, Theorems 5.2.1 and 5.2.3; affine corollary via normalization"
    pdf := some { path := "source/StichtenothFunctionFields.pdf" }
  }]
}
%%%

For every finite field $`K` and every geometrically irreducible bivariate
polynomial of positive bidegree at most $`(d_x,d_y)`, the affine zero count
satisfies the uniform coefficient-$`8` estimate

$$`\left|N_{\mathrm{aff}}-|K|\right|
  \leq 8\sqrt{|K|}\,d_xd_y.`

For nonzero coordinate partials, exact constants and the genus budget feed the
closed-place theorem into the normalization comparison.  Frobenius deflation
removes the separating-coordinate hypotheses without changing the affine
point count or increasing the supplied bidegrees.  The resulting theorem
inhabits the general affine Hasse--Weil interface used by the Markoff argument.
:::
:::::::

-- `include` resolves a module-like name to Verso's canonical document object.
-- These aliases let the independently elaborated documents above be included
-- as separate Blueprint pages while keeping their mathematics in one module.
def hasseWeilOverview.«the canonical document object name» :=
  (_root_.hasseWeilOverview)

def hasseWeilFoundations.«the canonical document object name» :=
  (_root_.hasseWeilFoundations)

def hasseWeilNormalization.«the canonical document object name» :=
  (_root_.hasseWeilNormalization)

def hasseWeilStepanov.«the canonical document object name» :=
  (_root_.hasseWeilStepanov)

def hasseWeilBaseChange.«the canonical document object name» :=
  (_root_.hasseWeilBaseChange)

def hasseWeilConstantExtensionGenus.«the canonical document object name» :=
  (_root_.hasseWeilConstantExtensionGenus)

def hasseWeilLorenziniAlternative.«the canonical document object name» :=
  (_root_.hasseWeilLorenziniAlternative)

def hasseWeilLorenziniGeometry.«the canonical document object name» :=
  (_root_.hasseWeilLorenziniGeometry)

def hasseWeilLorenziniStepanov.«the canonical document object name» :=
  (_root_.hasseWeilLorenziniStepanov)

def hasseWeilLorenziniAveraging.«the canonical document object name» :=
  (_root_.hasseWeilLorenziniAveraging)

def hasseWeilZeta.«the canonical document object name» :=
  (_root_.hasseWeilZeta)

def hasseWeilZetaTrace.«the canonical document object name» :=
  (_root_.hasseWeilZetaTrace)

def hasseWeilFunctionalEquation.«the canonical document object name» :=
  (_root_.hasseWeilFunctionalEquation)

def hasseWeilGenus.«the canonical document object name» :=
  (_root_.hasseWeilGenus)

def hasseWeilConclusion.«the canonical document object name» :=
  (_root_.hasseWeilConclusion)

def hasseWeilExactTwists.«the canonical document object name» :=
  (_root_.hasseWeilExactTwists)

def hasseWeilFixedTower.«the canonical document object name» :=
  (_root_.hasseWeilFixedTower)

def hasseWeilDivisibleError.«the canonical document object name» :=
  (_root_.hasseWeilDivisibleError)
