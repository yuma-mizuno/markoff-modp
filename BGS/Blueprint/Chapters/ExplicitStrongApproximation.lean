import BGS.Blueprint.Chapters.ProofRoute
import BGS.Markoff.ExplicitEndgame
import BGS.Markoff.ExplicitEstimates
import BGS.Markoff.ExplicitNumericCertificates
import BGS.Markoff.Assembly.ExplicitPuncturedTransitivity
import BGS.Markoff.Assembly.ReductionSurjectivity
import BGS.NumberTheory.ExplicitDivisorBound
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "An explicit Markoff-reduction surjectivity theorem" =>

:::source_document "eddy-fuchs-litman-martin-tripeny"
%%%
title := "Jillian Eddy, Elena Fuchs, Matthew Litman, Daniel Martin, and Nico Tripeny, Connectivity of Markoff mod-p graphs and maximal divisors (arXiv:2308.07579v1)"
kind := .pdf
pdf := "https://arxiv.org/pdf/2308.07579v1"
%%%
:::

:::group "explicit_strong_approximation"
Explicit transitivity and reduction
:::

Eddy--Fuchs--Litman--Martin--Tripeny make the phrase "sufficiently large"
in the BGS method effective.  Their introduction first obtains connectivity
above $`10^{532}`, then replaces the total-divisor count by maximal divisors
and reports an optimized primorial/product cutoff.

The formal route below is deliberately more conservative.  It sums over all
divisors, proves a closed ninth-moment divisor estimate in Lean, and chooses

$$`
  K_9=2^9(9^9)^{2^9},\qquad
  p_0=2^9(48^3+1)^{18}K_9^8+1.
`

Thus this $`p_0` is explicit but is not the optimized preprint constant.  In
particular, the formal theorem does not depend on a formalization of maximal
divisors, the preprint's finite enumeration, or its Algorithm 1 certificate.

:::lemma_ "explicit_elementary_divisor_bound" (parent := "explicit_strong_approximation") (lean := "BGS.NumberTheory.pow_succ_le_self_pow_mul_two_pow, BGS.NumberTheory.card_divisors_pow_le_explicit_constant_mul, BGS.Markoff.explicitDivisorMomentConstant, BGS.Markoff.explicitDivisorMomentConstant_eq, BGS.Markoff.explicit_divisor_sum_pow_nine_le") (tags := "proved-in-lean, explicit, arithmetic") (priority := "high")
%%%
source := {
  document := "eddy-fuchs-litman-martin-tripeny"
  spans := #[
    {
      page := "PDF p. 6; Section 2 preliminary all-divisor route; author TeX lines 229--233"
      pdf := some { path := "https://arxiv.org/pdf/2308.07579v1" }
    }
  ]
}
%%%

For every positive natural number $`n`, the elementary factor-by-factor estimate gives

$$`
  \tau(n)^9\le (9^9)^{2^9}n.
`

The convexity estimate for a ninth power then gives
$`(\tau(p-1)+\tau(p+1))^9\le K_9p`.  This replaces the preprint's sharper
analytic use of Nicolas' divisor bound by a larger but kernel-checked constant.
:::

:::proof "explicit_elementary_divisor_bound"
For every prime-power exponent $`a`, write $`a=9q+r` with $`r<9`.  Then
$`a+1\le9(q+1)\le9\,2^q`.  Multiplying these inequalities over the prime
factors of $`n` yields the displayed power bound.  Apply
$`(x+y)^9\le2^8(x^9+y^9)` to the two divisor counts; the identity
$`(p-1)+(p+1)=2p` supplies the remaining factor $`2` in $`K_9`.
:::

:::lemma_ "explicit_split_hasse_estimate" (parent := "explicit_strong_approximation") (uses := "affine_hasse_weil, conic_rotation_orbits") (lean := "BGS.HasseWeil.bivariateAffineHasseWeilBound_eight, BGS.Markoff.weightedSplitTraceWeilBoundAssumption_of_bivariateAffineHasseWeilBound, BGS.Markoff.weightedSplitTraceWeilBoundAssumption_thirtyThree") (tags := "proved-in-lean, explicit, hasse-weil, split-adapter") (priority := "high")
The split trace-curve adapter specializes the in-repository affine
Hasse--Weil theorem with coefficient $`8` and returns the fixed split error
coefficient $`4\cdot8+1=33`.
:::

:::lemma_ "explicit_nonsplit_hasse_estimate" (parent := "explicit_strong_approximation") (uses := "affine_hasse_weil, conic_rotation_orbits") (lean := "BGS.Markoff.seededNonsplitTraceWeilBoundAssumption_of_bivariateAffineHasseWeilBound, BGS.Markoff.seededNonsplitTraceWeilBoundAssumption_thirtyFour") (tags := "proved-in-lean, explicit, hasse-weil, nonsplit-adapter") (priority := "high")
The descended nonsplit trace curve and its base-field count comparison turn
the same coefficient-$`8` theorem into the fixed nonsplit coefficient
$`4\cdot8+2=34`.
:::

:::lemma_ "explicit_cage_hasse_estimates" (parent := "explicit_strong_approximation") (uses := "affine_hasse_weil, cage_plane_models") (lean := "BGS.Markoff.cagePlanePointEstimate_of_bivariateAffineHasseWeilBound, BGS.Markoff.cageWitnessPointEstimate_of_cagePlanePointEstimate, BGS.Markoff.cagePlanePointEstimate_twoHundredFiftySix, BGS.Markoff.cageWitnessPointEstimate_oneHundredThousandFiveHundredTwentyTwo") (tags := "proved-in-lean, explicit, hasse-weil, cage-adapter") (priority := "high")
The direct cage-plane models give coefficient $`32\cdot8=256`.  The
witness-count comparison then gives
$`100000+2\cdot256+10=100522`.  Thus no existentially chosen point-count
constant remains on the explicit route.
:::

:::lemma_ "explicit_numeric_certificates" (parent := "explicit_strong_approximation") (uses := "explicit_elementary_divisor_bound") (lean := "BGS.Markoff.explicitStrongApproximationCutoff, BGS.Markoff.explicitStrongApproximationCutoff_eq, BGS.Markoff.explicit_corvajaZannier_divisor_term_lt_rpow_one_div_six, BGS.Markoff.explicit_weighted_divisor_sum_sq_lt_rpow_one_div_three, BGS.Markoff.explicit_middleGame_corvajaZannier_linearBound, BGS.Markoff.explicit_four_lt_rpow_five_div_six, BGS.Markoff.explicit_endgamePrimitiveTrace_explicitInequality_of_card_sub_one, BGS.Markoff.explicit_endgamePrimitiveTrace_explicitInequality_of_card_add_one, BGS.Markoff.explicit_divisor_sum_lt_rpow_one_div_eight, BGS.Markoff.small_fixed_lt_rpow_one_div_eight_of_explicitCutoff, BGS.Markoff.explicit_cageWitness_explicitInequality, BGS.Markoff.explicit_lowOrder_divisorSensitive_cube") (tags := "proved-in-lean, explicit, numerical-certificate") (priority := "high")
For $`p\ge p_0`, the divisor estimate and fixed coefficients discharge every
real-power inequality used downstream.  In particular,
$`48T<p^{1/6}` and $`68T^2<p^{1/3}`, where
$`T=\tau(p-1)+\tau(p+1)`.  Consequently the linear middle-game inequality
holds for every $`d<p^{5/6}`, and the endgame starts at $`p^{5/6}`.  The
low-order certificate is adaptive: from
$`p\le2(2+dT)^2` it deduces $`(48T)^3<d` directly, with no fixed lower power
threshold.  The earlier estimates $`T<p^{1/8}` and
$`100522<p^{1/8}` are retained for the cage argument.
:::

:::proof "explicit_numeric_certificates"
Write $`B=48^3+1`.  The ninth-moment estimate gives
$`T^9\le K_9p`.  Thus
$`(48T)^{18}\le48^{18}K_9^2p^2<p^3` and
$`(68T^2)^9\le68^9K_9^2p^2<p^3`, proving the one-sixth and one-third bounds.

For the adaptive implication, suppose instead that $`d\le(48T)^3`.  Since
$`T\ge2`, the low-order count gives
$`p\le2B^2T^8`.  Raising to the ninth power and then raising the moment
estimate to the eighth power yields
$`p^9\le2^9B^{18}K_9^8p^8<p^9`, a contradiction.  Finally,
$`T^{72}\le K_9^8p^8<p^9` supplies the retained one-eighth-power cage bounds,
together with the fixed-coefficient comparison at the same cutoff.
:::

:::theorem "explicit_middle_game_step" (parent := "explicit_strong_approximation") (uses := "weighted_trace_geometry, corvaja_zannier_existing_markoff_adapter, conic_rotation_orbits") (lean := "BGS.Markoff.corvajaZannierWeightedTraceBound, BGS.Markoff.exists_sameNormalizedComponent_maximalOrder_increase_of_directBounds") (tags := "proved-in-lean, explicit, middle-game, conditional-frontier") (priority := "high")
Assume directly that $`(48T)^3<d`, $`48Td<p`, and
$`d<p^{5/6}`, where $`T=\tau(p-1)+\tau(p+1)`.  A normalized Markoff point of
maximal coordinate order $`d` then has a same-component successor with
strictly larger maximal coordinate order.  The direct wrapper derives the
order-four and nonparabolic exclusions from the cube bound itself.  At the
closed cutoff, the one-sixth coefficient bound supplies the linear inequality
throughout $`d<p^{5/6}`; the cube bound is supplied adaptively by the
divisor-sensitive low-order count rather than by a preselected lower interval.
:::

:::lemma_ "explicit_low_order_trace_count" (parent := "explicit_strong_approximation") (uses := "conic_rotation_orbits") (lean := "BGS.Markoff.elementsOfOrderLessThan_card_le_pred_mul_card_divisors, BGS.Markoff.boundedOrderTraceSet_card_le_pred_mul_card_divisors, BGS.Markoff.lowOrderTraceSet_card_le_parabolic_add_pred_mul_divisor_cards, BGS.Markoff.concreteLowOrderTraceSet_succ_card_le_divisor_sensitive") (tags := "proved-in-lean, explicit, elementary-count")
In a cyclic group of order $`N`, elements of order below $`d+1` number at
most $`d\tau(N)`.  Therefore the split and norm-one traces of order at most
$`d`, together with the two parabolic traces, form a set of cardinality at
most $`2+d(\tau(p-1)+\tau(p+1))`.
:::

:::lemma_ "explicit_small_order_point_count" (parent := "explicit_strong_approximation") (uses := "explicit_low_order_trace_count, markoff_surface") (lean := "BGS.Markoff.mem_normalizedMarkoffPointsWithFirstTwoCoordinatesIn_iff, BGS.Markoff.normalizedMarkoffPointsWithFirstTwoCoordinatesIn_card_le, BGS.Markoff.normalizedMarkoffPointsWithSmallFirstTwoRotationOrders_succ_card_le_divisor_sensitive, BGS.Markoff.puncturedNormalizationEquiv, BGS.Markoff.puncturedMarkoffPointsWithSmallFirstTwoRotationOrders, BGS.Markoff.puncturedMarkoffPointsWithSmallFirstTwoRotationOrders_succ_card_le_divisor_sensitive") (tags := "proved-in-lean, explicit, elementary-count")
Writing $`T=\tau(p-1)+\tau(p+1)`, the punctured points whose first two
rotation orders are at most $`d` form a finite set of cardinality at most
$`2(2+dT)^2`.  This exact successor bound is what the maximal-bad-orbit proof
uses; no polynomial replacement in $`d` is inserted.
:::

:::theorem "explicit_primitive_trace_endgame" (parent := "explicit_strong_approximation") (uses := "explicit_numeric_certificates, explicit_split_hasse_estimate, explicit_nonsplit_hasse_estimate, conic_rotation_orbits") (lean := "BGS.Markoff.exists_splitPrimitiveTracePair_of_explicitInequality, BGS.Markoff.exists_existingConicSeedNonsplitPrimitiveTracePair_of_explicitInequality, BGS.Markoff.exists_iterate_nonparabolicPoint_with_maximal_secondRotation_of_explicitInequalities, BGS.Markoff.exists_iterate_point_with_maximal_secondRotation_of_explicitInequalities") (tags := "proved-in-lean, explicit, primitive-trace, endgame") (priority := "high")
At the large-order threshold, fixed-coefficient split and nonsplit
inclusion--exclusion produces a primitive split trace.  The pointwise theorem
also separates the parabolic and trace-zero branches; every numerical premise
is discharged by the closed certificate.
:::

:::theorem "explicit_cage_connectivity" (parent := "explicit_strong_approximation") (uses := "explicit_numeric_certificates, explicit_cage_hasse_estimates, conic_rotation_orbits") (lean := "BGS.Markoff.exists_splitMaximalFiberBridge_of_explicitInequality, BGS.Markoff.splitCage_connected_of_explicitInequality, BGS.Markoff.explicit_splitCage_connected, BGS.Markoff.exists_normalizedPunctured_splitCagePoint") (tags := "proved-in-lean, explicit, cage") (priority := "high")
The coefficient-$`100522` witness estimate gives a primitive middle fiber
between two maximal split fibers.  Fiber transitivity then connects the whole
split cage.  This stage continues to use the retained one-eighth-power divisor
and fixed-coefficient estimates.  Lean also constructs the punctured cage
point used as the base of the final maximal-orbit argument.
:::

:::theorem "explicit_large_order_to_cage" (parent := "explicit_strong_approximation") (uses := "explicit_primitive_trace_endgame, explicit_cage_connectivity") (lean := "BGS.Markoff.exists_explicit_sameComponent_maximalRotation_of_large_firstCoordinate, BGS.Markoff.exists_explicit_sameComponent_splitCage_of_large_firstCoordinate, BGS.Markoff.exists_explicit_sameComponent_splitCage_of_some_largeCoordinate, BGS.Markoff.explicit_sameNormalizedComponent_of_largeOrder_to_splitCage") (tags := "proved-in-lean, explicit, cross-stage-composition") (priority := "high")
Every point with some coordinate order at least $`p^{5/6}` lies in the
component of the chosen split cage.  This node is only the explicit endgame
and cage composition; the Corvaja--Zannier middle-game step remains a separate
dependency of the maximal-bad-orbit frontier below.
:::

:::theorem "explicit_maximal_bad_orbit_frontier" (parent := "explicit_strong_approximation") (uses := "punctured_markoff_transitivity, explicit_middle_game_step, explicit_small_order_point_count, chen_orbit_divisibility_via_martin") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_of_maximalOrbit_frontier") (tags := "proved-in-lean, explicit, dependency-frontier") (priority := "high")
%%%
source := {
  document := "eddy-fuchs-litman-martin-tripeny"
  spans := #[
    {
      page := "PDF p. 2; Introduction, effective all-divisor strategy; author TeX lines 124--126"
      pdf := some { path := "https://arxiv.org/pdf/2308.07579v1" }
    },
    {
      page := "PDF pp. 3--6; Section 2, preliminary all-divisor argument; author TeX lines 170--233"
      pdf := some { path := "https://arxiv.org/pdf/2308.07579v1" }
    }
  ]
}
%%%

Assume a bad component exists and choose in it a point whose maximal
coordinate rotation order $`d` is maximal.  Chen's theorem, using Martin's
elementary proof formalized here, makes the orbit cardinality divisible by
$`p`.  If $`d\ge p^{5/6}`, the supplied large-order frontier puts the point in
the base component.  Otherwise, divisibility and the divisor-sensitive
low-order count give $`p\le2(2+dT)^2`; the adaptive certificate forces
$`(48T)^3<d`, while the one-sixth estimate gives $`48Td<p`.  The
Corvaja--Zannier middle-game increase then contradicts maximality.
Hence every point lies in the base cage component, which is exactly punctured
finite-field transitivity at $`p`.

This theorem is intentionally an assembly frontier.  Its three input packages
are the adaptive cube implication from the exact low-order count, the
upper-range linear certificate, and the abstract large-order connection to the
base component.  The direct middle-game theorem consumes the first two.  The
final explicit theorem is attached separately only after Lean instantiates
all three packages from the certificate and endgame declarations above.
:::

:::theorem "explicit_punctured_transitivity_cutoff" (parent := "explicit_strong_approximation") (uses := "explicit_maximal_bad_orbit_frontier, explicit_numeric_certificates, explicit_large_order_to_cage") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_of_explicitCutoff, BGS.Markoff.puncturedMarkoffTransitiveAt_of_concreteExplicitBound") (tags := "proved-in-lean, explicit, dependency-complete, modular-transitivity") (priority := "high")
%%%
source := {
  document := "eddy-fuchs-litman-martin-tripeny"
  spans := #[
    {
      page := "PDF p. 2; Introduction, effective all-divisor strategy; author TeX lines 124--126"
      pdf := some { path := "https://arxiv.org/pdf/2308.07579v1" }
    },
    {
      page := "PDF pp. 3--6; Section 2, preliminary all-divisor argument; author TeX lines 170--233"
      pdf := some { path := "https://arxiv.org/pdf/2308.07579v1" }
    }
  ]
}
%%%

For every prime $`p` satisfying

$$`
  2^9(48^3+1)^{18}
    \left(2^9(9^9)^{2^9}\right)^8+1\le p,
`

the action of $`\Gamma` on $`X^*(\mathbb F_p)` is transitive.  The declaration
`BGS.Markoff.puncturedMarkoffTransitiveAt_of_concreteExplicitBound` exposes this raw
natural-number expression in its hypothesis; no unfolding of an opaque
constant is required by clients.
:::

:::proof "explicit_punctured_transitivity_cutoff"
Choose an explicit point in the split cage.  Feed the adaptive cube-from-count
implication, the five-sixths linear certificate, and the explicit
large-order-to-cage theorem into the maximal-bad-orbit frontier.  Its conclusion is
`PuncturedMarkoffTransitiveAt p`.  This dependency path is direct and does not pass
through the older existential theorem
`BGS.Markoff.eventually_strongApproximationAt`.
:::

:::theorem "explicit_markoff_reduction_surjective" (parent := "explicit_strong_approximation") (uses := "strong_approximation_goal, natural_markoff_connectivity, explicit_punctured_transitivity_cutoff") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt, BGS.Markoff.strongApproximationAt_iff_markoffReduction_surjective, BGS.Markoff.markoffEquivSemiringMarkoffSurface, BGS.Markoff.reduction_surjective_of_explicitBound") (tags := "proved-in-lean, explicit, dependency-complete, reduction-surjectivity, main-result, final-goal") (priority := "high")
%%%
source := {
  document := "bgs-published-selected-route"
  spans := #[
    {
      page := "2, Strong Approximation Conjecture"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 474
        endLine := 487
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every prime $`p` satisfying

$$`
  2^9(48^3+1)^{18}
    \left(2^9(9^9)^{2^9}\right)^8+1\le p,
`

coordinatewise reduction is surjective:

$$`
  \operatorname{Markoff}(\mathbb N)
  \xrightarrow{\operatorname{Markoff}(\mathbb N\to\mathbb Z/p\mathbb Z)}
  \operatorname{Markoff}(\mathbb Z/p\mathbb Z)
  \quad\text{is surjective}.
`

This is the final public endpoint
`BGS.Markoff.reduction_surjective_of_explicitBound`, defined in
`BGS.Markoff.Assembly.ReductionSurjectivity`.  BGS state the punctured
integral reduction conjecture and note its equivalent formulation using the
natural Markoff orbit.  The formal theorem includes the origin and gives the
claimed surjectivity on the entire semiring-valued surface for the displayed
explicit range of primes.
:::

:::proof "explicit_markoff_reduction_surjective"
Reduction carries the natural root and origin to their counterparts modulo
$`p` and intertwines every Vieta move and coordinate swap.  A finite-field word
from the root to a punctured target therefore lifts to a natural word, while
the target origin is lifted by the natural origin.  This proves that modular
transitivity implies reduction surjectivity.

Conversely, lift two punctured finite-field points using reduction
surjectivity.  Their natural lifts are nonzero, so the natural descent theorem
connects both to $`(1,1,1)`; reducing those paths connects the original points.
Lean packages the two directions as
`BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt`.
The separate theorem
`BGS.Markoff.strongApproximationAt_iff_markoffReduction_surjective` only
changes between the public triple presentation and the structured internal
reduction map.  Applying the first equivalence to the explicit transitivity
theorem gives the stated public endpoint.
:::

The preprint improves the first $`10^{532}` cutoff by replacing total divisors
with maximal divisors and running a finite search over reduced integers.

That optimization is source context, not a hidden premise of the Lean graph.
The formal graph stays on the all-divisor certificate route all the way to its
explicit endpoint; it makes no claim that the preprint's computer-generated
primorial/product certificate has been reproduced.
