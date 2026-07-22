import BGS.Blueprint.Chapters.CorvajaZannier
import BGS.Blueprint.Chapters.HasseWeilSummary
import BGS.Markoff.Core.NatConnectivity
import BGS.Markoff.Assembly.Unconditional
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

set_option verso.blueprint.foldCodeBlocks true
set_option verso.blueprint.externalCode.sourceLinkTemplate
  "https://github.com/search?q={module}&type=code"

#docs (Manual) strongApproximationSetup "Markoff surface, natural connectivity, and fiber dynamics" :=
:::::::

:::source_document "bgs-published-selected-route"
%%%
title := "Bourgain--Gamburd--Sarnak, Strong Approximation and Diophantine Properties of Markoff Triples"
kind := .pdf
pdf := "source/MarkoffDiophantine.pdf"
pageRoot := "source"
%%%
:::

The published PDF is the source of record.  The linked line spans come from a
checked semantic reconstruction used for navigation; they are not
author-supplied source.

The principal reference is Bourgain--Gamburd--Sarnak,
[\"Strong Approximation and Diophantine Properties of Markoff
Triples\"](https://doi.org/10.1090/jams/1061), abbreviated BGS below.  The
final divisibility theorem is due to William Chen,
[\"Nonabelian Level Structures, Nielsen Equivalence, and Markoff
Triples\"](https://arxiv.org/abs/2011.12940).  Its formal proof follows Daniel
Martin's later elementary argument,
[\"A New Proof of Chen's Theorem for Markoff
Graphs\"](https://arxiv.org/abs/2502.15960).

The public endpoint is the surjectivity of coordinatewise reduction
$`X(\mathbb N)\to X(\mathbb Z/p\mathbb Z)` for every prime above one explicit
cutoff.  Its finite-field engine is the eventual transitivity statement

$$`
  \exists p_0\;\forall p\ge p_0,\quad
  p\text{ prime}\Longrightarrow
  \Gamma(\mathbb F_p)\text{ is transitive on }X^*(\mathbb F_p).
`

The proof has one straight route.  The classical natural-number descent first
identifies the nonzero part of $`X(\mathbb N)` with the orbit rooted at
$`(1,1,1)`.  On the finite-field side, the opening controls every orbit from
below, the Corvaja--Zannier middle game increases a medium coordinate order,
and the Hasse--Weil endgame reaches and connects the cage.  This produces the
giant orbit of BGS Theorem 1.  Chen's component-divisibility theorem, proved
here by Martin's later elementary argument, then forces the complement of that
giant orbit to be empty for all sufficiently large primes.  The final chapter
makes the cutoff explicit and joins the natural and finite-field orbit
statements through the semiring functor.

The dependency graph records only this route.  Each node below is a
theorem-scale boundary with a completed Lean declaration; technical lemmas
remain available through the linked declaration list without becoming
separate graph branches.

# Markoff surface and goal

:::group "setup"
Functor, connectivity, and action
:::

:::definition "markoff_surface" (parent := "setup") (lean := "BGS.Markoff, BGS.Markoff.MarkoffSurface, BGS.Markoff.PuncturedMarkoffSurface")
For a commutative semiring $`R`, the Markoff surface is

$$`X(R)=
\{(x_1,x_2,x_3)\in R^3:
x_1^2+x_2^2+x_3^2=3x_1x_2x_3\},`

and, for a prime $`p`, $`X^*(\mathbb F_p)` is obtained from
$`X(\mathbb F_p)` by deleting the origin.
:::

:::definition "markoff_semiring_functor" (parent := "setup") (uses := "markoff_surface") (lean := "BGS.Markoff, BGS.Markoff.SemiringMarkoffSurface, BGS.Markoff.markoffEquivSemiringMarkoffSurface, BGS.Markoff.markoffReduction") (tags := "proved-in-lean, functorial") (priority := "high")
Writing the equation without subtraction makes sense over every commutative
semiring.  Coordinatewise application of a semiring homomorphism preserves the
equation, giving the covariant functor

$$`\operatorname{Markoff}:\mathsf{CommSemiring}\longrightarrow\mathsf{Type}.`

The map induced by the natural homomorphism
$`\mathbb N\to\mathbb Z/p\mathbb Z` is

$$`\operatorname{red}_p:
  X(\mathbb N)\longrightarrow X(\mathbb Z/p\mathbb Z).`
:::

:::definition "markoff_action" (parent := "setup") (uses := "markoff_surface") (lean := "BGS.Markoff.vieta1Equiv, BGS.Markoff.vieta2Equiv, BGS.Markoff.vieta3Equiv, BGS.Markoff.MarkoffSurface, BGS.Markoff.PuncturedMarkoffSurface, BGS.Markoff.Gamma, BGS.Markoff.puncturedGammaOrbit")
Over a commutative ring, the three Vieta involutions and the coordinate
permutations act on the Markoff surface.  They generate the Markoff group
$`\Gamma`.  Lean defines this action directly on the surface subtype and
proves that every generator preserves the punctured surface.
:::

:::definition "punctured_markoff_transitivity" (parent := "setup") (uses := "markoff_action") (lean := "BGS.Markoff.PuncturedMarkoffTransitiveAt")
For a prime $`p`, `PuncturedMarkoffTransitiveAt p` means that the Markoff
group has one orbit on $`X^*(\mathbb F_p)`.  This is a statement about the
finite-field action, not the definition of strong approximation.
:::

:::theorem "natural_markoff_connectivity" (parent := "setup") (uses := "markoff_semiring_functor, markoff_action") (lean := "BGS.Markoff.NaturalGamma, BGS.Markoff.SameNatMarkoffComponent, BGS.Markoff.natMarkoff_eq_origin_or_sameComponent_root") (tags := "proved-in-lean, classical-descent, dependency-complete") (priority := "high")
%%%
source := {
  document := "bgs-published-selected-route"
  spans := #[
    {
      page := "1, natural Markoff orbit of the root"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 434
        endLine := 449
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The natural Markoff surface consists of the origin together with the single
component rooted at $`(1,1,1)`.  Here `NaturalGamma` is generated by
the three natural Vieta equivalences and coordinate swaps, and
`SameNatMarkoffComponent` is its orbit relation.  Thus Lean proves

$$`\forall x\in X(\mathbb N),\qquad
  x=(0,0,0)\ \lor\ x\sim_{\Gamma_{\mathbb N}}(1,1,1).`
:::

:::proof "natural_markoff_connectivity"
For a nonzero solution, every coordinate is positive.  Permute its coordinates
to $`a\le b\le c`.  Unless $`(a,b,c)=(1,1,1)`, the third Vieta move replaces
$`c` by $`3ab-c`, and the Markoff equation gives
$`0<3ab-c<c`.  Hence the sum of the coordinates strictly decreases.  A
well-founded induction reaches the root; reversing the moves and coordinate
permutations gives the required orbit relation.  The inequalities are proved
before natural subtraction is used, so no truncated-subtraction case is hidden.
:::

:::definition "strong_approximation_goal" (parent := "setup") (uses := "markoff_semiring_functor, natural_markoff_connectivity, punctured_markoff_transitivity") (lean := "BGS.Markoff.StrongApproximationAt, BGS.Markoff.IsExceptionalPrime, BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt") (priority := "high")
For a modulus $`p`, `StrongApproximationAt p` means that reduction

$$`X(\mathbb N)\longrightarrow X(\mathbb Z/p\mathbb Z)`

is surjective.  When $`p` is prime, natural Markoff connectivity and
compatibility of the moves with reduction identify this statement with
punctured finite-field transitivity.
:::

# Dynamics on conic fibers

:::group "fiber_dynamics"
Fiber dynamics
:::

:::definition "rotation_dynamics" (parent := "fiber_dynamics") (uses := "markoff_action") (lean := "BGS.Markoff.normalizationEquiv, BGS.Markoff.rho, BGS.Markoff.rhoSL, BGS.Markoff.rotationOrder, BGS.Markoff.exists_split_or_quadraticNormOneTrace, BGS.Markoff.rotationOrder_splitTorusTrace, BGS.Markoff.rotationOrder_quadraticNormOneTrace")
After the normalization $`u_i=3x_i`, fixing $`u_1` turns a Markoff move into
the determinant-one matrix

$$`\rho(u_1)=\begin{pmatrix}0&1\\-1&u_1\end{pmatrix}.`

Its order is defined with `orderOf`.  A nonparabolic trace comes from either
the split torus of order $`p-1` or the norm-one torus of order $`p+1`.
:::

:::lemma_ "conic_rotation_orbits" (parent := "fiber_dynamics") (uses := "rotation_dynamics") (lean := "BGS.Markoff.splitFiberEquiv, BGS.Markoff.quadraticNormFiberEquiv, BGS.Markoff.normalizedRotationCycle_card_split, BGS.Markoff.normalizedRotationCycle_card_nonsplit, BGS.Markoff.normalizedRotationCycle_card_of_nonzero_nonparabolic, BGS.Markoff.rotationOrder_two, BGS.Markoff.rotationOrder_neg_two")
The split and nonsplit conic parametrizations identify a rotation cycle with
a cyclic-torus orbit.  Hence its cardinality is the multiplicative order of
the corresponding eigenvalue.  Parabolic and trace-zero fibers are handled
separately in the formal endgame.
:::

:::::::

#docs (Manual) strongApproximationOpening "The opening" :=
:::::::

:::group "opening"
Opening
:::

:::theorem "opening_cyclotomic_bound" (parent := "opening") (uses := "conic_rotation_orbits") (lean := "BGS.Markoff.prime_le_twenty_pow_gammaOrbit_ncard_cube, BGS.Markoff.prime_le_twenty_pow_puncturedGammaOrbit_ncard_cube") (tags := "proved-in-lean, cyclotomic-norm") (priority := "high")
If a punctured orbit has cardinality $`m`, compatible cyclotomic lifts of its
three rotation eigenvalues give

$$`p\le 20^{m^3}.`

Lean supplies the simultaneous lift and norm argument that is implicit in the
paper.
:::

:::theorem "opening_orbit_growth" (parent := "opening") (uses := "opening_cyclotomic_bound") (lean := "BGS.Markoff.everyOrbitLargeAt_one_third, BGS.Markoff.theoremOne_everyOrbitLarge") (tags := "proved-in-lean, theorem-one") (priority := "high")

Consequently every orbit has size at least a positive constant times
$`(\log p)^{1/3}`.  This is the opening estimate used in Theorem 1.
:::

:::::::

#docs (Manual) strongApproximationMiddleGame "The middle game" :=
:::::::

:::group "middle_game"
Middle game
:::

:::definition "weighted_trace_equation" (parent := "middle_game") (uses := "conic_rotation_orbits") (lean := "BGS.Markoff.weightedTraceEquationSolutions, BGS.Markoff.mem_weightedTraceEquationSolutions_iff, BGS.Markoff.weightedSplitTorusTrace_eq_iff_twistedUnitTrace_eq, BGS.Markoff.weightedTraceEquationSolutions_card_le_two_mul_right")
Moving along one conic fiber reduces the search for a larger neighboring
order to the weighted trace equation

$$`\alpha h+\beta h^{-1}=k+k^{-1}.`
:::

:::lemma_ "weighted_trace_geometry" (parent := "middle_game") (uses := "weighted_trace_equation") (lean := "BGS.Markoff.weightedTraceTorusClosurePolynomial, BGS.Markoff.weightedTraceCurve_absolutelyIrreducible, BGS.Markoff.weightedTraceCurve_notSubtorusTranslate_of_weights_ne_zero, BGS.Markoff.diagonalizedFiber_weightedTraceCurve_isCorvajaZannierAdmissible")
For every nonzero nonparabolic Markoff fiber, the weighted trace equation
defines a geometrically irreducible torus curve that is not a translate of a
subtorus.  The subgroup orders are prime to the characteristic, so the powered
coordinate differentials remain nonzero.
:::

:::theorem "divisor_bound" (parent := "middle_game") (lean := "BGS.NumberTheory.eventually_card_divisors_le_rpow, BGS.NumberTheory.exists_threshold_card_divisors_le_rpow")
For every positive exponent, the divisor function is eventually smaller than
the corresponding power.  This controls the number of candidate orders
dividing $`p-1` or $`p+1`.
:::

:::theorem "middle_game_escape" (parent := "middle_game") (uses := "weighted_trace_geometry, corvaja_zannier_existing_markoff_adapter, divisor_bound") (lean := "BGS.Markoff.corvajaZannierWeightedTraceBound, BGS.Markoff.exists_iterate_with_larger_secondRotationOrder_of_weightedTraceBound, BGS.Markoff.exists_threshold_middleGame_reaches_endgame") (tags := "proved-in-lean, dependency-complete") (priority := "high")
Corvaja--Zannier gives a power-saving bound for the weighted trace equation.
After summing over the divisor-sized family of possible smaller orders, fewer
than all points on the current rotation cycle are bad.  One move therefore
strictly increases the maximal coordinate order.  Iteration reaches the
endgame threshold $`p^{1/2+\delta}`.
:::

:::::::

#docs (Manual) strongApproximationEndgame "The endgame" :=
:::::::

:::group "endgame"
Endgame
:::

:::theorem "split_endgame_count" (parent := "endgame") (uses := "conic_rotation_orbits, affine_hasse_weil, divisor_bound") (lean := "BGS.Markoff.exists_weightedSplitTraceWeilBoundAssumption_of_generalHasseWeil, BGS.Markoff.splitTraceCurveSolutions_count_error_le_of_weilBoundAssumption_and_positiveExponents, BGS.Markoff.exists_splitPrimitiveTracePair_of_explicitInequality, BGS.Markoff.exists_threshold_splitFiberPoint_with_primitive_secondTrace") (tags := "proved-in-lean, split") (priority := "high")
The split power-cover equation is geometrically irreducible after the exact
characteristic and exponent obstructions are excluded.  The affine
Hasse--Weil estimate and Moebius inversion then produce a neighboring
primitive split trace.
:::

:::theorem "nonsplit_endgame_count" (parent := "endgame") (uses := "conic_rotation_orbits, affine_hasse_weil, divisor_bound") (lean := "BGS.Markoff.exists_seededNonsplitTraceWeilBoundAssumption_of_generalHasseWeil, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions_count_error_le_of_weilBoundAssumption_and_positiveExponents, BGS.Markoff.exists_existingConicSeedNonsplitPrimitiveTracePair_of_explicitInequality, BGS.Markoff.exists_threshold_quadraticNormFiberPoint_with_primitive_secondTrace") (tags := "proved-in-lean, nonsplit") (priority := "high")
The nonsplit case uses a nondegenerate seed and a descended base-field curve.
The same affine estimate and exact covering multiplicity give a primitive
norm-one trace.  This replaces the malformed uniform nonsplit formula in the
published proof.
:::

:::theorem "large_order_to_cage" (parent := "endgame") (uses := "split_endgame_count, nonsplit_endgame_count") (lean := "BGS.Markoff.exists_threshold_point_with_maximal_secondRotation, BGS.Markoff.exists_threshold_sameComponent_maximalRotation_of_some_largeCoordinate, BGS.Markoff.exists_threshold_largeOrder_to_splitCage") (tags := "proved-in-lean, dependency-complete") (priority := "high")
A point with some coordinate order at least $`p^{1/2+\delta}` is connected to
a point with a primitive trace, hence to the selected split cage.  The proof
separates split, nonsplit, parabolic, and trace-zero fibers.
:::

:::::::

#docs (Manual) strongApproximationCage "The cage" :=
:::::::

:::group "cage"
Cage
:::

:::lemma_ "cage_plane_models" (parent := "cage") (uses := "markoff_surface") (lean := "BGS.Markoff.cagePulledRadicand_squareClasses_independent_ratFunc, BGS.Markoff.cageDiagonalPlanePolynomial_absolutelyIrreducible, BGS.Markoff.cageOffDiagonalPlanePolynomial_absolutelyIrreducible, BGS.Markoff.cageDiagonalPlanePolynomial_hasBidegreeAtMost, BGS.Markoff.cageOffDiagonalPlanePolynomial_hasBidegreeAtMost")
The cage incidence problem is represented by direct diagonal and off-diagonal
plane models.  Square-class independence proves their absolute
irreducibility and avoids the unused general incidence route.
:::

:::theorem "cage_point_count" (parent := "cage") (uses := "cage_plane_models, affine_hasse_weil") (lean := "BGS.Markoff.exists_cagePlanePointEstimate_of_generalHasseWeil, BGS.Markoff.canonicalDiagonalCageRangeEstimate, BGS.Markoff.canonicalOffDiagonalCageRangeEstimate, BGS.Markoff.exists_cageWitnessPointEstimate_of_generalHasseWeil") (tags := "proved-in-lean, dependency-complete") (priority := "high")
Applying the affine Hasse--Weil theorem to the direct models, with exact
covering multiplicities and exceptional-axis corrections, produces a
primitive middle trace between any two maximal fibers.
:::

:::theorem "cage_connected" (parent := "cage") (uses := "cage_point_count, conic_rotation_orbits") (lean := "BGS.Markoff.exists_threshold_primitive_cageMiddleUnit, BGS.Markoff.exists_threshold_splitMaximalFiberBridge, BGS.Markoff.exists_threshold_splitCage_connected") (tags := "proved-in-lean") (priority := "high")
Rotation is transitive on a split-maximal fiber, and the primitive middle
trace bridges any two such fibers.  Therefore the entire selected cage lies
in one $`\Gamma`-component.
:::

:::::::

#docs (Manual) strongApproximationAssembly "Giant orbit and modular transitivity" :=
:::::::

:::group "assembly"
Finite-field assembly
:::

:::theorem "giant_orbit" (parent := "assembly") (uses := "middle_game_escape, large_order_to_cage, cage_connected") (lean := "BGS.Markoff.exists_threshold_middleGame_to_splitCage, BGS.Markoff.concreteLowOrderTraceSet_card_le, BGS.Markoff.puncturedMarkoffPointsWithSmallFirstTwoRotationOrders_card_le, BGS.Markoff.eventually_hasGiantOrbit_of_specializedEstimates") (tags := "proved-in-lean, theorem-one") (priority := "high")
Points outside the cage component have all coordinate orders below a chosen
power of $`p`.  There are only $`O(B^2)` possible traces of order below $`B`,
and at most two Markoff points above each pair of traces.  With a smaller
input exponent this gives a component whose complement has size at most
$`p^\varepsilon`.
:::

:::theorem "theorem_one" (parent := "assembly") (uses := "giant_orbit, opening_orbit_growth") (lean := "BGS.Markoff.TheoremOneStatement, BGS.Markoff.theoremOneStatement") (tags := "proved-in-lean, dependency-complete, theorem-one") (priority := "high")
[BGS, Theorem 1](https://doi.org/10.1090/jams/1061) has two logically distinct
conclusions about the action of $`\Gamma` on $`X^*(\mathbb F_p)`:

1. For every $`\varepsilon>0` there is a threshold $`p_0(\varepsilon)` such
   that, for every prime $`p\ge p_0(\varepsilon)`, some orbit
   $`\mathcal C(p)` satisfies

   $$`
     \bigl|X^*(\mathbb F_p)\setminus\mathcal C(p)\bigr|
       \le p^\varepsilon.
   `

2. There are an absolute constant $`c>0` and a threshold $`p_1` such that,
   for every prime $`p\ge p_1` and every orbit $`\mathcal D(p)`,

   $$`
     |\mathcal D(p)|\ge c(\log p)^{1/3}.
   `

The first assertion says that one connected component contains all but a
sub-polynomial number of points.  The second says that no component can remain
bounded as $`p` grows.  The theorem does not yet say that the action is
transitive; the small complement may still contain other orbits.

The paper writes Vinogradov bounds $`\ll p^\varepsilon` and
$`\gg(\log p)^{1/3}`.  Quantifying over every positive $`\varepsilon` lets the
first implicit constant be absorbed into a larger threshold, giving the exact
coefficient-one inequality displayed above.  This is the quantifier structure
proved by the attached Lean declaration.
:::

:::theorem "chen_orbit_divisibility_via_martin" (parent := "assembly") (uses := "markoff_action") (lean := "BGS.Markoff.pennerWeights, BGS.Markoff.puncturedPennerWeights, BGS.Markoff.puncturedPennerWeight_first_add_vieta1_eq_one, BGS.Markoff.puncturedPennerWeight_second_add_vieta2_eq_one, BGS.Markoff.puncturedPennerWeight_third_add_vieta3_eq_one, BGS.Markoff.card_cast_eq_zero_of_vieta_invariant, BGS.Markoff.prime_dvd_puncturedGammaOrbit_ncard") (tags := "proved-in-lean, chen-theorem, martin-proof") (priority := "high")
[Chen proved](https://arxiv.org/abs/2011.12940) that, for every prime $`p>3`,
every nonempty $`\Gamma`-orbit on $`X^*(\mathbb F_p)` has cardinality
divisible by $`p`.  Lean follows
[Martin's later elementary proof](https://arxiv.org/abs/2502.15960), using
piecewise Penner weights and the three Vieta involutions.
:::

:::theorem "punctured_transitivity_large_primes" (parent := "assembly") (uses := "punctured_markoff_transitivity, theorem_one, chen_orbit_divisibility_via_martin") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_of_hasGiantOrbitAt_and_orbitCard_dvd, BGS.Markoff.eventually_puncturedMarkoffTransitiveAt_of_theoremOneStatement") (tags := "proved-in-lean, dependency-complete, modular-transitivity") (priority := "high")
Fix any $`0<\varepsilon<1`.  Theorem 1 gives a giant orbit whose complement
is eventually smaller than $`p`.  If the complement contained a point, its
whole orbit would lie there; Chen's theorem, through Martin's proof formalized
here, says that this nonempty orbit has at least $`p` points, a contradiction.
Hence the giant orbit is all of $`X^*(\mathbb F_p)` for every sufficiently
large prime.

The Lean endpoint is
`BGS.Markoff.eventually_puncturedMarkoffTransitiveAt_of_theoremOneStatement`,
with conclusion

$$`\exists p_0\;\forall (p:\mathbb N),\quad
  p\text{ prime}\longrightarrow p_0\le p\longrightarrow
  \operatorname{PuncturedMarkoffTransitiveAt}(p).`
:::

:::theorem "strong_approximation_large_primes" (parent := "assembly") (uses := "strong_approximation_goal, punctured_transitivity_large_primes") (lean := "BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt, BGS.Markoff.eventually_strongApproximationAt_of_theoremOneStatement, BGS.Markoff.eventually_strongApproximationAt") (tags := "proved-in-lean, dependency-complete, reduction-surjectivity") (priority := "high")
Natural Markoff connectivity transports the preceding finite-field
transitivity theorem across reduction.  Consequently, for every sufficiently
large prime $`p`, the map

$$`X(\mathbb N)\longrightarrow X(\mathbb F_p)`

is surjective.  This is the strong-approximation statement formalized by
`BGS.Markoff.eventually_strongApproximationAt`.
:::
:::::::

-- `include` resolves a module-like name to Verso's canonical document object.
-- These aliases expose the proof stages above as separate Blueprint chapters.
def strongApproximationSetup.«the canonical document object name» :=
  (_root_.strongApproximationSetup)

def strongApproximationOpening.«the canonical document object name» :=
  (_root_.strongApproximationOpening)

def strongApproximationMiddleGame.«the canonical document object name» :=
  (_root_.strongApproximationMiddleGame)

def strongApproximationEndgame.«the canonical document object name» :=
  (_root_.strongApproximationEndgame)

def strongApproximationCage.«the canonical document object name» :=
  (_root_.strongApproximationCage)

def strongApproximationAssembly.«the canonical document object name» :=
  (_root_.strongApproximationAssembly)
