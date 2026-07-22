import BGS.Blueprint.Chapters.Endgame
import BGS.Algebra.DifferentialWronskian
import BGS.Markoff.MiddleGame.UnionBound
import BGS.Markoff.MiddleGame.CorvajaZannierSourceBound
import BGS.Markoff.MiddleGame.CorvajaZannierStep
import BGS.Markoff.MiddleGame.DivisorRange
import BGS.Markoff.MiddleGame.MoveWiring
import BGS.Markoff.MiddleGame.WeightedTraceEquation
import BGS.Markoff.MiddleGame.CosetTraceEquation
import BGS.Markoff.MiddleGame.CorvajaZannierGeometry
import BGS.Markoff.MiddleGame.CorvajaZannierSeparability
import BGS.Markoff.MiddleGame.WeightedTraceBound
import BGS.Markoff.MiddleGame.CorvajaZannierFromGeneral
import BGS.Markoff.TraceCurve.WeightedIrreducibility
import BGS.Markoff.TraceCurve.WeightedBidegree
import BGS.Markoff.TraceCurve.WeightedNotSubtorus
import BGS.Markoff.MiddleGame.TraceCurveWeights
import BGS.Markoff.MiddleGame.RightSubgroups
import BGS.Markoff.MiddleGame.ParabolicEscape
import BGS.Markoff.Assembly.MiddleGameThenEndgame
import BGS.Markoff.MiddleGame.OrderEscape
import BGS.Markoff.MiddleGame.Diagonalization
import BGS.Markoff.MiddleGame.CorvajaZannierEscape
import BGS.Dynamics.StrictMeasureEscape
import BGS.Markoff.MiddleGame.TraceEquation
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "The middle game" =>

:::group "middle_game"
Order-growth middle game
:::

Power-saving counts force a strictly increasing sequence of coordinate
orders until the endgame applies.

:::definition "trace_equation" (parent := "middle_game") (uses := "trace_curve_equation") (lean := "BGS.Markoff.twistedUnitTrace, BGS.Markoff.traceEquationSolutions, BGS.Markoff.mem_traceEquationSolutions_iff, BGS.Markoff.traceEquationSolutions_card_le_two_mul_right, BGS.Markoff.weightedTraceEquationSolutions, BGS.Markoff.mem_weightedTraceEquationSolutions_iff, BGS.Markoff.weightedSplitTorusTrace_eq_iff_twistedUnitTrace_eq, BGS.Markoff.weightedTraceEquationLeftFiber_card_le_two, BGS.Markoff.weightedTraceEquationSolutions_card_le_two_mul_right, BGS.Markoff.scaledLeftCoset, BGS.Markoff.weightedSplitTorusTrace_eq_twistedUnitTrace_scaled, BGS.Markoff.mem_cosetTraceEquationSolutionsOfWeights_iff, BGS.Markoff.cosetTraceEquationSolutionsOfWeights_card")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "17--18, equation (62)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1022
        endLine := 1034
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For subgroups $`H_1,H_2` of the split torus or the norm-one torus and
$`\sigma\ne1`, count solutions of

$$`h_1+\sigma h_1^{-1}=h_2+h_2^{-1}.`

The nonsplit groups must be norm-one subgroups; arbitrary subgroups of
$`\mathbb F_{p^2}^\times` do not have traces in $`\mathbb F_p`.
:::

:::proof "trace_equation"
Lean defines both the normalized and fully weighted finite solution sets in
arbitrary finite fields.  It proves the elementary estimate $`N\le2|H_2|` by
putting each left fiber inside the roots of a monic quadratic; when
$`\alpha\ne0`, scaling reduces the weighted equation to a monic twisted-trace
polynomial.  This handles bounded $`H_2`; the uniform weighted
Corvaja--Zannier power saving is still the deep input.  Lean also performs the
exact substitution $`g=\alpha h`, proves that the weighted solution set has
the same cardinality as

$$`g+(\alpha\beta)g^{-1}=k+k^{-1},\qquad
g\in\alpha H_1,\quad k\in H_2,`

and retains $`\alpha H_1` as a coset rather than silently treating it as a
subgroup.
:::

:::lemma_ "weighted_trace_curve_cz_hypotheses" (parent := "middle_game") (uses := "trace_equation, rotation_orbit_weighted_trace_from_eigenvalue") (lean := "BGS.Markoff.weightedTraceTorusClosurePolynomial, BGS.Markoff.eval_weightedTraceTorusClosurePolynomial_eq_zero_iff, BGS.Markoff.WeightedTraceCurveAbsolutelyIrreducible, BGS.Markoff.WeightedTraceCurveNotSubtorusTranslate, BGS.Markoff.WeightedTraceCurveIsCorvajaZannierAdmissible, BGS.Markoff.weightedTraceCurve_absolutelyIrreducible, BGS.Markoff.weightedTraceIteratedPolynomial_right_natDegree, BGS.Markoff.weightedTraceIteratedPolynomial_left_natDegree, BGS.Markoff.weightedTraceTorusClosurePolynomial_iteratedBidegree, BGS.Markoff.weightedTraceCurve_notSubtorusTranslate_of_weights_ne_zero, BGS.Markoff.weightedTraceCurve_isCorvajaZannierAdmissible_of_absoluteIrreducible, BGS.Markoff.weightedTraceCurve_isCorvajaZannierAdmissible_of_nondegenerateWeights, BGS.Markoff.weightedTraceCurveTorsionIntersection_orders_primeToCharacteristic, BGS.Markoff.weightedTraceCurveTorsionIntersection_torsionPolynomials_separable, BGS.Markoff.weightedTraceCurveTorsionIntersection_coordinatePowers_haveNonzeroDifferentials, BGS.Markoff.multiplicativeSubgroups_satisfy_weightedTraceBoundOrderHypotheses, BGS.Markoff.splitFiberOrbit_weightedTraceCoefficients_nondegenerate, BGS.Markoff.diagonalizedFiber_weightedTraceCoefficients_nondegenerate, BGS.Markoff.diagonalizedFiber_weightedTraceCurve_isCorvajaZannierAdmissible")
Every weighted trace curve produced by a nonzero nonparabolic Markoff fiber
has nonzero weights, nondegenerate product, absolute irreducibility, and no
translated-subtorus containment.  The actual subgroup orders are positive
and prime to the characteristic; their torsion polynomials are separable and
the powered coordinate differentials remain nonzero.
:::

:::lemma_ "corvaja_zannier_trace_bound" (parent := "middle_game") (uses := "corvaja_zannier_existing_markoff_adapter, weighted_trace_curve_cz_hypotheses") (lean := "BGS.Markoff.weightedTraceCurveTorsionIntersection, BGS.Markoff.mem_weightedTraceCurveTorsionIntersection_iff_polynomial, BGS.Markoff.weightedTraceSubgroupSolutionToCurvePoint_mem_torsionIntersection, BGS.Markoff.weightedTraceEquationSolutions_card_le_curveTorsionIntersection, BGS.Markoff.corvajaZannierCorollaryTwoNumericalBound_bidegree_two_euler_eight_le, BGS.Markoff.corvajaZannierWeightedTraceBound, BGS.Markoff.weightedTraceEquationSolutions_card_cast_le_of_weightedTraceBound") (tags := "proved-in-lean, dependency-complete, selected-middle-game, unconditional-cz-specialization")
The in-repository theorem proves
`WeightedTraceTorsionIntersectionBound` for every finite field.  Lean applies
this internal bound only after the weighted curve and subgroup data satisfy
all displayed hypotheses.  The source numerical conclusion is then bounded by

$$`48\max\{(|H_1||H_2|)^{1/3}, |H_1||H_2|/p\}.`

The specialized premise is produced by the completed Corvaja--Zannier
formalization and its weighted Markoff adapter; it is not an external input.
:::

:::lemma_ "trace_equation_power_saving" (parent := "middle_game") (uses := "trace_equation, rotation_orbit_weighted_trace_from_eigenvalue, corvaja_zannier_trace_bound") (lean := "BGS.Markoff.corvajaZannierCorollaryTwoSafeCoefficient, BGS.Markoff.corvajaZannierTraceUpperBound, BGS.Markoff.weightedTraceEquationSolutions_card_cast_le_of_weightedTraceBound") (tags := "dependency-complete, general-theorem-application, weighted-curve-cz-estimate") (priority := "high")
If $`p^\delta<|H_1|<p^{1-\delta}` and
$`|H_2|\le|H_1|`, then the number of trace-equation solutions is at most
$`C_\delta|H_1|^{\tau}` for some $`\tau<1`. Bounded $`H_2` is handled
separately.
:::

:::proof "trace_equation_power_saving"
The estimate needed by the actual Markoff orbit is the weighted equation
$`\alpha h+\beta h^{-1}=k+k^{-1}` with $`\alpha\beta\ne1`.  Lean now defines
the exact weighted finite solution and support sets.  It maps those solutions
injectively to the torsion intersection of the exact weighted trace curve;
subgroup cardinalities become root-of-unity exponents by Lagrange's theorem.
For every actual nonzero nonparabolic diagonalized Markoff fiber, Lean also
proves both weights are nonzero and their product is not one.
Absolute irreducibility is now proved by an explicit two-variable polynomial
equivalence, an invertible scaling to the Eisenstein birational model, and
Gauss lemma over the coefficient fraction field.  Lean also computes the
two iterated-polynomial coordinate degrees and proves the exact bidegree is
$`(2,2)`.  The non-subtorus condition
is proved over the algebraic closure by
surjectivity of both coordinate projections and their two deck involutions:
any constant character must have both exponents zero.  Thus every actual
nonzero nonparabolic diagonalized Markoff fiber is admissible.  The deep
Corvaja--Zannier specialization also requires nonzero differentials after
raising the coordinates to the subgroup orders.  Lean proves those orders
are prime to the characteristic, the torsion polynomials are separable, and
the powered coordinate differentials stay nonzero.  The lower-level
application theorem consumes the ordinary proposition
`WeightedTraceTorsionIntersectionBound` as a modular internal contract.  On
the selected path that bound is proved by
`BGS.Markoff.corvajaZannierWeightedTraceBound`.  The application and producer
have no `sorry` or custom axiom.
:::

:::lemma_ "bad_order_union_bound" (parent := "middle_game") (uses := "trace_equation_power_saving, divisor_bound_input") (lean := "BGS.Markoff.middleGameCandidateOrders, BGS.Markoff.middleGameCandidateOrders_card_le, BGS.Markoff.exists_threshold_middleGameCandidateOrders_card_le_two_mul_rpow, BGS.Markoff.weightedTraceEquationLeftSupport, BGS.Markoff.weightedBadOrderTraceSupport, BGS.Markoff.weightedBadOrderTraceSupport_card_cast_le_sum, BGS.Markoff.middleGameWeightedBadOrderTraceSupport_card_cast_le_corvajaZannierSum, BGS.Markoff.middleGameWeightedBadOrderTraceSupport_card_cast_le_divisorEnvelope, BGS.Markoff.corvajaZannierTraceUpperBound_le_currentOrderEnvelope, BGS.Markoff.middleGameCorvajaZannierSum_le_divisorCount_mul_envelope, BGS.Markoff.divisorCount_mul_corvajaZannierEnvelope_lt_currentOrder, BGS.Markoff.exists_threshold_middleGameDivisorCount_le_two_mul_rpow, BGS.Markoff.eventually_corvajaZannierDivisorCount_le_rpow, BGS.Markoff.eventually_middleGame_corvajaZannier_sizeBounds")
Summing over all candidate orders $`|H_2|\le|H_1|` dividing $`p-1` or $`p+1`
still gives strictly fewer than $`|H_1|` bad points when $`p` is sufficiently
large.
:::

:::proof "bad_order_union_bound"
Lean defines the candidate orders as the divisors of $`p-1` or $`p+1` not
exceeding $`|H_1|`, and bounds their number using the proved subpolynomial
divisor estimate.  It projects each trace-equation solution set to its left
support and proves both natural-valued and real-valued finite-union bounds.
The Corvaja--Zannier expression

$$`48\max\{(|H_1||H_2|)^{1/3}, |H_1||H_2|/p\}`

is kept visible as the source-backed upstream estimate, not encoded as a
class.  The published coefficient $`20` is recorded separately as an
unsupported sharpening.  Lean now records the exact numerical right-hand
side of Corvaja--Zannier Corollary 2 and proves that its
$`(d_1,d_2,\chi)=(2,2,4)` specialization is bounded by this coefficient-$`48`
envelope.  The coefficient-$`48` estimate is supplied by the proved
weighted-trace Corvaja--Zannier theorem.  The explicit proposition parameter
is retained only inside reusable lower-level combinatorial lemmas.

Lean also bounds the whole sum by $`D` times the current-order envelope, where
$`D=\tau(p-1)+\tau(p+1)`, and proves that the concrete conditions
$`(48D)^3<|H_1|` and $`48D|H_1|<p` force this union to have size strictly less
than $`|H_1|`.

Lean now also proves that, for every fixed $`\delta>0`, both inequalities hold
uniformly for all sufficiently large $`p` and every current order in the range
$`p^\delta<|H_1|<p^{1-\delta}`.  Thus no asymptotic divisor-count step remains
between the weighted Corvaja--Zannier estimate and the finite pigeonhole.
:::

:::lemma_ "abstract_order_escape_pigeonhole" (parent := "middle_game") (uses := "bad_order_union_bound") (lean := "BGS.Markoff.exists_left_element_escaping_weightedCandidateOrders, BGS.Markoff.exists_left_element_escaping_of_weightedCorvajaZannierEstimate_and_sizeBounds, BGS.Markoff.middleGameRightSubgroup_natCard")
If the divisor-counted union of bad trace supports is strictly smaller than
$`H_1`, some left element avoids every candidate right subgroup.
:::

:::proof "abstract_order_escape_pigeonhole"
This is a finite-cardinality argument in Lean: a strict bound on the union
produces an element outside it, and membership in the union is unfolded to
the failure of every displayed trace equation.  Turning this abstract left
element into a Markoff neighbor with larger rotation order is a separate
geometric/dynamical wiring step.
:::

:::lemma_ "order_escape_step" (parent := "middle_game") (uses := "abstract_order_escape_pigeonhole, rotation_orbit_weighted_trace, rotation_orbit_card") (lean := "BGS.Markoff.exists_left_element_escaping_of_weightedCorvajaZannierEstimate_and_sizeBounds, BGS.Markoff.middleGameRightSubgroup_exactCard_and_traceClassification, BGS.Markoff.endgamePowerThreshold_le_rotationOrder_of_parabolicTrace, BGS.Markoff.rotationOrder_zero_le_four, BGS.Markoff.algebraMapNormalizedPoint_iterate_normalizedRotate1, BGS.Markoff.exists_iterate_with_larger_secondRotationOrder_of_diagonalizedFiber, BGS.Markoff.exists_diagonalizedFiberPoint_of_nonzero_nonparabolic, BGS.Markoff.exists_iterate_with_larger_secondRotationOrder_of_nonzero_nonparabolic, BGS.Markoff.exists_iterate_with_larger_secondRotationOrder_of_weightedTraceBound") (tags := "dependency-complete, general-theorem-application") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "18, order-escape argument after equation (62)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1042
        endLine := 1051
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

If the current maximal coordinate order lies between $`p^\delta` and the
endgame threshold, some elementary move produces a point with strictly larger
maximal coordinate order.
:::

:::proof "order_escape_step"
Given the explicit Corvaja--Zannier estimate, Lean produces an element of the
left subgroup avoiding every right subgroup of candidate order and requires
the indispensable identity $`|H_2(d)|=d`.  For the base coset $`s=1`, Lean now
identifies the escaped parameter with an actual Markoff iterate and proves
that the neighboring coordinate has strictly larger rotation order, assuming
the displayed split/nonsplit trace-classification coverage.  Lean now
constructs the canonical $`d`-th-roots-of-unity subgroup in the quadratic
extension, proves its cardinality is exactly $`d`, and proves that every
nonparabolic split or norm-one trace of rotation order $`d` is represented in
it.  The parabolic branch is now closed separately: for
$`\delta\le\frac12`, traces $`2` and $`-2` have orders $`p` and $`2p`, already
above the endgame threshold, and the nonempty fibers have cycles of those
exact cardinalities.  For every nonzero nonparabolic fiber point, Lean
constructs the diagonalized scalar-extension presentation, using the split
equivalence in the split case and the quadratic norm-one equivalence in the
nonsplit case.  It then feeds that presentation directly into the order
escape theorem and returns an actual natural Markoff rotation iterate whose
neighboring coordinate has strictly larger rotation order.  The singular
trace-zero fiber is kept separate and has rotation order at most four.
Consequently no numeric, subgroup-index, classification, coset, parabolic,
diagonalization, or finite-to-geometric shortcut remains.  The theorem takes
one uniform `WeightedTraceTorsionIntersectionBound`, proves admissibility and
all order conditions for each concrete curve, and returns the actual
larger-order iterate.  Absolute irreducibility and exclusion of subtorus
translates are proved from the actual nonzero Markoff weights.
:::

:::lemma_ "middle_game_reaches_endgame_threshold" (parent := "middle_game") (uses := "order_escape_step") (lean := "BGS.exists_reflTransGen_measure_ge, BGS.Markoff.maximalCoordinateRotationOrder, BGS.Markoff.exists_sameNormalizedComponent_firstRotation_eq_maximal, BGS.Markoff.exists_sameNormalizedComponent_maximalOrder_increase_of_middleRange, BGS.Markoff.exists_threshold_middleGame_reaches_endgame") (tags := "selected-middle-game, dependency-complete")
Repeated strict increases terminate because all coordinate orders divide one
of the finite numbers $`p-1`, $`p`, $`p+1`, or twice one of these in a chosen
parabolic convention. The terminal point satisfies the endgame threshold.
:::

:::proof "middle_game_reaches_endgame_threshold"
Lean proves the abstract termination principle without choosing a fake global
successor: if every state below a target admits a relation step with strictly
larger natural-valued measure, then a finite reflexive-transitive chain reaches
the target.  The recursion is on `target - measure`.  Lean then takes the
maximum of the three coordinate rotation orders as the measure, moves a
maximal coordinate into the first position, applies the concrete weighted
Corvaja--Zannier escape step, and composes the resulting Markoff-component
chain.  Thus the terminal point genuinely has maximal coordinate order at
least $`p^{1/2+\delta}`.
:::

:::group "alternative_st_route"
Szemeredi--Trotter alternative
:::

The paper's optional projective Szemeredi--Trotter derivation. It is documented
for completeness but is not a dependency of the
`middle_game_reaches_endgame_threshold` node.

:::lemma_ "st_pair_amplification" (parent := "alternative_st_route") (uses := "trace_equation")
Pairing two trace-equation solutions yields many triples satisfying the
quadratic identity in published equations (64)--(66). Every two-to-one trace map and every
change of variables must contribute an explicit bounded multiplicity; the
source's literal $`T^2` is too strong.
:::

:::lemma_ "st_mobius_transform" (parent := "alternative_st_route") (uses := "st_pair_amplification")
After removing singular parameters, the quadratic identity becomes a
projective linear transformation. The matrix must be
$`\left(\begin{smallmatrix}\alpha&-\beta\\1&-\alpha\end{smallmatrix}\right)`;
the first published display has the opposite sign while the later use has the
correct sign.
:::

:::lemma_ "st_nonconcentration" (parent := "alternative_st_route") (uses := "st_mobius_transform, projective_st_input") (tags := "gap, false-as-written") (effort := "large")
The projective family is not contained in a coset of a proper subgroup, after
all Dickson subgroup classes and singular parameters are handled.
:::

:::proof "st_nonconcentration"
Lines 938--941 use a determinant scalar that does not normalize into
$`\mathrm{SL}_2`. Line 965 claims every proper subgroup has trivial second
commutator, which is false for exceptional subgroups. Line 986's “clearly
generate” assertion is not a proof of the required projective
nonconcentration.
:::

:::proposition "st_trace_equation_power_saving" (parent := "alternative_st_route") (uses := "st_pair_amplification, st_nonconcentration")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "19--21, Proposition 14"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1082
        endLine := 1201
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Once the missing hypotheses and bounded multiplicities are restored, the
projective incidence theorem gives an alternative power-saving estimate for
the trace equation.
:::
