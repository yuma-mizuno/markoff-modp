import BGS.Blueprint.Chapters.Opening
import BGS.Markoff.Assembly.Asymptotics
import BGS.Markoff.Assembly.DivisibleOrbitTransitivity
import BGS.Markoff.Assembly.ExceptionalPrimeCount
import BGS.Markoff.Assembly.NormalizationCount
import BGS.Markoff.Assembly.PuncturedSmallOrderCount
import BGS.Markoff.Assembly.GiantOrbit
import BGS.Markoff.Assembly.Unconditional
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Assembly of the main theorems" =>

:::group "giant_orbit"
Giant-orbit assembly
:::

The elementary count omitted from the paper's proof section.

:::proposition "middle_game_then_endgame_reaches_cage" (parent := "giant_orbit") (uses := "middle_game_reaches_endgame_threshold, endgame_to_cage") (lean := "BGS.Markoff.exists_threshold_middleGame_to_splitCage") (tags := "cross-stage-composition, dependency-complete, theorem-one") (priority := "high")
For every fixed $`\delta>0` and every sufficiently large prime $`p`, a point
whose maximal coordinate order is strictly greater than $`p^\delta` belongs
to the cage component.
:::

:::proof "middle_game_then_endgame_reaches_cage"
Lean first applies the completed middle game to reach the endgame threshold.
It then applies the separate split/nonsplit endgame theorem to reach the
selected split cage and composes the component witnesses.  The split,
nonsplit, and cage point estimates are all derived from the allowed general
Hasse--Weil input.
:::

:::definition "low_order_trace_set" (parent := "giant_orbit") (uses := "coordinate_order, torus_trace_rotation_order") (lean := "BGS.Markoff.elementsOfOrderLessThan, BGS.Markoff.boundedOrderTraceSet, BGS.Markoff.lowOrderTraceSet, BGS.Markoff.concreteLowOrderTraceSet, BGS.Markoff.mem_concreteLowOrderTraceSet_of_rotationOrder_lt")
For a bound $`B`, let $`S_B` be the normalized traces in $`\mathbb F_p` of
split or norm-one-torus elements of multiplicative order less than $`B`,
together with the finitely many parabolic traces.
:::

:::lemma_ "low_order_trace_count" (parent := "giant_orbit") (uses := "low_order_trace_set") (lean := "BGS.Markoff.elementsOfOrderLessThan_card_le_sum_range, BGS.Markoff.sum_orders_below_bound_le_bound_sq, BGS.Markoff.lowOrderTraceSet_card_le_parabolic_add_two_mul_bound_sq, BGS.Markoff.concreteLowOrderTraceSet_card_le")
The number of traces in $`S_B` is at most a fixed constant plus

$$`\sum_{d<B} d,`

and hence at most a fixed multiple of $`B^2`. This deliberately crude bound
avoids needing an asymptotic totient estimate.
:::

:::proof "low_order_trace_count"
This count is formalized for arbitrary trace maps out of finite cyclic groups;
cyclicity is essential.  Lean also constructs the concrete split and norm-one
torus trace maps and proves that nonparabolic small matrix rotation order gives
membership in the corresponding bounded-order trace set.  Frobenius descent
classifies every nonparabolic base-field trace into one of these two cases, and
the concrete union includes the two parabolic traces.
:::

:::lemma_ "third_coordinate_fiber_card" (parent := "giant_orbit") (uses := "original_markoff_surface") (lean := "BGS.Markoff.thirdCoordinatePolynomial, BGS.Markoff.mem_markoffPointsWithFirstTwoCoordinates_iff, BGS.Markoff.markoffPointsWithFirstTwoCoordinates_card_le_two")
After the first two coordinates are fixed, the Markoff equation is a monic
quadratic in the third coordinate. Therefore there are at most two choices.
:::

:::lemma_ "outside_cage_small_orders" (parent := "giant_orbit") (uses := "middle_game_then_endgame_reaches_cage, cage_connected") (lean := "BGS.Markoff.maximalCoordinateRotationOrder_le_rpow_of_not_same_splitCageComponent") (tags := "dependency-complete, theorem-one")
If a point is outside the cage component, every coordinate order is below the
middle-game threshold.
:::

:::lemma_ "small_order_point_count" (parent := "giant_orbit") (uses := "low_order_trace_count, third_coordinate_fiber_card") (lean := "BGS.Markoff.mem_normalizedMarkoffPointsWithFirstTwoCoordinatesIn_iff, BGS.Markoff.normalizedMarkoffPointsWithFirstTwoCoordinatesIn_card_le, BGS.Markoff.normalizedMarkoffPointsWithSmallFirstTwoRotationOrders_card_le, BGS.Markoff.puncturedNormalizationEquiv, BGS.Markoff.puncturedMarkoffPointsWithSmallFirstTwoRotationOrders_card_le")
If all three coordinate orders are below $`B`, then the number of such Markoff
points is at most $`2|S_B|^2`, hence at most a fixed multiple of $`B^4`.
:::

:::proof "small_order_point_count"
Lean now transports the fixed-fiber count through the normalization equivalence
and proves that normalized Markoff points whose first two coordinates lie in a
finite set $`S` have cardinality at most $`2|S|^2`.  Combining trace
classification and the concrete trace-set bound gives the axiom-clean estimate
$`2(2+2B^2)^2` for points whose first two rotation orders are below $`B`.
The dynamical inclusion of the cage complement is deliberately kept in the
separate node {uses "outside_cage_small_orders"}[]; it is not an assumption of
this elementary count.
:::

:::theorem "giant_orbit_assembly" (parent := "giant_orbit") (uses := "outside_cage_small_orders, small_order_point_count, cage_connected, corvaja_zannier_existing_markoff_adapter, weighted_split_trace_weil_from_general_hasse_weil, seeded_nonsplit_trace_weil_from_general_hasse_weil, cage_point_estimate_from_general_hasse_weil") (lean := "BGS.Markoff.samePuncturedComponent_iff_sameNormalizedComponent, BGS.Markoff.exists_normalizedPunctured_splitCagePoint, BGS.Markoff.eventually_natCeil_rpow_add_one_le_rpow, BGS.Markoff.smallOrderPointBound_le_rpow, BGS.Markoff.eventually_smallOrderPointBound_le_rpow, BGS.Markoff.orbitComplementCard_le_finset_of_subset, BGS.Markoff.hasGiantOrbitAt_of_complement_subset_finset, BGS.Markoff.eventually_hasGiantOrbit_of_specializedEstimates, BGS.Markoff.corvajaZannierWeightedTraceBound, BGS.Markoff.theoremOneStatement_of_generalHasseWeil_and_nonsplitHasseAdapter, BGS.Markoff.theoremOneStatement_of_generalHasseWeil, BGS.Markoff.theoremOneStatement") (tags := "proved-in-lean, dependency-complete, theorem-one, unconditional-cz, unconditional-hasse-weil") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "24, proof of Theorem 1"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1294
        endLine := 1302
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Given a target $`\varepsilon>0`, run the middle game with a sufficiently
smaller exponent, for example $`B=p^{\varepsilon/5}`. For all sufficiently
large $`p`, the complement of the cage component then has at most
$`p^\varepsilon` points.
:::

:::proof "giant_orbit_assembly"
The source says that preceding sections yield Theorem 1 but never supplies
this low-order trace count.  Lean constructs a punctured representative of
the split cage from a generator of $`\mathbb F_p^\times`, proves normalization
identifies original and normalized component relations, and uses the completed
middle game plus cage connectivity to put every point outside that component
inside the concrete small-order finset.  It then proves the ceiling-buffer
inequality for a smaller exponent and obtains `HasGiantOrbitAt`.  The final
Lean assembly supplies the middle game from the proved in-repository
  Corvaja--Zannier theorem and derives the split, descended-nonsplit, and
  multiplicity-aware cage estimates from the in-repository general affine
  Hasse--Weil theorem.
:::

:::definition "martin_penner_weights" (parent := "giant_orbit") (uses := "original_markoff_surface") (lean := "BGS.Markoff.pennerWeights, BGS.Markoff.puncturedPennerWeights") (tags := "martin-elementary, theorem-two")
%%%
source := {
  document := "martin-markoff"
  spans := #[
    {
      page := "2, equation (2.1)"
      text := some {
        path := "source/MartinChenMarkoff.tex"
        startLine := 88
        endLine := 88
      }
      pdf := some { path := "source/MartinChenMarkoff.pdf" }
    }
  ]
}
%%%

For a punctured Markoff point $`x=(x_1,x_2,x_3)`, define three piecewise
Penner weights.  When all coordinates are nonzero the first is
$`x_1/(3x_2x_3)` and cyclically; when one coordinate vanishes the weights are
a permutation of $`(0,1/2,1/2)`.
:::

:::lemma_ "martin_penner_weight_identities" (parent := "giant_orbit") (uses := "martin_penner_weights, vieta_moves") (lean := "BGS.Markoff.puncturedPennerWeights_sum_eq_one, BGS.Markoff.puncturedPennerWeight_first_add_vieta1_eq_one, BGS.Markoff.puncturedPennerWeight_second_add_vieta2_eq_one, BGS.Markoff.puncturedPennerWeight_third_add_vieta3_eq_one") (tags := "martin-elementary, dependency-complete, theorem-two")
%%%
source := {
  document := "martin-markoff"
  spans := #[
    {
      page := "2--3, equations (2.2)--(2.4)"
      text := some {
        path := "source/MartinChenMarkoff.tex"
        startLine := 88
        endLine := 90
      }
      pdf := some { path := "source/MartinChenMarkoff.pdf" }
    }
  ]
}
%%%

The three weights sum to one.  For each coordinate, that coordinate's weight
at $`x` plus its weight at the corresponding Vieta neighbor is one.  Lean
checks both the nonzero-coordinate formula and every zero-coordinate branch.
In the author TeX, the inline formula for $`y'_1` on line 90 omits a factor
of three in its denominator; displayed equation (2.3) and the ensuing
calculation have the correct denominator, which is the identity formalized.
:::

:::lemma_ "martin_vieta_invariant_card_zero" (parent := "giant_orbit") (uses := "martin_penner_weight_identities") (lean := "BGS.Markoff.card_cast_eq_zero_of_vieta_invariant") (tags := "martin-elementary, dependency-complete, theorem-two")
%%%
source := {
  document := "martin-markoff"
  spans := #[
    {
      page := "3, equation (2.5) and final summation"
      text := some {
        path := "source/MartinChenMarkoff.tex"
        startLine := 90
        endLine := 92
      }
      pdf := some { path := "source/MartinChenMarkoff.pdf" }
    }
  ]
}
%%%

Over a field of characteristic different from two and three, any finite set
of punctured Markoff points invariant under all three Vieta involutions has
cardinality zero in the field.  Lean proves this by reindexing each coordinate
sum by the corresponding involutive permutation, including fixed points.
:::

:::theorem "chen_orbit_card_divisible_via_martin" (parent := "giant_orbit") (uses := "martin_vieta_invariant_card_zero, gamma_action") (lean := "BGS.Markoff.prime_dvd_puncturedGammaOrbit_ncard") (tags := "chen-theorem, martin-elementary, dependency-complete, theorem-two") (priority := "high")
%%%
source := {
  document := "martin-markoff"
  spans := #[
    {
      page := "3, conclusion of the proof"
      text := some {
        path := "source/MartinChenMarkoff.tex"
        startLine := 92
        endLine := 92
      }
      pdf := some { path := "source/MartinChenMarkoff.pdf" }
    }
  ]
}
%%%

[Chen's theorem](https://arxiv.org/abs/2011.12940) says that, for every prime
$`p>3`, the cardinality of every $`\Gamma`-orbit on the punctured Markoff
surface over $`\mathbb F_p` is divisible by $`p`.  This node follows
[Martin's later elementary proof](https://arxiv.org/abs/2502.15960).  A
$`\Gamma`-orbit is itself invariant under each Vieta generator, so no transfer
from a separately defined Vieta-only group is needed.  The restriction is
genuine: at $`p=3` the eight triples with all coordinates $`\pm1` form one
Vieta component, whose size is not divisible by three.
:::

:::theorem "eventual_transitivity_from_chen_divisibility" (parent := "giant_orbit") (uses := "theorem_one, chen_orbit_card_divisible_via_martin") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_of_small_orbitComplement_and_orbitCard_dvd, BGS.Markoff.exists_orbitComplementCard_lt_prime_of_hasGiantOrbitAt, BGS.Markoff.puncturedMarkoffTransitiveAt_of_hasGiantOrbitAt_and_orbitCard_dvd, BGS.Markoff.eventually_puncturedMarkoffTransitiveAt_of_giantOrbit_and_orbitCard_dvd, BGS.Markoff.eventually_puncturedMarkoffTransitiveAt_of_giantOrbit, BGS.Markoff.eventually_puncturedMarkoffTransitiveAt_of_theoremOneStatement") (tags := "published-revision, chen-theorem, martin-elementary, dependency-complete, theorem-one-consequence") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "4, equation (6) and following paragraph"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 528
        endLine := 535
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Theorem 1 and orbit-cardinality divisibility imply punctured finite-field
transitivity for every sufficiently large prime.  Indeed, specialize the giant-orbit estimate
to any fixed $`0<\varepsilon<1`; its complement is eventually smaller than
$`p` and therefore cannot contain another nonempty orbit whose cardinality is
divisible by $`p`.
:::

:::proof "eventual_transitivity_from_chen_divisibility"
This is the short deduction recorded on page 4 of the published source and
absent from v1.  Lean proves the finite-orbit argument exactly.  If a point
$`y` lies outside the giant orbit, its entire orbit is contained in the giant
orbit's complement.  That orbit is nonempty and its cardinality is divisible
by $`p`, hence has at least $`p` points, contradicting a complement of size
less than $`p`.  For $`\varepsilon<1`, Lean also proves
$`p^\varepsilon<p` and packages the eventual quantifiers.

Martin's formalized argument supplies Chen's orbit-divisibility theorem for all
$`p>3`, without reproducing Chen's original moduli-space proof.
  The declaration
  `eventually_puncturedMarkoffTransitiveAt_of_theoremOneStatement`
  formalizes the quoted consequence directly, and
  the natural-connectivity bridge converts it to strong approximation.
:::

:::theorem "eventual_strong_approximation" (parent := "giant_orbit") (uses := "eventual_transitivity_from_chen_divisibility") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt, BGS.Markoff.eventually_strongApproximationAt_of_theoremOneStatement, BGS.Markoff.eventually_strongApproximationAt_of_generalHasseWeil, BGS.Markoff.eventually_strongApproximationAt") (tags := "proved-in-lean, dependency-complete, reduction-surjectivity, unconditional-hasse-weil") (priority := "high")
Natural Markoff connectivity identifies punctured finite-field transitivity
with surjectivity of reduction from natural Markoff solutions.  Hence strong
approximation holds for every sufficiently large prime.  The unconditional
Lean endpoint is `BGS.Markoff.eventually_strongApproximationAt`.
:::

:::proposition "smoothness_criterion" (parent := "giant_orbit") (uses := "bad_order_union_bound, orbit_card_lower_bound")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "24, equation (89)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1294
        endLine := 1299
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The divisor-sum hypothesis displayed as published equation (89), once its quantifiers
are made precise, is sufficient for every point to escape to the cage and
thus for punctured finite-field transitivity at that prime.
:::

:::group "exceptional_primes"
Exceptional-prime analysis
:::

The selected proof of Chen's theorem via Martin's elementary argument makes
the exceptional set finite.  The published rare-prime torsion route is
retained below for source-faithful comparison.

:::theorem "chen_divisibility_exceptional_prime_count" (parent := "exceptional_primes") (uses := "eventual_strong_approximation") (lean := "BGS.Markoff.exceptionalPrimeCount_le_of_eventually_strongApproximationAt, BGS.Markoff.theoremTwoStatement_of_eventually_strongApproximationAt, BGS.Markoff.theoremTwoStatement_of_theoremOneStatement, BGS.Markoff.theoremTwoStatement_of_generalHasseWeil, BGS.Markoff.theoremTwoStatement") (tags := "chen-theorem, martin-elementary, dependency-complete, theorem-two, unconditional-cz, unconditional-hasse-weil") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "3, Theorem 2"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 511
        endLine := 516
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Eventual transitivity makes the exceptional-prime set finite.  If all
exceptional primes are below $`p_0`, their count below any cutoff is at most
  $`p_0`, and this constant is eventually at most $`T^\varepsilon` for every
  $`\varepsilon>0`.  Lean therefore derives Theorem 2 from the unconditional
  Theorem 1.  Both Corvaja--Zannier and affine Hasse--Weil are proved
  in-repository; the CKSZ rare-prime theorem is not used.
:::

:::definition "trace_polynomial" (parent := "exceptional_primes") (uses := "trace_equation")
Clearing denominators in

$$`x+\sigma/x=y+1/y`

gives

$$`F_\sigma(x,y)=x^2y+\sigma y-xy^2-x.`
:::

:::lemma_ "trace_polynomial_abs_irreducible" (parent := "exceptional_primes") (uses := "trace_polynomial")
For $`\sigma\ne1`, $`F_\sigma` is absolutely irreducible.
:::

:::lemma_ "trace_polynomial_not_toric" (parent := "exceptional_primes") (uses := "trace_polynomial_abs_irreducible")
For $`\sigma\ne1`, the trace curve has no component that is a translate of a
positive-dimensional subtorus. State this in the Laurent polynomial ring so
negative exponents are meaningful.
:::

:::lemma_ "rotation_orbit_many_trace_pairs" (parent := "exceptional_primes") (uses := "rotation_orbit_card, trace_polynomial")
A rotation orbit of order greater than the absolute exceptional-point bound
supplies more distinct trace-curve pairs than that bound, after all
two-to-one trace multiplicities are counted.
:::

:::theorem "good_prime_transitive" (parent := "exceptional_primes") (uses := "orbit_card_lower_bound, trace_polynomial_not_toric, rotation_orbit_many_trace_pairs, rare_prime_torsion_order, middle_game_then_endgame_reaches_cage")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "25, proof of Theorem 2"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1331
        endLine := 1334
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every prime outside the rare-prime exceptional set and above a fixed
threshold, each $`\Gamma`-orbit contains a point whose coordinate order
reaches the middle-game range. Hence every orbit is the cage component and
the punctured finite-field action is transitive.
:::

:::proof "good_prime_transitive"
The published source applies Theorem 18 with the exact total degree
$`d=3` for the cleared trace polynomial; historical v1's $`d=4` was a valid looser upper
bound.  The sharper count is $`11d^3+d=300<1000`, but this does not address
the field issue in the external theorem.

The external theorem gives a lower bound on the sum of two multiplicative
orders, so only half that bound is guaranteed for their maximum. Absorb this
constant by decreasing the exponent. The proof must also cover nonsplit
$`\mathbb F_{p^2}` parameters; this is why the exact field in
{uses "rare_prime_torsion_order"}[] is part of its interface.
:::

:::theorem "exceptional_prime_count" (parent := "exceptional_primes") (uses := "good_prime_transitive, rare_prime_torsion_order") (tags := "published-primary, optional-historical")
For every $`\varepsilon>0`, the number of primes $`p\le T` where strong
approximation fails is at most $`T^\varepsilon` for sufficiently large $`T`.
:::
