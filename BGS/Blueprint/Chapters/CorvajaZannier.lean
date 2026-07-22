import BGS.Algebra.DifferentialWronskian
import BGS.CorvajaZannier.AbsoluteIrreducibilityBaseChange
import BGS.CorvajaZannier.AuxiliaryFamily
import BGS.CorvajaZannier.BivariateGauss
import BGS.CorvajaZannier.CompletionLinearDisjointness
import BGS.CorvajaZannier.FiniteFunctionFieldDegree
import BGS.CorvajaZannier.FiniteExtensionProductFormula
import BGS.CorvajaZannier.DedekindPlaceOrder
import BGS.CorvajaZannier.DedekindLeadingTermCancellation
import BGS.CorvajaZannier.DedekindLocalWronskian
import BGS.CorvajaZannier.DedekindAuxiliaryWronskian
import BGS.CorvajaZannier.DedekindAuxiliaryCaseI
import BGS.CorvajaZannier.DedekindAuxiliaryLocalCases
import BGS.CorvajaZannier.DedekindPerfectResidueCaseI
import BGS.CorvajaZannier.DedekindLocalDerivationExtension
import BGS.CorvajaZannier.DedekindDifferentDivisor
import BGS.CorvajaZannier.FiniteExtensionCanonicalWronskian
import BGS.CorvajaZannier.InfinityPlace
import BGS.CorvajaZannier.InfinityInertiaDegree
import BGS.CorvajaZannier.FiniteExtensionExhaustiveProductFormula
import BGS.CorvajaZannier.FiniteExtensionPrincipalDivisor
import BGS.CorvajaZannier.FiniteExtensionExceptionalSupport
import BGS.CorvajaZannier.FiniteExtensionResidueSurjectivity
import BGS.CorvajaZannier.FiniteExtensionPolynomialHeight
import BGS.CorvajaZannier.FinitePlaceCompletion
import BGS.CorvajaZannier.ElementaryFiniteFieldBound
import BGS.CorvajaZannier.FrobeniusWronskian
import BGS.CorvajaZannier.FunctionFieldProductFormula
import BGS.CorvajaZannier.RatFuncExhaustiveProductFormula
import BGS.CorvajaZannier.LaurentFrobeniusBasis
import BGS.CorvajaZannier.LaurentFrobeniusPowerBasis
import BGS.CorvajaZannier.LocalAuxiliaryWronskian
import BGS.CorvajaZannier.LocalAuxiliaryCaseI
import BGS.CorvajaZannier.LocalWronskian
import BGS.CorvajaZannier.PerfectConstants
import BGS.CorvajaZannier.PlaneCurveFunctionField
import BGS.CorvajaZannier.PlaneCurveBidegreeBridge
import BGS.CorvajaZannier.PlaneCurveDiscriminantBound
import BGS.CorvajaZannier.PlaneCurveInfinityDifferentDegree
import BGS.CorvajaZannier.PlaneCurveInfinityComplement
import BGS.CorvajaZannier.LocalReciprocalDiscriminant
import BGS.CorvajaZannier.PlaneCurveLocalReciprocalDiscriminant
import BGS.CorvajaZannier.PlaneCurveAuxiliaryFinitePlace
import BGS.CorvajaZannier.PlaneCurveAuxiliaryFinitePlaceCases
import BGS.CorvajaZannier.PlaneCurveAuxiliaryFinitePlacePrincipalDivisor
import BGS.CorvajaZannier.PlaneCurveRatFuncModel
import BGS.CorvajaZannier.PlaneCurveCoordinatePowerHeight
import BGS.CorvajaZannier.PlaneCurveSeparability
import BGS.CorvajaZannier.SeparatingCoordinateNotFrobenius
import BGS.CorvajaZannier.PlaneCurveAuxiliaryIndependence
import BGS.CorvajaZannier.PoweredCoordinates
import BGS.CorvajaZannier.PoweredCoordinateRelation
import BGS.CorvajaZannier.PoweredImageCurve
import BGS.CorvajaZannier.PoweredImageFrobeniusRelation
import BGS.CorvajaZannier.TorsionPointNormalization
import BGS.CorvajaZannier.TorsionGcdDivisorBound
import BGS.CorvajaZannier.TorsionExhaustiveGcdDivisorBound
import BGS.CorvajaZannier.PlaneCurveExhaustiveGcdEndpoint
import BGS.CorvajaZannier.TorsionBidegreeCount
import BGS.CorvajaZannier.WronskianChangeParameter
import BGS.CorvajaZannier.NumericalOptimization
import BGS.CorvajaZannier.ParameterizedBound
import BGS.CorvajaZannier.NumericalCorollary
import BGS.CorvajaZannier.GlobalWronskianSummation
import BGS.CorvajaZannier.GlobalWronskianPlaceSum
import BGS.CorvajaZannier.GlobalWronskianWeightedPlaceSum
import BGS.CorvajaZannier.EndpointComposition
import BGS.CorvajaZannier.FiniteExtensionCanonicalGlobalNormalizedAutomatic
import BGS.CorvajaZannier.PlaneCurveCanonicalGcdBound
import BGS.CorvajaZannier.PlaneCurveCanonicalEulerBound
import BGS.CorvajaZannier.PlaneCurvePropositionTwoAssembly
import BGS.CorvajaZannier.PlaneCurvePropositionTwoGeometric
import BGS.CorvajaZannier.PoweredImageGaloisBound
import BGS.CorvajaZannier.PoweredImageBaseChange
import BGS.CorvajaZannier.PoweredImageIndexBound
import BGS.CorvajaZannier.PlaneCurveSupportRank
import BGS.CorvajaZannier.GeneralCorvajaZannier
import BGS.External.GeneralCurveTheorems
import BGS.Markoff.MiddleGame.CorvajaZannierFromGeneral
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

set_option verso.blueprint.foldCodeBlocks true
set_option verso.blueprint.externalCode.sourceLinkTemplate
  "https://github.com/search?q={module}&type=code"

#docs (Manual) corvajaZannierOverview "Result and proof route" :=
:::::::

:::group "corvaja_zannier_result"
Corvaja--Zannier torsion bound
:::

The selected middle-game estimate comes from Corvaja--Zannier,
[\"Greatest Common Divisors of $`u-1,v-1` in Positive Characteristic and
Rational Points on Curves over Finite
Fields\"](https://doi.org/10.4171/JEMS/409), especially Theorem 2,
Proposition 2, Theorem 4, and Corollary 2.  The ordinary-Wronskian argument
reused in Section 5 is from their earlier paper
[\"Some Cases of Vojta's Conjecture on Integral Points over Function
Fields\"](https://arxiv.org/abs/math/0512074).  References below use the
published theorem and page numbering.

The unrestricted source theorem, its geometric-root-of-unity corollary, the
project's prime-to-characteristic finite-field theorem, and the Markoff adapter
are deliberately kept as different boundaries.  The finite-field theorem now
has an in-repository proof; this does not silently strengthen it to the printed
geometric corollary.
:::::::

#docs (Manual) corvajaZannierFunctionField "Function fields and Frobenius independence" :=
:::::::

:::definition "corvaja_zannier_function_field_setup" (parent := "corvaja_zannier_result") (lean := "BGS.CorvajaZannier.PlaneCurveCoordinateRing, BGS.CorvajaZannier.planeCurveCoordinateRing_isDomain, BGS.CorvajaZannier.PlaneCurveFunctionField, BGS.CorvajaZannier.eval₂_planeCurveFunction_eq_zero, BGS.CorvajaZannier.adjoin_planeCurveFunctions_eq_top_of_irreducible, BGS.CorvajaZannier.firstCoordinate_transcendental, BGS.CorvajaZannier.finiteSeparable_over_firstCoordinate_of_irreducible, BGS.CorvajaZannier.finrank_over_firstCoordinate_eq_degreeOf_second_of_irreducible, BGS.CorvajaZannier.finiteSeparable_over_secondCoordinate_of_irreducible, BGS.CorvajaZannier.finrank_over_secondCoordinate_eq_degreeOf_first_of_irreducible, BGS.CorvajaZannier.degreeOf_first_le_of_hasBidegreeAtMost, BGS.CorvajaZannier.degreeOf_second_le_of_hasBidegreeAtMost, BGS.CorvajaZannier.irreducible_of_irreducible_map_algebraicClosure, BGS.CorvajaZannier.finrank_over_firstCoordinate_le_of_hasBidegreeAtMost, BGS.CorvajaZannier.finrank_over_secondCoordinate_le_of_hasBidegreeAtMost") (tags := "source-setup, partial-formalization, affine-function-field, coordinate-separability, proved-public-bidegree-bridge") (effort := "large") (priority := "high")
Let $`\kappa` be a finite field of characteristic $`p`, let $`X` be a
smooth projective absolutely irreducible curve, and let $`L=\kappa(X)`.  For a
nonzero rational function, its degree is the degree of its polar divisor.  For
rational functions $`u,v`, let $`S` contain their zeros and poles and put

$$`\chi=|S|+2g(X)-2.`

The source hypotheses distinguish three facts which must remain explicit in
Lean: $`u,v` are separating, they are multiplicatively independent modulo
constants, and the relevant local valuations range over $`X\setminus S`.

Lean now constructs the affine coordinate quotient by an irreducible
bivariate equation, proves it is a domain, passes to its fraction field, and
proves that the two coordinate functions satisfy the equation and generate
the whole field.  A nonzero partial derivative in either variable makes the
opposite coordinate transcendental; iterated-polynomial irreducibility and
Gauss' lemma then prove finite separability and the exact identities
$`[K(X):K(x)]=\deg_y(f)` and $`[K(X):K(y)]=\deg_x(f)`.  The public
support-wise `HasBidegreeAtMost` hypothesis is now connected to both
coordinate degrees, absolute irreducibility is descended to the base field,
and the two projection degrees are bounded by the supplied bidegrees.  The smooth projective model, its places and
completion maps, polar divisors, and genus remain outside this affine
function-field boundary.
:::

:::lemma_ "corvaja_zannier_frobenius_subfield_degree" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_function_field_setup") (lean := "BGS.CorvajaZannier.ratFunc_frobeniusFieldRange_eq_adjoin_pow_card, BGS.CorvajaZannier.ratFunc_finrank_frobeniusFieldRange_eq_card, BGS.CorvajaZannier.finiteFunctionField_finrank_frobeniusFieldRange_eq_card, BGS.CorvajaZannier.finrank_frobeniusSubfield_eq_char, BGS.CorvajaZannier.algebraMap_mem_frobeniusSubfield") (tags := "source-lemma-1, proved-in-lean, algebraic-function-field") (effort := "large")
For $`q` a power of $`p`, let $`L_q` be the subfield of $`q`-th powers in the
one-dimensional function field $`L`.  Then

$$`[L:L_q]=q.`

This is the inseparable-degree input used to control linear independence over
the Frobenius subfield.  Lean proves the identity for every finite extension of
$`k(X)` with $`q=|k|`, by comparing the Frobenius images in the two field
towers.  It also proves the characteristic-$`p` form directly from a
Frobenius-separating parameter, and proves that every element of a perfect
constant field maps into the Frobenius subfield.  Constructing the required finite
rational-function-field presentation from the geometric setup remains part of
the setup node, rather than an implicit assumption here.
:::

:::lemma_ "corvaja_zannier_frobenius_separating_generation" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_function_field_setup, corvaja_zannier_frobenius_subfield_degree") (lean := "BGS.CorvajaZannier.frobeniusSubfield_isPurelyInseparable, BGS.CorvajaZannier.adjoin_frobeniusSubfield_eq_top, BGS.CorvajaZannier.minpoly_natDegree_over_frobeniusSubfield_eq_char, BGS.CorvajaZannier.firstCoordinate_not_mem_frobeniusSubfield, BGS.CorvajaZannier.secondCoordinate_not_mem_frobeniusSubfield") (tags := "proved-in-lean, frobenius-generation, separating-coordinate") (effort := "large")

If $`z` is separating and $`L/L^p(z)` is separable, Frobenius purity forces
$`L=L^p(z)`.  When $`z\notin L^p`, its minimal polynomial over $`L^p` has
degree exactly $`p`.  For the affine plane-curve function field, Lean derives
$`z\notin L^p` from the corresponding nonzero partial derivative.  This is
the algebraic generation input used by Proposition 1; it does not invoke a
completion or linear disjointness.
:::

:::proposition "corvaja_zannier_auxiliary_functions_linear_independent" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_frobenius_separating_generation") (lean := "BGS.CorvajaZannier.auxiliaryFamily, BGS.CorvajaZannier.auxiliaryRelationPolynomial, BGS.CorvajaZannier.natDegree_resultant_auxiliaryRelation_default_le, BGS.CorvajaZannier.resultant_auxiliaryRelation_default_eq_zero_of_common_zero, BGS.CorvajaZannier.dvd_of_irreducible_of_resultant_eq_zero_via_gauss, BGS.CorvajaZannier.auxiliaryRelation_bidegree_bounds_of_resultant_eq_zero, BGS.CorvajaZannier.auxiliaryFamily_linearIndependent_of_irreducible_bidegree, BGS.CorvajaZannier.isSeparable_over_frobeniusAdjoin_of_isSeparable_over_constantAdjoin, BGS.CorvajaZannier.minpoly_natDegree_over_frobeniusSubfield_eq_char, BGS.CorvajaZannier.firstCoordinate_not_mem_frobeniusSubfield, BGS.CorvajaZannier.secondCoordinate_not_mem_frobeniusSubfield, BGS.CorvajaZannier.irreducible_map_perfectConstantsToFrobeniusSubfield, BGS.CorvajaZannier.planeCurveFrobeniusRelation_natDegree, BGS.CorvajaZannier.transposeBivariate_planeCurveFrobeniusRelation_natDegree, BGS.CorvajaZannier.planeCurve_auxiliaryFamily_linearIndependent_of_absoluteIrreducible_coordinateDegrees, BGS.CorvajaZannier.poweredTorusCurveNotSubtorusTranslate, BGS.CorvajaZannier.adjoin_frobeniusSubfield_pow_eq_top, BGS.CorvajaZannier.frobeniusPower_minpoly_natDegree_eq_char, BGS.CorvajaZannier.exists_derivation_coordinatePowers_ne_zero, BGS.CorvajaZannier.poweredCoordinates_auxiliaryFamily_linearIndependent_of_relation, BGS.CorvajaZannier.poweredCoordinateEliminationRelation_irreducible, BGS.CorvajaZannier.poweredCoordinateExpansionPolynomial_aeval, BGS.CorvajaZannier.poweredCoordinates_auxiliaryFamily_linearIndependent_of_elimination, BGS.CorvajaZannier.poweredCoordinateImageRelation_irreducible, BGS.CorvajaZannier.evalBivariate_poweredCoordinateImageRelation_eq_zero, BGS.CorvajaZannier.poweredCoordinateImageRelation_natDegree_eq_finrank, BGS.CorvajaZannier.poweredCoordinateImageRelation_transpose_natDegree_eq_finrank, BGS.CorvajaZannier.poweredCoordinateImageRelation_bidegree_le, BGS.CorvajaZannier.poweredCoordinateImageRelation_spec, BGS.CorvajaZannier.poweredCoordinateImageRelation_irreducible_map, BGS.CorvajaZannier.poweredCoordinateFrobeniusImageRelation, BGS.CorvajaZannier.poweredCoordinateFrobeniusImageRelation_natDegree, BGS.CorvajaZannier.transposeBivariate_poweredCoordinateFrobeniusImageRelation_natDegree, BGS.CorvajaZannier.evalBivariate_poweredCoordinateFrobeniusImageRelation_eq_zero, BGS.CorvajaZannier.poweredCoordinateFrobeniusImageRelation_irreducible, BGS.CorvajaZannier.poweredCoordinateFrobeniusImage_auxiliaryFamily_linearIndependent") (tags := "source-proposition-1, proved-algebraic-core, proved-plane-frobenius-bridge, proved-coordinate-frobenius-exclusion, proved-absolute-base-change, proved-exact-bidegrees, proved-powered-frobenius-bridge, proved-powered-image-relation, proved-powered-image-absolute-irreducibility, proved-direct-powered-auxiliary-independence") (effort := "large") (priority := "high")
Put $`n=hk+h+k` and $`\rho=(1-u)/(1-v)`.  The auxiliary family consists of
$`u^{i-1}\rho` for $`1\le i\le k` together with the monomials $`u^rv^s` for
$`0\le r\le k` and $`0\le s<h`.  Under the source degree inequality and the
failure of its elementary degree alternative, these $`n` functions are
linearly independent over the Frobenius subfield.

The source proves this by turning a dependence into a polynomial relation,
using a resultant, and applying the separating-parameter degree lemma.  The
Section 5 application is the specialization $`q=p` and $`z=w=1`.

Lean defines the exact indexed family and proves that any dependence gives a
nonzero polynomial $`P_1(U)(1-U)+P_2(U,V)(1-V)` vanishing at $`(u,v)`, with
all three printed degree bounds.  The ordinary Sylvester resultant has the
exact bound $`ah+bk`; a common zero and minimal-polynomial degree $`q` force
that resultant to vanish.  Gauss' lemma then descends divisibility from
$`C(V)[U]` to $`C[V][U]`, and a variable swap yields both inequalities
$`a\leq k` and $`b\leq h`.  Consequently Lean proves the complete algebraic
linear-independence implication under explicit irreducibility, bidegree, and
minimal-polynomial-degree hypotheses.  Instantiating those hypotheses over
$`L^p` for the affine plane-curve function field is also formalized: Lean
promotes coordinate separability from the perfect constant field to
$`L^p(z)`, proves that either separating coordinate is not a $`p`-th power,
deduces that its minimal polynomial has degree $`p`, and applies the algebraic
theorem above.  The no-$`p`-th-root argument is reduced explicitly to the
degree congruence for the polynomial variable in a rational function field;
it is not imported from a completion.  A direct Nullstellensatz specialization
also proves that absolute irreducibility over an algebraic closure remains
irreducible after extending constants to $`L^p`; inverse variables ensure that
both specialized factors stay nonunits.  Injectivity of that coefficient map
also preserves both coordinate degrees, and Lean identifies them with the two
iterated-polynomial `natDegree`s.  Thus the strongest plane wrapper uses the
actual values $`\deg_x f,\deg_y f` and requires only absolute irreducibility,
the two nonzero partials, the size inequality, and failure of the degree
alternative.

For prime-to-$`p` powers $`x^m,y^n`, Lean proves that each powered coordinate
still generates $`L/L^p`, has minimal-polynomial degree exactly $`p`, and is
detected by a common derivation whose exact constants are $`L^p`.  It also
constructs the canonical relation $`U-P_{m,n}(V)` over $`L^p`, proves its
irreducibility and exact degrees, and feeds it into the auxiliary-family
theorem without an unspecified relation.  Lean now also constructs the actual
constant-field image $`E=K(x^m,y^n)`, clears denominators in the minimal
polynomial over $`K(x^m)`, takes its primitive part, and obtains an irreducible
$`K[U,V]` relation vanishing at the powered coordinates.  Its two degrees are
identified exactly with the projection degrees of $`E` and bounded by
$`m\deg_y(f)` and $`n\deg_x(f)`.  Thus the powered-image source-degree
obligation is fully discharged.  Moreover, the coordinate-ring embedding of
that image survives arbitrary scalar extension, so absolute irreducibility of
the original curve proves irreducibility of the powered-image relation over
every extension field.  After extending coefficients to $`L^p` and swapping
the variables, Lean obtains a canonical irreducible Frobenius-field relation,
identifies both of its degrees and its vanishing specialization, and directly
proves linear independence of the exact powered auxiliary family.
:::
:::::::

#docs (Manual) corvajaZannierLocalWronskians "Local Wronskians and the different" :=
:::::::

:::lemma_ "corvaja_zannier_ordinary_wronskian_kernel" (parent := "corvaja_zannier_result") (lean := "BGS.Algebra.derivationWronskian, BGS.Algebra.derivationWronskian_det_ne_zero_of_linearIndependent, BGS.Algebra.derivationWronskian_det_ne_zero_iff_linearIndependent, BGS.CorvajaZannier.exists_derivation_with_exact_frobenius_constants, BGS.CorvajaZannier.exists_derivation_with_exact_constants_and_wronskian_criterion") (tags := "proved-in-lean, algebraic-kernel, exact-frobenius-constants") (effort := "large")
For a derivation $`D:L\to L` whose exact constant field is $`C`, every finite
family linearly independent over $`C` has nonzero ordinary Wronskian; conversely,
a nonzero Wronskian gives linear independence.

This linear-algebra kernel is proved in Lean.  Moreover, whenever an explicit
parameter $`z` makes $`L/L^p(z)` separable, Lean constructs a derivation with
$`Dz=1`, proves that its kernel is exactly $`L^p`, and obtains the Wronskian
criterion for every finite family.  The curve setup must still produce that
separability instance and compare this derivation with each local parameter;
those geometric obligations are not included in this green boundary.
:::

:::lemma_ "corvaja_zannier_ordinary_wronskian_valuation_source" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_ordinary_wronskian_kernel") (lean := "BGS.CorvajaZannier.order_sub_le_orderTop_hasseDeriv, BGS.CorvajaZannier.order_sub_le_orderTop_derivative_iterate, BGS.CorvajaZannier.laurentSeriesWronskian, BGS.CorvajaZannier.laurentSeriesWronskian_det_columnCombination_of_det_eq_one, BGS.CorvajaZannier.orderTop_laurentSeriesWronskian_det_lower_bound_closed, BGS.CorvajaZannier.derivationWronskian_det_changeParameter, BGS.CorvajaZannier.finitePlaceOrder, BGS.CorvajaZannier.exists_constant_finitePlaceOrder_sub_mul_eq_zero_or_lt, BGS.CorvajaZannier.exists_frobeniusSubfield_constant_finitePlaceOrder_sub_mul_eq_zero_or_lt, BGS.CorvajaZannier.valuation_eq_exp_neg_finitePlaceOrder, BGS.CorvajaZannier.finitePlaceCompletionEmbedding, BGS.CorvajaZannier.valued_finitePlaceCompletionEmbedding_eq_exp_neg_order, BGS.CorvajaZannier.finitePrincipalDivisor, BGS.CorvajaZannier.count_relNorm_eq_sum_inertiaDeg_mul_count, BGS.CorvajaZannier.count_spanSingleton_norm_eq_sum_inertiaDeg_mul_count, BGS.CorvajaZannier.ratFuncFiniteOrder_polynomialFinitePlace, BGS.CorvajaZannier.ratFuncFiniteDivisor, BGS.CorvajaZannier.ratFuncExhaustiveFinitePlaceDegreeSum_eq_intDegree, BGS.CorvajaZannier.ratFunc_exhaustiveFinitePlace_plus_infinity_productFormula, BGS.CorvajaZannier.ratFuncInfinityPlace_order_eq, BGS.CorvajaZannier.count_spanSingleton_norm_at_infinity_eq_sum, BGS.CorvajaZannier.finitePrimesAbove_weightedOrder_eq_normOrder, BGS.CorvajaZannier.primesAboveInfinity_weightedOrder_eq_normInfinityOrder, BGS.CorvajaZannier.finiteExtension_exhaustivePrincipalDivisor_productFormula, BGS.CorvajaZannier.finitePlaceOrderTop, BGS.CorvajaZannier.finitePlaceOrderTop_mul, BGS.CorvajaZannier.finitePlaceOrderTop_pow, BGS.CorvajaZannier.finitePlaceOrderTop_derivation_iterate_ge_sub_nat, BGS.CorvajaZannier.finitePlaceOrderTop_derivation_iterate_ge_sub_nat_of_preserves, BGS.CorvajaZannier.finitePlaceOrderTop_indexedDedekindLocalWronskian_det_lower_bound, BGS.CorvajaZannier.finitePlaceOrderTop_indexedDedekindLocalWronskian_det_lower_bound_of_preserves, BGS.CorvajaZannier.finitePlaceOrderTop_dedekindLocalWronskian_det_lower_bound, BGS.CorvajaZannier.finitePlaceOrderTop_dedekindLocalWronskian_det_lower_bound_of_preserves, BGS.CorvajaZannier.indexedDedekindLocalWronskian_det_changeParameter, BGS.CorvajaZannier.finitePlaceOrderTop_indexedDedekindLocalWronskian_det_lower_bound_of_scaled_preserves, BGS.CorvajaZannier.finitePlaceOrderTop_dedekindLocalWronskian_det_lower_bound_of_scaled_preserves, BGS.CorvajaZannier.indexedDedekindLocalWronskian_det_columnCombination_of_det_eq_one, BGS.CorvajaZannier.finitePlaceOrderTop_indexedDedekindLocalWronskian_det_nonnegative_of_integral, BGS.CorvajaZannier.dedekindLocal_derivation_preserves_of_not_dvd_different, BGS.CorvajaZannier.natDegree_discr_le, BGS.CorvajaZannier.planeCurvePolynomialInSecondCoordinate_discr_natDegree_le") (tags := "author-source-provenance, source-local-estimates, proved-finite-place-completions, proved-fractional-norm-count-bridge, proved-rational-function-product-formula, proved-infinity-place, proved-extension-product-formula, proved-direct-dvr-derivative-order, proved-direct-dvr-wronskian, proved-leading-term-cancellation, proved-scaled-derivation-change-of-parameter, proved-unramified-local-derivation-extension, proved-sharp-plane-discriminant-degree-bound, canonical-divisor-frontier") (effort := "large") (priority := "high")
The 2013 proof of Proposition 2 says that the ordinary-Wronskian estimates are
the same as those proving Proposition 2.2 of the earlier paper.  In the
author-supplied 2008 TeX, lines 461--644 give the four local valuation cases,
change of parameter, product formula, canonical-divisor degree, and global
sum; lines 647--656 deduce the gcd form.  That source is characteristic zero,
while the 2013 application replaces its constant field by $`L^p`.  The
positive-characteristic transfer is therefore a proof obligation, not an
identity of ambient hypotheses.

The completion-level estimate is now proved: the $`r`-th ordinary derivative
of a Laurent series lowers its order by at most $`r`, and the determinant of an
$`n\times n` local Wronskian has order at least
$`\sum_i\operatorname{ord}(f_i)-n(n-1)/2`.  This proof includes the determinant
expansion and all possible cancellation via the Laurent-series additive
valuation.  Constant determinant-one column operations are proved to preserve
the local Wronskian, and the full change-of-parameter formula
$`W_D=a^{\binom n2}W_E` is proved by a lower-triangular recurrence that retains
all derivatives of $`a`.  Lean also proves the exhaustive height-one-prime
form of the degree-zero formula on $`K(X)`: every finite place is identified
with its canonical normalized prime-polynomial generator, the principal
divisor is packaged with finite support, and its degree-weighted sum is
cancelled by the infinity order.  For finite extensions of Dedekind domains,
Lean now proves that
the exponent of an integral ideal's relative norm equals the
residue-degree-weighted sum of its exponents at all primes above the base
prime, including the principal-integral specialization to `Algebra.intNorm`.
Lean then clears denominators and proves the same identity for every element
of the fraction field using the actual field norm.  The infinity valuation
ring is now proved to be a DVR with uniformizer $`X^{-1}`; its unique
height-one order is identified with minus rational-function degree.  Passing
to the integral closure at infinity gives the weighted norm/count identity
over every prime above that chart.  Combining it with all finite base primes
proves the exhaustive degree-zero principal-divisor formula for every element
of a finite separable extension of $`K(X)`.
For every height-one prime of a Dedekind domain, Lean now also defines the
principal-ideal order, constructs the canonical injective embedding into its
actual adic completion, proves that the completed valuation records precisely
that order, and packages all finite orders as a finitely supported divisor.
The alternative direct route is now available as well: on an arbitrary DVR,
Lean defines the principal-ideal order with values in $`\mathbb Z\cup\{\infty\}`,
proves exact multiplicativity and the nonarchimedean addition bound, and proves
that every iterate of any derivation preserving the valuation ring lowers
order by at most its iterate number; normalization of the uniformizer
derivative is no longer required.  Lean also forms the ordinary Wronskian
directly in the fraction field, proves
the determinant lower bound with all cancellation in
$`\mathbb Z\cup\{\infty\}`, and transports it across determinant-one column
operations.  It also identifies this matrix with the global ordinary
derivation Wronskian and proves indexed and ordinary scaled-derivation
formulas: if $`cD` preserves the DVR, the exact extra local term is
$`\binom n2\nu(c)`.  Residue-field surjectivity now also supplies the exact
constant leading-term cancellation needed for repeated equal pole orders;
over perfect constants the coefficient is promoted into $`L^p`, hence is
killed by the separating derivation.  Lean additionally proves the sharp bivariate discriminant estimate
$`\deg_x\operatorname{disc}_y(F)\leq (2\deg_y(F)-2)a` whenever every
$`y`-coefficient has $`x`-degree at most $`a`; the proof exploits the constant
bottom row of the modified Sylvester matrix and therefore avoids the two-row
slack in the naive determinant estimate.  Away from the different ideal, Lean
now also lifts the base derivation uniquely through the formally etale map of
Dedekind local rings and proves that the ambient derivation preserves the
chosen extension DVR.  The next node supplies the abstract different-divisor
bound at ramified primes.  Finite plane-curve charts now provide the required
reciprocal nonmonic presentation under the exact degree-versus-field-cardinality
hypothesis.  Its assembly with the global separating derivation at every
extension place, the infinity chart, and the resulting global correction
bound is carried out in the canonical-global-Wronskian node below.
:::

:::lemma_ "corvaja_zannier_different_divisor_control" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_ordinary_wronskian_valuation_source") (lean := "BGS.CorvajaZannier.differentIdeal_dvd_minpolyDerivativeSpan, BGS.CorvajaZannier.differentIdeal_multiplicity_le_minpolyDerivativeSpan, BGS.CorvajaZannier.differentMultiplicityWeightedSum_le_minpolyDerivative, BGS.CorvajaZannier.finite_differentPrimes_of_primitiveElement, BGS.CorvajaZannier.differentIdeal_multiplicity_le_finitePlaceOrder_minpolyDerivative, BGS.CorvajaZannier.discr_powerBasisOfPrimitiveElement_eq_norm_minpolyDerivative, BGS.CorvajaZannier.idealMultiplicityWeightedDegree_eq_finiteExtensionFiniteDirectDegreeSum, BGS.CorvajaZannier.finiteDifferentDegree_le_minpolyDerivativeDegree, BGS.CorvajaZannier.finiteExtensionMinpolyDerivativeDegree_eq_powerBasisDiscriminantDegree, BGS.CorvajaZannier.finiteDifferentDegree_le_powerBasisDiscriminantDegree, BGS.CorvajaZannier.finitePlaceOrder_globalWronskian_changeParameter, BGS.CorvajaZannier.finiteExtensionLocalWronskianDivisor_degree, BGS.CorvajaZannier.isIntegral_inv_sub_of_eval_eq_unit, BGS.CorvajaZannier.adjoin_inv_sub_eq_top_of_adjoin_eq_top, BGS.CorvajaZannier.minpoly_inv_sub_eq_map_unitNormalizedReciprocalTranslate, BGS.CorvajaZannier.exists_reciprocal_integral_primitive_and_different_bound, BGS.CorvajaZannier.finitePlaceOrderTop_map_unitNormalizedReciprocalTranslate_discr, BGS.CorvajaZannier.finitePlaceOrderTop_minpoly_inv_sub_discr, BGS.CorvajaZannier.exists_planeCurve_localized_center_eval_isUnit_of_degreeOf_second_lt_fintypeCard, BGS.CorvajaZannier.planeCurve_local_reciprocal_certificate_of_degreeOf_second_lt_fintypeCard, BGS.CorvajaZannier.planeCurve_minpoly_reciprocal_local_normalization_of_degreeOf_second_lt_fintypeCard") (tags := "proved-in-lean, different-divisor, ramified-place-control, proved-weighted-different-degree-bound, proved-global-local-wronskian-divisor-degree, proved-local-nonmonic-reciprocal-bridge, proved-finite-field-plane-localization, global-correction-frontier") (effort := "large") (priority := "high")

For a finite separable extension of Dedekind fraction fields generated by an
integral primitive element, Lean now bounds the multiplicity of every prime
in the different by the corresponding order of the minimal-polynomial
derivative.  It proves the arbitrary weighted sum inequality, finiteness of
the ramified support, and the equality between the derivative norm and the
power-basis discriminant up to the standard sign.  This makes the ramified
correction an explicit principal-divisor estimate.  Lean now also proves the
finite degree version: the weighted degree of the different is bounded first
by the minimal-polynomial derivative and then exactly by the rational-function
degree of the associated power-basis discriminant.  A single global Wronskian
and the local change-of-parameter factors define a finitely supported local
Wronskian divisor; the product formula proves that its weighted degree is the
triangular coefficient times the supplied canonical correction degree.

Lean now also proves the local nonmonic bridge.  If a localized value $`F(c)` is a unit, the reciprocal
parameter $`(v-c)^{-1}` is integral and primitive; its unit-normalized
reciprocal polynomial is its minimal polynomial under the full-degree
hypothesis, and its discriminant has exactly the same finite-place order as
the original relation's discriminant.  For an irreducible plane equation Lean
now chooses such a center at every finite first-coordinate prime whenever
$`\deg_Y f<|K|`, and proves the complete reciprocal minimal-polynomial
normalization in the plane-curve function field.  The finite presentations
are assembled with all places at infinity in the canonical-global-Wronskian
node below.
:::

:::lemma_ "corvaja_zannier_infinity_different_complement" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_different_divisor_control") (lean := "BGS.CorvajaZannier.exists_local_center_eval_isUnit_of_isPrimitive_natDegree_lt_card, BGS.CorvajaZannier.discr_powerBasis_eq_minpoly_discr, BGS.CorvajaZannier.infinityDifferentDegree, BGS.CorvajaZannier.ratFuncInfinityIntegralClosureFractionRingEquiv_order_eq, BGS.CorvajaZannier.infinityDifferentDegree_le_discriminantOrder_of_primitiveElement, BGS.CorvajaZannier.infinityNormalizedCoefficient_isUnit_of_natDegree_eq, BGS.CorvajaZannier.infinityNormalizedIntegralPolynomial_isPrimitive, BGS.CorvajaZannier.planeCurveInfinityDifferentDegree_le_bidegreeComplement") (tags := "proved-in-lean, infinity-chart, weighted-different, sharp-discriminant-complement, total-different-frontier") (priority := "high")
On the infinity chart, Lean constructs the coefficientwise integral equation
$`X^{-a}F(X,Y)`, proves it primitive when a coefficient has exact
$`X`-degree $`a`, and chooses a center where its value is a unit.  The inverse
translate of a primitive root is therefore integral and primitive.  Its
minimal-polynomial derivative bounds the residue-degree-weighted different
above infinity, while the power-basis discriminant and reciprocal
normalization identify the resulting norm order with the normalized
equation's discriminant order.  Consequently the infinity contribution is
bounded sharply by
$`a(2b-2)-\deg_X(\operatorname{disc}_Y F)`.

This is the complementary term to the finite discriminant degree, not a
second independent copy of the full bidegree bound.  The later canonical
global theorem puts the finite and infinity different divisors into one
exhaustive divisor and identifies the local derivation scalars with the global
Wronskian correction.
:::

:::lemma_ "corvaja_zannier_different_log_canonical_arithmetic" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_infinity_different_complement") (lean := "BGS.CorvajaZannier.canonicalDegree_add_boundaryCard_le_twice_bidegree_of_different_bound") (tags := "proved-in-lean, different-budget-arithmetic, log-canonical-assembly, conditional-boundary") (priority := "high")
Lean proves the exact final arithmetic needed by the divisor route.  If the
canonical correction is at most the total different degree minus twice the
degree $`b` of the projection, the total different is at most
$`(2b-2)a`, and the weighted toric boundary is at most $`2(a+b)`, then the
log-canonical contribution is at most $`2ab`.  The plane canonical-Euler
theorem below supplies those total-different and canonical-correction
inequalities for the normalization used by the final path.
:::
:::::::

#docs (Manual) corvajaZannierGlobalWronskian "Global Wronskian and Proposition 2" :=
:::::::

:::lemma_ "corvaja_zannier_local_wronskian_valuation_estimates" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_auxiliary_functions_linear_independent, corvaja_zannier_ordinary_wronskian_kernel, corvaja_zannier_ordinary_wronskian_valuation_source") (lean := "BGS.CorvajaZannier.orderTop_derivative_iterate_nonnegative_of_order_nonnegative, BGS.CorvajaZannier.exists_det_one_columnMatrix_negativeOrdersPairwiseDistinct, BGS.CorvajaZannier.caseIColumnMatrix_det, BGS.CorvajaZannier.exists_auxiliaryFamily_caseI_q_wronskian_bound, BGS.CorvajaZannier.orderTop_auxiliaryFamily_caseII_nonnegative, BGS.CorvajaZannier.caseIIIColumnMatrix_det, BGS.CorvajaZannier.indexedColumnCombination_caseIIIColumnMatrix, BGS.CorvajaZannier.orderTop_auxiliaryFamily_caseIII_source_lower_bound, BGS.CorvajaZannier.orderTop_auxiliaryFamily_caseIV_source_lower_bound, BGS.CorvajaZannier.exists_det_one_dedekindColumnMatrix_negativeOrdersPairwiseDistinct, BGS.CorvajaZannier.exists_dedekindCaseI_columnMatrix_and_q_wronskian_bound, BGS.CorvajaZannier.exists_dedekindLocalAuxiliaryFamily_caseI_q_wronskian_bound, BGS.CorvajaZannier.exists_dedekindAuxiliaryFamily_caseI_q_wronskian_bound, BGS.CorvajaZannier.exists_frobeniusSubfield_regular_unit_sub_mul_mem_of_perfect_residue, BGS.CorvajaZannier.exists_det_one_frobeniusSubfield_dedekindColumnMatrix_negativeOrdersPairwiseDistinct_of_perfect_residue, BGS.CorvajaZannier.exists_frobeniusSubfield_dedekindAuxiliaryFamily_caseI_q_wronskian_bound_of_perfect_residue, BGS.CorvajaZannier.indexedDedekindLocalColumnCombination_caseIIIColumnMatrix, BGS.CorvajaZannier.finitePlaceOrderTop_auxiliaryFamily_caseII_nonnegative_of_integral, BGS.CorvajaZannier.finitePlaceOrderTop_auxiliaryFamily_caseIII_source_lower_bound, BGS.CorvajaZannier.finitePlaceOrderTop_auxiliaryFamily_caseIV_source_lower_bound, BGS.CorvajaZannier.finitePlaceOrderTop_auxiliaryFamily_caseIII_source_lower_bound_of_preserves, BGS.CorvajaZannier.finitePlaceOrderTop_auxiliaryFamily_caseIV_source_lower_bound_of_preserves") (tags := "source-local-estimates, proved-cases-i-ii-iii-iv, proved-direct-dedekind-cases-i-ii-iii-iv, proved-perfect-residue-case-i, proved-uniformizer-free-cases-iii-iv, global-divisor-frontier") (effort := "large") (priority := "high")
At every place, estimate the local Wronskian after separating the four cases
according to membership in $`S` and the signs of the valuations of $`\rho` and
$`v`.  The change-of-parameter formula, the product formula, and the canonical
divisor degree convert the local inequalities into a global gcd estimate.

For Proposition 2 the ordinary derivative orders are exactly
$`0,1,\ldots,n-1`.  The source imports the detailed estimates from the proof of
Theorem 3; formalization must expose the local-parameter transformation and
every divisor sum rather than treating that reference as a black box.

There is also a printed typo in equation (12): its last term is
$`-k\deg(v)`, whereas equation (11) and
$`-\sum_{\nu\in S}\nu(\rho)\le\deg(u)+\deg(v)` give
$`-k\deg(u)`.  The semantic reconstruction preserves the printed formula and
marks the correction in a source comment; the formal proof must use the
derived $`-k\deg(u)` term.

Equation (13) has a second typographical error: the PDF applies a unary
$`\min` to $`\nu(1-v)-\nu(1-u)`.  Its defining sum requires the bare
difference, as is also clear from the next displayed equation.  This correction
must be made explicitly in the local-to-global proof.

Lean now proves the source estimates in all four local cases.  In case (i),
repeated leading-term cancellation is organized as a terminating descent on
total pole depth.  The resulting product of transvections has determinant one,
is block-extended by the identity on the grid columns, and preserves the full
Sum-indexed auxiliary-family Wronskian.  Pairwise-distinct negative column
orders and derivative orders supply the two triangular-number gains, yielding
the source bound $`q\nu(\rho)`.  In case (ii), order-zero hypotheses for
$`u,v` and regularity of $`\rho` imply every column is regular, after which
ordinary differentiation preserves Laurent integrality.  In case (iii), an
explicit determinant-one block matrix performs
the printed geometric-series column replacement
$`u^j\rho\mapsto u^jv^h\rho`, and Lean derives the displayed triangular
$`u` term, $`hk\nu(v)`, $`k\nu(\rho)`, and the exact grid-column sum.  Case
(iv) is derived directly with the corresponding triangular and grid terms.
All four estimates are now proved again directly in an arbitrary Dedekind DVR
fraction field for a derivation that preserves the DVR.  The Dedekind case
(i) performs the same terminating pole-depth descent using residue-field
coefficient lifting, produces a determinant-one block matrix, preserves the
global ordinary Wronskian, and proves the sharp $`q\nu(\rho)` bound.  Thus the
local estimates no longer depend on a Laurent-series identification of the
completion.  The coefficient-lifting argument is also proved when the residue
field is merely perfect: Frobenius roots of residue classes are lifted to
$`L^p`, so the column operations remain over the exact constant field of the
ordinary derivation.  This is the form needed over finite constants.

Cases (iii) and (iv) additionally have uniformizer-free wrappers: the DVR
uniformizer is chosen internally, so an actual extension-place application
only has to supply a derivation preserving its local ring.  These wrappers no
longer demand an algebra map from $`L^p` into that DVR.

The comparison with the global derivation at ramified places and the
canonical-divisor identity
$`\sum_\nu\nu(dt/dt_\nu)=2g-2` are supplied by the normalized canonical
summation below; they are not assumptions of the endpoint.
:::

:::lemma_ "corvaja_zannier_actual_finite_place_auxiliary_bounds" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_different_divisor_control, corvaja_zannier_local_wronskian_valuation_estimates") (lean := "BGS.CorvajaZannier.dedekindLocal_ambientDerivation_preserves_of_not_dvd_different, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseIII_source_lower_bound_of_scaled_preserves, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseIV_source_lower_bound_of_scaled_preserves, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseIII_source_lower_bound_of_restrictScalars_preserves, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseIV_source_lower_bound_of_restrictScalars_preserves, BGS.CorvajaZannier.finiteExtensionFinitePlace_exists_local_lift_of_orderTop_nonnegative, BGS.CorvajaZannier.ratFuncFinitePlace_residueField_finite, BGS.CorvajaZannier.finiteExtensionFinitePlace_residueField_finite, BGS.CorvajaZannier.finiteExtensionFinitePlaceLocal_residueField_perfect, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseII_nonnegative_of_scaled_preserves, BGS.CorvajaZannier.finiteExtensionFinitePlace_auxiliaryFamily_caseI_q_wronskian_bound_of_scaled_preserves, BGS.CorvajaZannier.planeCurve_minpoly_reciprocal_local_normalization_at_finiteExtensionPlace, BGS.CorvajaZannier.localizationAtPrime_valuation_eq, BGS.CorvajaZannier.localizationAtPrime_finitePlaceOrder_eq, BGS.CorvajaZannier.finiteExtensionFinitePlaceLocalOrder_eq_principalDivisor, BGS.CorvajaZannier.finiteExtensionFinitePlaceLocalOrderTop_eq_principalDivisor") (tags := "proved-in-lean, actual-finite-places, four-local-cases, finite-perfect-residue-fields, scaled-derivation-correction, honest-constant-restriction, normalized-local-global-order-bridge, partial-place-instantiation") (priority := "high")
Lean now instantiates all four cases at an actual height-one prime of
the finite integral closure of $`K[X]` in $`L`.  The local DVR and its
embedding into $`L` are constructed canonically.  If a scalar multiple
$`cD` of the global derivation preserves that DVR, the bound is transported
back to the original $`D`-Wronskian with the exact correction
$`\binom n2\operatorname{ord}_q(c)`.  Restricting a derivation from the
Frobenius constant field to $`K` does not change its Wronskian, so no false
algebra map from $`L^p` to a nontrivial DVR is introduced.  The reciprocal
finite-plane normalization is also specialized to the prime below the actual
place.  For case (ii), nonnegative order is converted to an actual element of
the localized DVR.  For case (i), finite residue extensions of the finite
constant field are proved finite and hence perfect, so the exact
$`L^p`-coefficient cancellation theorem applies.  Local orders are identified
with the exhaustive principal-divisor coefficients.  The infinity package
and the global canonical correction are supplied by the next node.
:::

:::lemma_ "corvaja_zannier_canonical_global_wronskian" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_actual_finite_place_auxiliary_bounds, corvaja_zannier_different_log_canonical_arithmetic, corvaja_zannier_local_wronskian_valuation_estimates") (lean := "BGS.CorvajaZannier.finiteExtensionGcdBound_of_normalizedCanonicalPlacewiseBounds, BGS.CorvajaZannier.planeCurve_canonicalDifferent_add_propositionTwoExceptional_weightedDegree_le, BGS.CorvajaZannier.finiteExtensionGcdBound_planeCurvePowers_of_auxiliaryFamily_linearIndependent, BGS.CorvajaZannier.finiteExtensionGcdBound_planeCurvePowers_swapped_of_auxiliaryFamily_linearIndependent") (tags := "proved-in-lean, canonical-divisor, exhaustive-finite-and-infinity-places, normalized-derivation, global-wronskian-summation") (effort := "large") (priority := "high")
Lean now closes the finite-plus-infinity local-to-global step.  At finite
places it uses the reciprocal integral presentation and scales the global
derivation by the local different.  Above infinity it uses the reciprocal
rational-function parameter and proves directly that the normalized
derivation preserves the infinity valuation ring.  The exact change-of-
parameter exponent transfers every local estimate back to one global
Wronskian, and the exhaustive principal-divisor formula cancels that
Wronskian over all finite and infinite places.

For a plane equation the finite and infinity different bounds are
complementary.  Together with the weighted zero-and-pole boundary they give
the sharp log-canonical budget
$`2\deg_x(f)\deg_y(f)`.  The resulting two plane-coordinate theorems give the
complete gcd estimate both for $`(u,v)=(x^m,y^n)` and for the exchanged pair,
assuming only the corresponding auxiliary-family linear independence.
:::

:::lemma_ "corvaja_zannier_powered_image_index" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_function_field_setup") (lean := "BGS.CorvajaZannier.planeCurveSupportHasRankTwo_of_absoluteIrreducible_notSubtorusTranslate, BGS.CorvajaZannier.planeCurveSupportHasRankTwo_map_of_injective, BGS.CorvajaZannier.natCard_torusCharacterKernel_le_det, BGS.CorvajaZannier.finrank_poweredCoordinateImageField_le_twice_bidegree_isAlgClosed, BGS.CorvajaZannier.finrank_poweredImageOverFirst_le_twice_bidegree_isAlgClosed, BGS.CorvajaZannier.finrank_poweredCoordinateImageField_eq_baseChange, BGS.CorvajaZannier.finrank_poweredImageOverFirst_le_twice_bidegree, BGS.CorvajaZannier.poweredImageIndexBound_of_isCorvajaZannierPlaneCurve") (tags := "proved-in-lean, powered-image, source-to-image-index, torus-character-stabilizer, sharp-bidegree-bound, base-change-descent") (effort := "large") (priority := "high")
The source notes that Proposition 2 acquires the factor
$`[K(X):K(u,v)]` when $`u,v` do not generate the full function field.  For
the powered pair Lean identifies this factor with the finite extension
$`K(x,y)/K(x^m,y^n)`.  Absolute irreducibility together with the semantic
non-subtorus hypothesis forces the exponent support of $`f` to have rank two.
Every automorphism of the powered extension then scales $`x` and $`y` by a
pair in the resulting rank-two character kernel.  This assignment is
injective, and the determinant bound on that kernel gives

$$`[K(x,y):K(x^m,y^n)]\le
2\deg_x(f)\deg_y(f).`

The algebraically closed presentation bound and its rank-two support input are
proved here without replacing the non-subtorus hypothesis by a syntactic
surrogate.  Lean also proves that the relevant powered-image degree is
unchanged by extension to the algebraic closure, so the same sharp index bound
descends to the original finite constant field.
:::

:::lemma_ "corvaja_zannier_plane_curve_proposition_two_orientations" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_canonical_global_wronskian, corvaja_zannier_powered_image_index, corvaja_zannier_auxiliary_functions_linear_independent") (lean := "BGS.CorvajaZannier.planeCurvePropositionTwo_natural_of_auxiliaryBounds, BGS.CorvajaZannier.planeCurvePropositionTwo_swapped_of_auxiliaryBounds, BGS.CorvajaZannier.planeCurvePropositionTwo_natural_of_poweredImageIndexBound, BGS.CorvajaZannier.planeCurvePropositionTwo_swapped_of_poweredImageIndexBound, BGS.CorvajaZannier.planeCurvePropositionTwo_of_poweredImageIndexBound") (tags := "proved-in-lean, proposition-two-specialization, natural-orientation, swapped-orientation, minimum-maximum-degree-form") (effort := "large") (priority := "high")
For $`(u,v)=(x^m,y^n)`, Lean combines the exact tower-degree factorization,
the powered-image relation, auxiliary-family independence, the canonical
global Wronskian estimate, and the elementary gcd-height bound.  It proves the
same statement after exchanging the coordinates.  Splitting according to
$`n\deg_x(f)\le m\deg_y(f)` chooses the orientation whose first Proposition 2
degree is the smaller powered projection degree.  The two branches therefore
assemble to the minimum/maximum degree form consumed by the numerical proof,
with the common image index bounded by the powered-image theorem above.
:::

:::proposition "corvaja_zannier_proposition_two" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_plane_curve_proposition_two_orientations") (lean := "BGS.CorvajaZannier.globalWronskianInequality_of_placewiseBounds, BGS.CorvajaZannier.globalWronskianInequality_of_weightedPlacewiseBounds, BGS.CorvajaZannier.finiteExtensionGcdBound_of_normalizedCanonicalPlacewiseBounds, BGS.CorvajaZannier.planeCurvePropositionTwo_of_poweredImageIndexBound") (tags := "source-proposition-2, proved-local-to-global-summation, proved-plane-powered-specialization, exact-high-characteristic-input") (effort := "large") (priority := "high")
Assume $`L=\kappa(u,v)`, put $`a=\deg(v)` and $`b=\deg(u)`, and choose
$`h,k\ge0` with $`ah+bk<p`.  With $`n=hk+h+k`, either

$$`a\le k\quad\hbox{and}\quad b\le h,`

or

$$`
\sum_{\nu\in X\setminus S}\min\{\nu(u-1),\nu(v-1)\}
\le \frac{h+2k}{n}a+\frac{k}{n}b+\frac{n-1}{2}\chi.
`

Lean proves the exact summation of cases (i)--(iv) from explicit
finite-support place orders.  It partitions the support, cancels the principal
divisors of $`u` and every grid monomial, inserts the positive divisor of
$`v`, the outside height of $`\rho`, and a supplied upper bound for the
log-canonical degree.  The resulting integer inequality is converted to the
displayed real gcd bound and then to the numerical Proposition 2 interface.
No hypothesis of this summation theorem is Proposition 2's conclusion.

Lean now packages every finite prime and every prime above infinity of a
finite separable extension of $`K(X)` into one finite-support principal
divisor.  It proves the exhaustive weighted degree-zero formula, equality of
positive degree and height, the outside-$`S` height identity, and a specialized
version of the global summation theorem in which those divisor hypotheses are
discharged automatically.  The four-case finite summation is now proved with
arbitrary natural place weights, by replicating each place according to its
weight.  Taking the residue degree as the weight gives the specialized global
theorem over the original finite constant field, without base change.  Over
algebraically closed constants, the residue
fields at the finite chart and at every place above infinity are all proved to
have degree one; consequently the ordinary unweighted product formula and the
specialized global summation theorem have no residual inertia hypothesis.
The constant maps onto those same residue fields are now also proved
surjective, discharging the coefficient-lifting hypothesis of the direct
Dedekind case-(i) argument in that model.

For arbitrary perfect constants Lean also constructs $`S` as the union of
the zero-and-pole supports of $`u` and $`v`.  It proves the weighted boundary
bound $`\deg S\le 2(H(u)+H(v))`, the vanishing of the $`u`, $`v`, and grid
orders outside $`S`, the positive-$`v` support inclusion, and both orientations
of the required $`\rho=(1-u)/(1-v)` weighted support inequality.  Thus the
exceptional-support and outside-height hypotheses of the weighted global
summation theorem are no longer open assumptions.

For an irreducible plane curve with the corresponding nonzero partial
derivative, Lean specializes the standard rational-function variable $`X` to
either coordinate function.  Both resulting extensions of $`K(X)` are finite
and separable; their finranks are exactly the degrees of the curve equation in
the opposite coordinate.  The exhaustive divisor package also proves the
general polynomial-height formula in such an extension and specializes it to
$`x^m-1` and $`y^n-1`, giving exactly $`m\deg_y(f)` and
$`n\deg_x(f)`.

The full source proposition is formulated for arbitrary smooth function
fields.  The Lean theorem attached here proves the exact powered-plane-curve
specialization needed for Corollary 2: its ramified local comparison,
finite-plus-infinity divisor sum, canonical bound, and both coordinate
orientations are all discharged.  The project endpoint does not assume the
displayed alternatives.
:::
:::::::

#docs (Manual) corvajaZannierNumericalOptimization "Numerical optimization" :=
:::::::

:::definition "corvaja_zannier_proposition_two_numerical_interface" (parent := "corvaja_zannier_result") (lean := "BGS.CorvajaZannier.PropositionTwoParametersAreAdmissible, BGS.CorvajaZannier.PropositionTwoNumericalAlternatives") (tags := "explicit-lean-interface, not-a-proof")

Lean records Proposition 2's displayed admissibility condition and alternatives
as ordinary proposition-valued interfaces.  The two-orientation theorem above
constructs these alternatives for the powered plane-coordinate functions from
the compiled image-index and canonical-Wronskian path.  This definition node
records the numerical proposition type consumed downstream; it is not an
additional hypothesis in the final theorem.
:::

:::theorem "corvaja_zannier_theorem_four_numerical_implication" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_proposition_two_numerical_interface") (lean := "BGS.CorvajaZannier.theoremFour_parameterizedBound_of_propositionTwo") (tags := "source-theorem-4, proved-in-lean, proved-numerical-from-proposition-2") (effort := "large") (priority := "high")
For separating, multiplicatively independent $`u,v` and $`t>0`, the source
deduces from Proposition 2 that

$$`
(\deg u\,\deg v)^2
<\frac{(p+\deg u+\deg v)^3\chi}{8t^3}
`

implies

$$`
G\le
\left(\frac4t+\frac{t^2}{2}\right)
(\deg u\,\deg v\,\chi)^{1/3}.
`

Lean proves the entire floor-parameter calculation from the exact numerical
alternatives of Proposition 2, including the small-$`k` branch, parameter
admissibility, the degree alternative, and the gcd alternative.  The printed
statement says independence modulo $`\kappa`; the surrounding definitions and
proof require independence modulo $`\kappa^*`.
:::

:::lemma_ "corvaja_zannier_theorem_two_parameter_correction" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_theorem_four_numerical_implication") (lean := "BGS.CorvajaZannier.optimizationRatio, BGS.CorvajaZannier.theoremTwo_bound_of_theoremFour_bound") (tags := "source-correction, published-proof-invalid-as-written, proved-in-lean, numerical-optimization") (effort := "medium") (priority := "high")
Put

$$`Q=\frac{p^3\chi}{(\deg u\,\deg v)^2}.`

The printed final deduction is not valid as written: its split at $`Q=4` and
its stated choices of $`t` do not imply Theorem 4's hypothesis
$`8t^3<Q` (with the harmless strictness supplied by
$`p+\deg u+\deg v>p`).

The corrected split preserves the published theorem.  If $`Q\ge32`, take
$`t=\sqrt[3]{4}`; then Theorem 4 gives the first term
$`3\sqrt[3]{2}(\deg u\,\deg v\,\chi)^{1/3}`.  If $`Q<32`, take
$`t=Q^{1/3}/2`.  Since $`t^3<4`,

$$`\frac4t+\frac{t^2}{2}\le\frac6t,`

which becomes $`12\deg u\,\deg v/p`.  Lean proves this corrected
real-arithmetic deduction from the exact Theorem 4 estimate as an ordinary
hypothesis.  The powered-plane-curve Proposition 2 theorem above now supplies
that hypothesis along the project endpoint; the corrected parameter
calculation itself remains independently closed and axiom-audited.
:::

:::theorem "corvaja_zannier_finite_field_theorem_two_numerical_implication" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_proposition_two_numerical_interface, corvaja_zannier_theorem_four_numerical_implication, corvaja_zannier_theorem_two_parameter_correction") (lean := "BGS.CorvajaZannier.theoremTwo_maxBound_of_propositionTwo") (tags := "source-theorem-2, proved-in-lean, corrected-proof-path") (effort := "large") (priority := "high")
For the finite-field instance of Theorem 2, let $`u,v` be nonconstant,
multiplicatively independent modulo constants, with nonzero differentials.
The source bound is

$$`
\sum_{\nu\in X\setminus S}\min\{\nu(1-u),\nu(1-v)\}
\le
\max\left\{
3\bigl(2\deg u\,\deg v\,\chi\bigr)^{1/3},
\frac{12\deg u\,\deg v}{p}
\right\}.
`

Lean proves exactly this maximum bound from the ordinary numerical alternatives
of Proposition 2, composing the checked floor calculation with the corrected
$`Q=32` split.  The proved two-orientation theorem constructs those alternatives
from the plane-curve hypotheses used by the endpoint.
:::
:::::::

#docs (Manual) corvajaZannierFiniteFieldSpecialization "Finite-field specialization and the Markoff adapter" :=
:::::::

:::lemma_ "corvaja_zannier_torsion_normalization_injection" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_function_field_setup") (lean := "BGS.CorvajaZannier.poweredTorusCurveNotSubtorusTranslate, BGS.CorvajaZannier.torsionPointMaximalIdeal_injective, BGS.CorvajaZannier.torsionPointNormalizationBranch_injective, BGS.CorvajaZannier.first_torsionFunction_mem_normalizationBranch, BGS.CorvajaZannier.second_torsionFunction_mem_normalizationBranch, BGS.CorvajaZannier.liftedNormalizationBranch_torsion_orders_positive, BGS.CorvajaZannier.torsionPointFinitePlace_injective, BGS.CorvajaZannier.torsionPoint_card_le_torsionGcdMultiplicity_sum") (tags := "proved-in-lean, torsion-normalization-injection, singular-affine-points, finite-gcd-divisor-count") (effort := "large") (priority := "high")
Every torus torsion point is sent injectively to its affine maximal ideal and,
by lying over, to a chosen height-one branch of the literal normalization.
Both powered coordinate functions minus one lie in that branch and have
positive local order.  This includes singular affine points and does not
identify distinct points.  The result is the geometric lower-bound bridge to
the finite gcd divisor; it is separated from the corollary target below so
the dependency graph does not point backward from a proof ingredient to its
intended conclusion.
:::

:::lemma_ "corvaja_zannier_exhaustive_torsion_gcd_bridge" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_torsion_normalization_injection, corvaja_zannier_proposition_two") (lean := "BGS.CorvajaZannier.finiteExtensionGcdSupport, BGS.CorvajaZannier.finiteExtensionGcdMultiplicity, BGS.CorvajaZannier.finiteExtensionGcdWeightedDegree, BGS.CorvajaZannier.exists_torsionPoint_exhaustiveFinitePlace_orders_positive, BGS.CorvajaZannier.torsionPointExhaustiveFinitePlace, BGS.CorvajaZannier.torsionPointExhaustiveFinitePlace_spec, BGS.CorvajaZannier.torsionPointExhaustiveFinitePlace_injective, BGS.CorvajaZannier.planeCurveExhaustiveTorsionGcdWeightedDegree, BGS.CorvajaZannier.torsionPoint_card_le_planeCurveExhaustiveTorsionGcdWeightedDegree, BGS.CorvajaZannier.planeCurvePropositionTwoCertificate_of_exhaustiveGcdWeightedDegree_and_bidegree") (tags := "proved-in-lean, exhaustive-places, weighted-gcd-divisor, torsion-injection, proposition-two-certificate") (priority := "high")

Lean now carries the torsion-point lower bound in the same exhaustive
finite-place model used by the product formula.  Each torsion point determines
a finite extension place at which both powered coordinate functions minus one
have positive order; the choice is injective, including at singular affine
points.  Summing the minimum of those two orders with residue degree and base
place degree therefore bounds the torsion cardinality by the exhaustive
weighted gcd degree.  A dedicated endpoint theorem transfers Proposition 2
for exactly this weighted degree to the public plane-curve certificate, while
retaining the independent sharp bidegree fiber bound.
:::

:::lemma_ "corvaja_zannier_elementary_range_reduction" (parent := "corvaja_zannier_result") (lean := "BGS.External.torusCurveTorsionIntersection_card_le_orders, BGS.External.torusCurveTorsionIntersection_le_corvajaZannierBound_of_smallChar, BGS.External.generalCorvajaZannierPlaneCurveTheorem_iff_aboveElementaryRange") (tags := "proved-in-lean, elementary-finite-field-range, exact-frontier-reduction")
Lean injects the torsion intersection into
$`\mu_{m_1}(K)\times\mu_{m_2}(K)`, proving the elementary bound $`N\le
m_1m_2`.  Hence the second term of the exact target closes the whole estimate
whenever $`p\le12d_1d_2`.

The complementary high-characteristic restriction is recorded as the
ordinary proposition
`GeneralCorvajaZannierPlaneCurveTheoremAboveElementaryRange`.  Lean proves
that the full finite-field proposition is logically equivalent to this
restriction.  This lemma isolates exactly the range $`12d_1d_2<p`; the
powered-image and canonical-Wronskian nodes above prove that complementary
case in the final assembly below.
:::

:::lemma_ "corvaja_zannier_endpoint_composition" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_exhaustive_torsion_gcd_bridge, corvaja_zannier_elementary_range_reduction, corvaja_zannier_finite_field_theorem_two_numerical_implication") (lean := "BGS.CorvajaZannier.poweredTorsionFunctions_ne_zero_of_isCorvajaZannierPlaneCurve, BGS.CorvajaZannier.poweredCoordinateImageRelation_spec_of_isCorvajaZannierPlaneCurve, BGS.CorvajaZannier.torusCurveTorsionIntersection_card_eq_torsionPoint_card, BGS.CorvajaZannier.torusCurveTorsionIntersection_card_le_min_bidegree_order, BGS.CorvajaZannier.propositionTwoNumericalAlternatives_mono, BGS.CorvajaZannier.planeCurvePropositionTwoCertificate_of_dedekindGcdSum_and_bidegree, BGS.CorvajaZannier.planeCurvePropositionTwoCertificate_of_exhaustiveGcdWeightedDegree_and_bidegree, BGS.CorvajaZannier.planeCurveCorvajaZannierNumericalBound_of_propositionTwo, BGS.CorvajaZannier.generalCorvajaZannierPlaneCurveTheorem_of_certificates") (tags := "proved-in-lean, endpoint-composition, proved-exhaustive-weighted-gcd-bridge, proved-trivial-bidegree-bound, certificate-to-public-target") (effort := "large") (priority := "high")

Lean now performs the complete bookkeeping from the public plane-curve
hypotheses to the exact numerical target.  It constructs the canonical
powered-image relation with the source bidegree bounds, proves that both
powered torsion functions are nonzero, identifies the finite-set cardinality
with the torsion-point subtype cardinality, and turns the explicit Dedekind
gcd sum into a Proposition 2 certificate.  The minimum and maximum of the two
powered projection-degree bounds multiply to
$`m_1m_2d_1d_2`, so the proved numerical optimization yields exactly the
published maximum.  A direct coordinate-fiber count proves the sharp trivial
bound by the smaller powered projection degree.  Since Proposition 2 is
downward closed in the gcd quantity, the certificate can use the actual point
count and needs no separate upper bound on the normalization gcd divisor.

The intermediate ordinary proposition is
`BGS.CorvajaZannier.GeneralPlaneCurvePropositionTwoCertificatesAboveElementaryRange`.
Its mathematical content is the Proposition 2 alternatives in the
high-characteristic range; the elementary degree part is discharged directly.
The powered-image-index and two-orientation path constructs a term of this
proposition.  From it Lean derives
`BGS.External.GeneralCorvajaZannierPlaneCurveTheorem` without any additional
axiom or typeclass assumption.
:::

:::theorem "corvaja_zannier_high_characteristic_certificates" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_plane_curve_proposition_two_orientations, corvaja_zannier_powered_image_index") (lean := "BGS.CorvajaZannier.generalPlaneCurvePropositionTwoCertificatesAboveElementaryRange_of_poweredImageIndexBound, BGS.CorvajaZannier.generalPlaneCurvePropositionTwoCertificatesAboveElementaryRange") (tags := "proved-in-lean, high-characteristic-range, proposition-two-certificates, unconditional") (effort := "large") (priority := "high")
In the complementary range $`12d_1d_2<p`, Lean specializes the actual
coordinate degrees beneath the public bidegree bounds, applies the unconditional
powered-image index theorem, and invokes the natural-or-swapped Proposition 2
theorem.  Degree monotonicity transports the resulting alternatives and the
torsion-cardinality estimate to the public parameters.  This constructs the
previously exposed certificate proposition as a theorem; no certificate is
accepted as an assumption.
:::

:::theorem "corvaja_zannier_finite_field_specialization_theorem" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_high_characteristic_certificates, corvaja_zannier_elementary_range_reduction, corvaja_zannier_endpoint_composition") (lean := "BGS.CorvajaZannier.generalCorvajaZannierPlaneCurveTheorem") (tags := "proved-in-lean, finite-field-specialization, exact-public-endpoint, unconditional") (effort := "large") (priority := "high")
The compiled theorem inhabits the ordinary proposition
`BGS.External.GeneralCorvajaZannierPlaneCurveTheorem`.  This is the exact
finite-field specialization used by the project: it counts torsion points in
$`K^\times\times K^\times`, assumes the two orders are positive and prime to
$`p`, and uses the degree-only Euler bound $`2d_1d_2`.

The proof splits at $`p\le12d_1d_2`.  The small-characteristic branch is the
elementary product bound, while the complementary branch is supplied by the
unconditional Proposition 2 certificates above.  Endpoint composition yields
the exact published maximum with no axiom, `sorry`, typeclass-gated theorem, or
additional Corvaja--Zannier hypothesis.
:::

:::theorem "corvaja_zannier_existing_markoff_adapter" (parent := "corvaja_zannier_result") (uses := "corvaja_zannier_finite_field_specialization_theorem") (lean := "BGS.Markoff.WeightedTraceTorsionIntersectionBound, BGS.Markoff.weightedTraceCurve_isGeneralCorvajaZannierPlaneCurve, BGS.Markoff.generalTorusTorsionIntersection_weightedTrace_eq, BGS.Markoff.corvajaZannierWeightedTraceBound_of_generalTheorem, BGS.Markoff.corvajaZannierWeightedTraceBound") (tags := "proved-in-lean, completed-stage, dependency-complete, selected-middle-game, theorem-status-explicit") (effort := "large") (priority := "high")
Lean applies the proved finite-field theorem after verifying the
weighted trace curve's bidegree, irreducibility, non-subtorus condition,
coordinate differentials, and exact torsion-intersection identification.  It
then derives the coefficient-$`48` envelope used by the Markoff middle game,
using the safe degree-only bound $`\chi\le8` for bidegree $`(2,2)`.

The completed theorem
`BGS.Markoff.corvajaZannierWeightedTraceBound` instantiates the general-to-weighted map with
`BGS.CorvajaZannier.generalCorvajaZannierPlaneCurveTheorem`; the selected
middle-game bound is therefore proved entirely in-repository.
:::
:::::::

-- `include` resolves a module-like name to Verso's canonical document object.
-- These aliases expose the proof stages above as nested chapter subsections.
def corvajaZannierOverview.«the canonical document object name» :=
  (_root_.corvajaZannierOverview)

def corvajaZannierFunctionField.«the canonical document object name» :=
  (_root_.corvajaZannierFunctionField)

def corvajaZannierLocalWronskians.«the canonical document object name» :=
  (_root_.corvajaZannierLocalWronskians)

def corvajaZannierGlobalWronskian.«the canonical document object name» :=
  (_root_.corvajaZannierGlobalWronskian)

def corvajaZannierNumericalOptimization.«the canonical document object name» :=
  (_root_.corvajaZannierNumericalOptimization)

def corvajaZannierFiniteFieldSpecialization.«the canonical document object name» :=
  (_root_.corvajaZannierFiniteFieldSpecialization)

#doc (Manual) "The Corvaja--Zannier torsion-intersection bound" =>

This chapter proves the torsion-intersection estimate used in the middle game.
It passes from the plane-curve function field and Frobenius-linear independence
to local and global Wronskian estimates, Proposition 2, the corrected numerical
optimization, and finally the finite-field theorem and weighted-trace adapter.

{include 1 corvajaZannierOverview}
{include 1 corvajaZannierFunctionField}
{include 1 corvajaZannierLocalWronskians}
{include 1 corvajaZannierGlobalWronskian}
{include 1 corvajaZannierNumericalOptimization}
{include 1 corvajaZannierFiniteFieldSpecialization}
