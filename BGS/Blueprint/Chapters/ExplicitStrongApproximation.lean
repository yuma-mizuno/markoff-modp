import BGS.Blueprint.Chapters.ProofRoute
import BGS.Markoff.ExplicitEndgame
import BGS.Markoff.ExplicitEstimates
import BGS.Markoff.ExplicitNumericCertificates
import BGS.Markoff.PreliminaryEndgame
import BGS.Markoff.PreliminaryNumerics
import BGS.Markoff.Assembly.ExplicitPuncturedTransitivity
import BGS.Markoff.Assembly.ReductionSurjectivity
import BGS.NumberTheory.ExplicitDivisorBound
import BGS.NumberTheory.PreliminaryDivisorBound
import BGS.NumberTheory.RankinCutoff1248Skeleton
import BGS.NumberTheory.RankinJointEnvelopeSummaryCoverage
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

The formal route below follows the preliminary all-divisors mechanism but
replaces the paper's Nicolas and Euler-totient estimates by a fully elementary
tenth-moment divisor bound.  Lean proves

$$`
  \tau(n)^{10}\le 2^{448}n,
  \qquad K_{10}=2^{458},
  \qquad p_0=2^{1837}(48^3+1)^{10}+1.
`

The actual sum of the prime-factor penalties is $`447`; the displayed divisor
bound rounds this up to $`448`.  The resulting $`p_0` is approximately
$`2.6876853606811626\times10^{603}`.  It is larger than the paper's preliminary
$`10^{532}` threshold, because no Nicolas inequality or explicit lower bound
for $`\varphi` is imported.  It is nevertheless far smaller than the former
formal ninth-moment cutoff and formalizes the main all-divisors idea without
using maximal divisors, the finite enumeration, or Algorithm 1.
:::lemma_ "explicit_elementary_divisor_bound" (parent := "explicit_strong_approximation") (lean := "BGS.NumberTheory.preliminaryPrimePenalty, BGS.NumberTheory.card_divisors_pow_ten_le_preliminary_constant_mul, BGS.Markoff.preliminaryDivisorMomentConstant, BGS.Markoff.preliminaryDivisorMomentConstant_eq, BGS.Markoff.preliminary_divisor_sum_pow_ten_le") (tags := "proved-in-lean, explicit, arithmetic, paper-preliminary-route") (priority := "high")
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

For every positive natural number $`n`, the prime-factor penalty estimate gives

$$`
  \tau(n)^{10}\le 2^{448}n.
`

Consequently, with $`T=\tau(p-1)+\tau(p+1)`, convexity gives
$`T^{10}\le 2^{458}p`.  This is the elementary substitute for the paper's
sharper analytic use of Nicolas' divisor bound.
:::

:::proof "explicit_elementary_divisor_bound"
For a prime factor $`q` and exponent $`a`, Lean proves
$`(a+1)^{10}\le 2^{e(q)}q^a`.  The penalty $`e(q)` decreases across the
prime thresholds
$`2,3,5,7,11,13,17,23,31,43,67,131,257,521,1024`; beyond $`1024` it is zero.
Each band is a finite initial check followed by ratio induction.  A kernel-checked
finite calculation proves that the penalties over all primes below $`1024`
sum to $`447`, hence at most $`448`.  Multiplying over the prime factorization
proves the displayed estimate.  Finally,
$`(x+y)^{10}\le2^9(x^{10}+y^{10})` and
$`(p-1)+(p+1)=2p` give $`T^{10}\le2^{458}p`.
:::
:::lemma_ "rankin_1248_finite_domain" (parent := "explicit_strong_approximation") (lean := "BGS.NumberTheory.rankinCutoff1248CapTable_check, BGS.NumberTheory.rankinCutoff1248CapTable_product, BGS.NumberTheory.jointOddPrimeList_length_lt_275_of_lt_two_pow_1248, BGS.NumberTheory.actualRankinExponentSkeleton_admissible_1248") (tags := "proved-in-lean, explicit, finite-domain, conditional-route, rankin-envelope") (priority := "high")
The new Rankin-envelope route has a proved finite-domain boundary at 2^1248.
Lean checks that the listed numbers from 3 through 1783 are exactly the first
275 odd primes and that their product is larger than 2^2496.  If p is less
than 2^1248, then (p-1)(p+1) is less than 2^2496, so the joint odd-prime
support of p-1 and p+1 has fewer than 275 entries.

After erasing which neighbor owns each odd prime and replacing its prime value
by the corresponding positional Rankin cap, every actual prime in this range
therefore maps to an executable exponent skeleton.  The skeleton records the
two 2-adic exponents, the positive odd exponents, the neighboring
2-factorization shape, the support bound, and the same global product budget.
This is a new formal reduction rather than a theorem quoted from the paper.

This node proves coverage of the finite search domain only.  It does not yet
assert that every admissible skeleton is closed by a domination leaf, and it
does not state transitivity or reduction surjectivity below 2^1248.  The
remaining obligation is an exhaustive, kernel-checked leaf certificate
together with its composition into the exact-order endpoint.
:::
:::lemma_ "rankin_scalar_summary_certificates" (parent := "explicit_strong_approximation") (uses := "rankin_1248_finite_domain") (lean := "BGS.NumberTheory.RankinJointEnvelopeSummary, BGS.NumberTheory.RankinJointEnvelopeSummary.Dominates, BGS.NumberTheory.RankinJointEnvelopeSummary.jointEnvelope_leaf_of_dominates, BGS.NumberTheory.RankinJointEnvelopeSummaryCertificate.jointEnvelope_leaf_of_check_of_covers, BGS.Markoff.prime_le_of_rankinJointEnvelopeSummaryCertificate") (tags := "proved-in-lean, explicit, certificate-architecture, conditional-route, rankin-envelope") (priority := "high")
The exhaustive search no longer has to emit valid synthetic factorization
profiles.  A checked leaf records only two monotone scalars: an upper bound
for the joint Rankin failure square and a lower bound for the joint neighboring
product.  One such row may dominate an arbitrary family of exponent skeletons.

Lean proves that either terminal inequality transports from the scalar row to
the actual matched profile.  A summary certificate consists only of a cutoff
and a list of rows; reduction checks all leaf inequalities, while a separate
coverage theorem must exhibit a dominating row for every actual profile.
Thus numerical checking and mathematical exhaustiveness remain distinct.
The final exact-order wrapper is proved, but no concrete exhaustive summary
list for 2^1248 is claimed at this node.
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

:::lemma_ "explicit_numeric_certificates" (parent := "explicit_strong_approximation") (uses := "explicit_elementary_divisor_bound") (lean := "BGS.Markoff.preliminaryStrongApproximationCutoff, BGS.Markoff.preliminaryStrongApproximationCutoff_eq, BGS.Markoff.preliminary_corvajaZannier_divisor_term_lt_rpow_one_div_six, BGS.Markoff.preliminary_weighted_divisor_sum_sq_lt_rpow_one_div_three, BGS.Markoff.preliminary_middleGame_corvajaZannier_linearBound, BGS.Markoff.preliminary_four_lt_rpow_five_div_six, BGS.Markoff.preliminary_endgamePrimitiveTrace_explicitInequality_of_card_sub_one, BGS.Markoff.preliminary_endgamePrimitiveTrace_explicitInequality_of_card_add_one, BGS.Markoff.preliminary_divisor_sum_lt_rpow_one_div_eight, BGS.Markoff.preliminary_small_fixed_lt_rpow_one_div_eight, BGS.Markoff.preliminary_cageWitness_explicitInequality, BGS.Markoff.preliminary_lowOrder_divisorSensitive_cube") (tags := "proved-in-lean, explicit, numerical-certificate, paper-preliminary-route") (priority := "high")
For $`p\ge p_0`, the tenth-moment estimate and fixed coefficients discharge
every real-power inequality used downstream.  In particular,
$`48T<p^{1/6}` and $`68T^2<p^{1/3}`, where
$`T=\tau(p-1)+\tau(p+1)`.  Consequently the linear middle-game inequality
holds for every $`d<p^{5/6}`, and the endgame starts at $`p^{5/6}`.  The
low-order certificate is adaptive: from $`p\le2(2+dT)^2` it deduces
$`(48T)^3<d` directly.  The bounds $`T<p^{1/8}` and
$`100522<p^{1/8}` supply the cage argument.
:::

:::proof "explicit_numeric_certificates"
Write $`B=48^3+1`, $`K=2^{458}`, and $`Q=2^{1837}B^{10}`.  The tenth-moment
estimate gives $`T^{10}\le Kp`.  Hence
$`(48T)^{60}<p^{10}` and $`(68T^2)^{30}<p^{10}`, proving the one-sixth and
one-third bounds.

For the adaptive implication, suppose instead that $`d\le(48T)^3`.  Since
$`T\ge2`, the low-order count gives $`p\le2B^2T^8`.  Raising to the tenth
power and then using the eighth power of the moment estimate yields

$$`
  p^{10}\le 2^{10}B^{20}K^8p^8=Q^2p^8<p^{10},
`

a contradiction.  Likewise $`T^{80}\le K^8p^8\le Q^2p^8<p^{10}` gives the
one-eighth-power divisor bound.  The fixed cage coefficient is handled by the
same cutoff.
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

:::theorem "explicit_cage_connectivity" (parent := "explicit_strong_approximation") (uses := "explicit_numeric_certificates, explicit_cage_hasse_estimates, conic_rotation_orbits") (lean := "BGS.Markoff.exists_splitMaximalFiberBridge_of_explicitInequality, BGS.Markoff.splitCage_connected_of_explicitInequality, BGS.Markoff.preliminary_splitCage_connected, BGS.Markoff.exists_normalizedPunctured_splitCagePoint") (tags := "proved-in-lean, explicit, cage") (priority := "high")
The coefficient-$`100522` witness estimate gives a primitive middle fiber
between two maximal split fibers.  Fiber transitivity then connects the whole
split cage.  This stage continues to use the retained one-eighth-power divisor
and fixed-coefficient estimates.  Lean also constructs the punctured cage
point used as the base of the final maximal-orbit argument.
:::

:::theorem "explicit_large_order_to_cage" (parent := "explicit_strong_approximation") (uses := "explicit_primitive_trace_endgame, explicit_cage_connectivity") (lean := "BGS.Markoff.exists_preliminary_sameComponent_maximalRotation_of_large_firstCoordinate, BGS.Markoff.exists_preliminary_sameComponent_splitCage_of_large_firstCoordinate, BGS.Markoff.exists_preliminary_sameComponent_splitCage_of_some_largeCoordinate, BGS.Markoff.preliminary_sameNormalizedComponent_of_largeOrder_to_splitCage") (tags := "proved-in-lean, explicit, cross-stage-composition") (priority := "high")
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

:::theorem "explicit_punctured_transitivity_cutoff" (parent := "explicit_strong_approximation") (uses := "explicit_maximal_bad_orbit_frontier, explicit_numeric_certificates, explicit_large_order_to_cage") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_of_preliminaryCutoff, BGS.Markoff.puncturedMarkoffTransitiveAt_of_concretePreliminaryBound") (tags := "proved-in-lean, explicit, dependency-complete, modular-transitivity") (priority := "high")
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
  2^{1837}(48^3+1)^{10}+1\le p,
`

the action of $`\Gamma` on $`X^*(\mathbb F_p)` is transitive.  The declaration
`BGS.Markoff.puncturedMarkoffTransitiveAt_of_concretePreliminaryBound` exposes this raw
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
  2^{1837}(48^3+1)^{10}+1\le p,
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

The paper's Corollary 2.5 proves the sharper preliminary threshold
$`p>10^{532}` by applying Nicolas' explicit upper bound to
$`T_d\le\tau(p-1)+\tau(p+1)` and an explicit lower bound for
$`\varphi(p\pm1)`.  It then improves this further by replacing total divisors
with maximal divisors and running a finite search over reduced integers.

Those two optimizations are source context, not hidden premises of the Lean
graph.  The formal endpoint follows the paper's all-divisors
Corvaja--Zannier/maximal-bad-orbit architecture, but closes its numerical
obligations with the elementary tenth-moment estimate above.  It therefore
claims the larger displayed cutoff and makes no claim that either Nicolas'
analytic estimate or the computer-generated primorial/product certificate has
been formalized.
