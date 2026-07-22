import BGS.Blueprint.Chapters.Preliminaries
import BGS.Algebra.KummerEigencharacterDescent
import BGS.Markoff.TraceCurve.Characteristic
import BGS.Markoff.TraceCurve.IrreducibilityObstructions
import BGS.Markoff.TraceCurve.Boundary
import BGS.Markoff.TraceCurve.BiprojectiveClosure
import BGS.Markoff.TraceCurve.AffineNormalization
import BGS.Markoff.TraceCurve.ChartLocalization
import BGS.Markoff.TraceCurve.LaurentJacobian
import BGS.Markoff.TraceCurve.LaurentSmooth
import BGS.Markoff.TraceCurve.LaurentNormalization
import BGS.Markoff.TraceCurve.ProjectiveNormalizationCharts
import BGS.Markoff.TraceCurve.ProjectiveNormalizationMorphism
import BGS.Markoff.TraceCurve.ProjectivePointEstimate
import BGS.Markoff.Endgame.PowerCoverCounting
import BGS.Markoff.Endgame.PrimitiveTraceCount
import BGS.Markoff.Endgame.PrimitiveInclusionExclusion
import BGS.Markoff.Endgame.PrimitiveOrbitWiring
import BGS.Markoff.Endgame.Parabolic
import BGS.Markoff.Endgame.LargeOrderToMaximal
import BGS.Markoff.Cage.HasseWeilAssumption
import BGS.Markoff.Cage.WitnessEquations
import BGS.Markoff.Cage.IncidenceGeometry
import BGS.Markoff.Cage.ShiftedTraceCurveIrreducibility
import BGS.Markoff.Cage.Connectivity
import BGS.Markoff.Cage.PulledRadicand
import BGS.Markoff.Cage.PlaneModels
import BGS.Markoff.Cage.PlaneCountComparison
import BGS.Markoff.Cage.EstimateFromPlane
import BGS.Markoff.Endgame.Nonsplit.SeededCover
import BGS.Markoff.TraceCurve.Localization
import BGS.Markoff.TraceCurve.NormalForm
import BGS.Markoff.TraceCurve.SemanticNormalForm
import BGS.Markoff.TraceCurve.SyntacticNormalForm
import BGS.Markoff.TraceCurve.SyntacticDivisionObstruction
import BGS.Markoff.TraceCurve.SyntacticDivisionCriterion
import BGS.Markoff.TraceCurve.LaurentComparisonInjectivity
import BGS.Markoff.TraceCurve.OddCoprimeIrreducibility
import BGS.Markoff.TraceCurve.PositiveCoprimeIrreducibility
import BGS.Markoff.TraceCurve.CommonKummerIndependence
import BGS.Markoff.TraceCurve.OddCommonPrimeIndependence
import BGS.Markoff.TraceCurve.CommonPrimeKummerTower
import BGS.Markoff.TraceCurve.WeightedOddCoprimeIrreducibility
import BGS.Markoff.TraceCurve.Geometry
import BGS.Markoff.TraceCurve.Kummer
import BGS.Markoff.MiddleGame.MoveWiring
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "The endgame and the cage" =>

:::group "endgame"
Large-order endgame
:::

Large coordinate order produces a primitive torus trace and hence reaches the
cage.

:::definition "trace_curve_equation" (parent := "endgame") (uses := "torus_trace_coordinates") (lean := "BGS.Markoff.weightedSplitTorusTrace, BGS.Markoff.SplitTraceCurveEquation, BGS.Markoff.splitTraceCoverPolynomial, BGS.Markoff.eval_splitTraceCoverPolynomial_eq_zero_iff")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12--14, equations (37)--(55)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 813
        endLine := 879
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The split trace equation is

$$`\alpha_1t+\alpha_2t^{-1}=y+y^{-1}.`

Power maps from two multiplicative groups give an explicit covering curve.
This node records only the algebraic torus equation and its cleared affine
polynomial.  The fact that Markoff rotation orbits produce its two weighted
trace coordinates is the separate `rotation_orbit_weighted_trace` node.
:::

:::lemma_ "rotation_orbit_weighted_trace_from_eigenvalue" (parent := "endgame") (uses := "trace_curve_equation, split_fiber_parametrization_from_eigenvalue, nonsplit_fiber_parametrization_from_eigenvalue") (lean := "BGS.Markoff.splitFiberOrbit_secondCoordinate_eq_scaledTwistedTrace, BGS.Markoff.splitFiberOrbit_secondCoordinate_eq_weightedSplitTorusTrace, BGS.Markoff.splitFiberOrbit_weights_mul, BGS.Markoff.exists_iterate_splitFiberPoint_eq_mul_zpowers, BGS.Markoff.algebraMap_quadraticNormFiberOrbit_secondCoordinate_eq_scaledTwistedTrace")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7, weighted coordinates on a split rotation orbit"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 655
        endLine := 677
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    },
    {
      page := "9, Lemma 7"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 718
        endLine := 728
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    },
    {
      page := "12--13, proof of Proposition 10 and equations (29)--(31)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 813
        endLine := 835
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For a split fiber parameterized from $`s`, every point of its rotation orbit
has parameter $`sh` with $`h\in\langle w\rangle`, and its neighboring
coordinate has the weighted form

$$`\alpha h+\beta h^{-1},\qquad \alpha=s,\quad \beta=P(w)/s,\quad
\alpha\beta=P(w).`

The nonsplit fiber satisfies the same identity after scalar extension to the
quadratic field.  This is the dynamical bridge from conic rotation orbits to
the algebraic trace-curve equation.
:::

:::proof "rotation_orbit_weighted_trace_from_eigenvalue"
Lean expands the conic parametrization, proves the weighted identity exactly,
and proves that every subgroup parameter $`h\in\langle w\rangle` is reached by
a natural iterate of the Markoff rotation.  A general orbit is the coset
$`s\langle w\rangle`; it is not the base subgroup unless $`s=1`.
:::

:::lemma_ "rotation_orbit_weighted_trace" (parent := "endgame") (uses := "nonparabolic_trace_eigenvalue_cover, split_fiber_parametrization_from_eigenvalue, nonsplit_fiber_parametrization_from_eigenvalue, rotation_orbit_weighted_trace_from_eigenvalue") (lean := "BGS.Markoff.exists_split_or_nonsplitFiberParameter") (tags := "classification-witness-bridge") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12--14, proof of Proposition 10"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 813
        endLine := 877
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every nonzero split or nonsplit semisimple coordinate, classification
supplies the eigenvalue and conic parameter consumed by the proved
witness-level weighted-orbit formula.
:::

:::proof "rotation_orbit_weighted_trace"
Lean applies the split/nonsplit trace classification and then inverts the
corresponding explicit fiber equivalence.  The result includes an equality
between the original normalized Markoff point and the concrete split or
nonsplit parametrized point; no existential witness is left disconnected.
:::

:::lemma_ "seeded_nonsplit_trace_cover" (parent := "endgame") (uses := "trace_curve_equation, rotation_orbit_weighted_trace_from_eigenvalue") (lean := "BGS.Markoff.SeededNonsplitTraceCoverEquation, BGS.Markoff.algebraMap_seededQuadraticTrace_eq_weightedSplitTorusTrace, BGS.Markoff.seededNonsplitTraceCoverEquation_iff_weightedSplitTraceCover, BGS.Markoff.seededNonsplitWeights_mul, BGS.Markoff.seededNonsplitWeights_nondegenerate, BGS.Markoff.quadraticFiberProduct_ne_one_of_prime_ne_two, BGS.Markoff.existingConicSeed_nonsplitWeights_nondegenerate, BGS.Markoff.existingConicSeed_weightedCover_absolutelyIrreducible, BGS.Markoff.existingConicSeedNonsplitTraceCoverEquation_iff_weightedSplitTraceCover, BGS.Markoff.DegenerateUnseededCountermodel.unseededCountermodel_weights_product_eq_one") (tags := "published-gap, corrected-model, nonsplit-cover") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "13--14, equations (37)--(42)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 847
        endLine := 877
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%
The actual nonsplit cover has a fixed seed $`s` in the norm-$`\kappa(x)`
fibre and a varying norm-one coordinate $`w`:

$$`\operatorname{Tr}(s w^{d_1})=u^{d_2}+u^{-d_2}.`

After extension to $`\mathbb F_{p^2}`, this is exactly the weighted split
cover with weights $`s,s^p`.  Their product is
$`s s^p=\operatorname{Norm}(s)=\kappa(x)\ne1`, so the weights satisfy the
nondegeneracy hypotheses used by the split-cover theorem.
:::

:::proof "seeded_nonsplit_trace_cover"
Lean proves the trace identity, the exact equivalence with the existing
weighted split equation, and the norm and nondegeneracy claims for every seed
in the already-constructed conic norm fibre.  It then applies the established
arbitrary positive-exponent theorem to prove absolute irreducibility of the
resulting weighted polynomial over the quadratic field.  It also retains the tempting
unseeded model as an explicit countermodel: its two weights are $`1,1` and
their product is one.

This correction is mathematically necessary.  The published parametrization
first describes a norm-one subgroup at reconstructed lines 847--848, but the
ellipse at lines 849--851 has norm $`\kappa(x)`, so a seed is missing when the
two are combined.  In addition, the displayed formulas for $`h_n` at lines
857 and 860 have incorrect exponents (the latter even contains a negative
power), and equation (42) counts the unseeded norm-one model rather than the
norm-$`\kappa(x)` torsor.  The subsequent descended-curve nodes construct the
corrected base-field model, prove its absolute irreducibility, and derive its
point estimate; none of those geometric steps is hidden in this semantic
equivalence.
:::

:::lemma_ "normalized_trace_curve_abs_irreducible" (parent := "endgame") (uses := "trace_curve_equation") (lean := "BGS.Markoff.normalizedSplitTrace_birational_change, BGS.Markoff.normalizedSplitTraceBirationalPolynomial_irreducible, BGS.Markoff.normalizedSplitTraceBirationalPolynomial_irreducible_after_baseChange")
For $`\sigma\ne0,1`, the degree-one normalized split trace curve is
absolutely irreducible.
:::

:::proof "normalized_trace_curve_abs_irreducible"
After the birational substitution $`u=x/y`, Lean rewrites the equation as

$$`u(1-u)y^2+\sigma u-1=0.`

Viewed as a polynomial in $`y` over $`K[u]`, this is Eisenstein at
$`\sigma u-1`.  The proof is uniform under every field extension.  This does
not imply irreducibility after adjoining arbitrary $`d`-th and $`e`-th power
roots; that Kummer-cover descent remains the next wall.
:::

:::lemma_ "odd_coprime_trace_power_cover_function_field" (parent := "endgame") (uses := "trace_curve_equation, normalized_trace_curve_abs_irreducible") (lean := "BGS.Markoff.splitTraceBaseKummerPolynomial_irreducible, BGS.Markoff.splitTraceEtaKummerPolynomial_irreducible, BGS.Markoff.splitTraceXiKummerPolynomial_irreducible, BGS.Markoff.splitTraceKummerTower_roots_on_cover, BGS.Markoff.splitTraceOddCoprimeKummerTower_isDomain, BGS.Markoff.splitTraceOddCoprimeKummerTower_isDomain_afterConstantExtension")
For nonzero $`\sigma` and odd coprime covering degrees $`d,e`, the explicit
two-stage Kummer function-field tower is a domain over every extension of the
constant field, and its canonical roots satisfy the exact cleared trace-cover
polynomial.
:::

:::proof "odd_coprime_trace_power_cover_function_field"
Lean writes the base field as $`K(u)(v)` with
$`v^2=(1-\sigma u)/(u(1-u))`.  Norm degrees $`-1` and $`1` prove successively
that $`v` and $`uv` are not the forbidden prime powers, so the two Kummer
polynomials are irreducible.  This is the hard connected-function-field
kernel.  It does not yet identify the tower with a localization of the tensor
base change of the affine coordinate ring; even degrees and noncoprime
degrees also remain open.
:::

:::lemma_ "trace_cover_characteristic_obstruction" (parent := "endgame") (uses := "trace_curve_equation") (lean := "BGS.Markoff.splitTraceCoverPolynomial_frobenius_pullback, BGS.Markoff.splitTraceCoverPolynomial_frobenius_factorization, BGS.Markoff.splitTraceCoverPolynomial_not_irreducible_when_exponents_equal_char, BGS.Markoff.publishedTraceCoverIrreducibility_requiresCharacteristicHypothesis, BGS.Markoff.exists_splitTraceCoverPolynomial_normalized_frobenius_factorization, BGS.Markoff.splitTraceCoverPolynomial_normalized_not_irreducible_when_char_mul_exponents, BGS.Markoff.splitTraceCoverPolynomial_normalized_not_irreducible_when_exponents_equal_char, BGS.Markoff.normalizedTraceCoverIrreducibility_requires_commonCharacteristicExclusion") (tags := "published-gap, counterexample") (priority := "high")
The trace-cover irreducibility statement requires the covering exponents to
be prime to the characteristic.  Without this hypothesis it is false.
:::

:::proof "trace_cover_characteristic_obstruction"
In characteristic $`p`, Lean proves the Frobenius identity

$$`P_{\alpha^p,\beta^p,pd,pe}=P_{\alpha,\beta,d,e}^{,p}.`

Over a perfect field, Lean now proves the stronger normalized statement: for
every $`\sigma`, choose $`\tau^p=\sigma`; then

$$`P_{1,\sigma,pd,pe}=P_{1,\tau,d,e}^{,p}.`

Thus even $`\sigma\ne0,1` does not repair the conclusion when the
characteristic divides both cover degrees.  In the intended application the
cover orders divide $`p-1` or $`p+1`, so the corrected condition is compatible
with the technique.
:::

:::lemma_ "trace_cover_zero_weight_obstruction" (parent := "endgame") (uses := "trace_curve_equation") (lean := "BGS.Markoff.splitTraceCoverPolynomial_zero_second_weight_factorization, BGS.Markoff.splitTraceCoverPolynomial_zero_second_weight_not_irreducible, BGS.Markoff.publishedTraceCoverIrreducibility_requires_nonzero_secondWeight") (tags := "published-gap, counterexample") (priority := "high")
The printed condition that $`\alpha_1,\alpha_2` are merely not both zero is
insufficient.  For $`\alpha_1\ne0`, $`\alpha_2=0`, and $`e>0`, the cleared
polynomial is reducible over every field.
:::

:::proof "trace_cover_zero_weight_obstruction"
Lean proves the exact factorization

$$`P_{\alpha_1,0,d,e}=y^e
  (\alpha_1x^dy^e-x^{2d}-1).`

Both displayed factors are nonunits when $`\alpha_1\ne0` and $`e>0`, so this
is a counterexample already in characteristic zero.  The actual endgame
weights are separately proved nonzero; denominator clearing cannot be used to
extend that application to the zero-weight branch.
:::

:::lemma_ "trace_cover_localization_map" (parent := "endgame") (uses := "trace_curve_equation, odd_coprime_trace_power_cover_function_field") (lean := "BGS.Markoff.splitTracePolynomialToKummerTop_relation, BGS.Markoff.splitTraceAffineToKummerTop, BGS.Markoff.splitTraceAffineToKummerTop_coordinate, BGS.Markoff.splitTraceEtaRoot_pow, BGS.Markoff.splitTraceXiRoot_pow, BGS.Markoff.splitTraceAffineCoordinateProduct_maps_to_isUnit, BGS.Markoff.splitTraceLaurentToKummerTop, BGS.Markoff.splitTraceLaurentToKummerTop_algebraMap_apply, BGS.Markoff.splitTraceLaurentToKummerTop_injective_of_affine_injective")
For odd coprime exponents, the affine trace-cover coordinate ring maps to the
proved Kummer top field by sending its two coordinates to the canonical Kummer
roots.  Their product maps to a unit, so this map extends uniquely to the
Laurent localization away from $`xy`.
:::

:::proof "trace_cover_localization_map"
Lean proves the defining trace-cover polynomial lies in the evaluation
kernel, constructs the affine quotient map, verifies both root-power
equations and nonvanishing, and extends across `Localization.Away (xy)`.  It
also proves that injectivity of the affine map implies injectivity of the
Laurent map.  The exact remaining algebraic wall is therefore kernel equality
for the affine evaluation map: containment of the defining relation has been
proved, but no extra Laurent relation must remain.
:::

:::lemma_ "trace_cover_normal_form_uniqueness" (parent := "endgame") (uses := "trace_cover_localization_map") (lean := "BGS.Markoff.adjoinRootTower_normalMonomials_linearIndependent, BGS.Markoff.splitTraceEtaXiNormalMonomials_linearIndependent, BGS.Markoff.splitTraceEtaXiNormalMonomials_linearIndependent_of_oddCoprime, BGS.Markoff.splitTraceEtaXiNormalForm_evaluation_eq_zero_iff, BGS.Markoff.adjoinRootTowerSemanticNormalForm, BGS.Markoff.splitTraceAffineSemanticNormalForm_evaluation, BGS.Markoff.splitTraceAffineSemanticNormalForm_eq_zero_iff, BGS.Markoff.splitTraceAffineSemanticNormalForm_injective_iff, BGS.Markoff.splitTraceLaurentSemanticNormalForm_evaluation, BGS.Markoff.splitTraceLaurentSemanticNormalForm_injective_iff, BGS.Markoff.splitTraceMonomialNormalIndex, BGS.Markoff.splitTracePolynomialSyntacticNormalForm, BGS.Markoff.splitTraceKummer_monomial_reduction, BGS.Markoff.splitTracePolynomialSyntacticNormalForm_evaluation, BGS.Markoff.splitTraceExplicitNormalFormEvaluation_eq_zero_iff, BGS.Markoff.splitTracePolynomialSyntacticNormalForm_eq_zero_iff, BGS.Markoff.splitTraceAffineToKummerTop_injective_of_syntacticNormalForm_division, BGS.Markoff.splitTraceCoverPolynomial_isRelPrime_coordinateProduct, BGS.Markoff.splitTraceAffineToLaurent_injective, BGS.Markoff.splitTraceAffineToKummerTop_injective_of_laurentInjective, BGS.Markoff.splitTracePolynomialSyntacticNormalForm_division_of_laurentInjective, BGS.Markoff.splitTraceCoverPolynomial_irreducible_of_laurentInjective, BGS.Markoff.splitTracePolynomialSyntacticNormalForm_division_iff_laurentInjective, BGS.Markoff.splitTraceEtaRootInXiField_transcendental, BGS.Markoff.splitTracePolynomial_mem_span_of_cover_irreducible_and_maps_to_zero, BGS.Markoff.splitTraceLaurentToKummerTop_injective_of_coverPolynomial_irreducible, BGS.Markoff.splitTraceLaurentToKummerTop_injective_iff_coverPolynomial_irreducible, BGS.Markoff.splitTraceRecomposeResidueBlocks_polynomial, BGS.Markoff.splitTraceBaseResidueEvaluation_residueBlock, BGS.Markoff.splitTracePolynomialSyntacticNormalForm_division_of_oddCoprime, BGS.Markoff.splitTraceCoverPolynomial_irreducible_of_oddCoprime, BGS.Markoff.not_splitTraceSyntacticNormalForm_division_at_degenerateParameter, BGS.Markoff.not_splitTraceAffineToKummerTop_injective_at_degenerateParameter")
In the two-stage odd-coprime Kummer algebra, the rectangular family
$`\eta^j\xi^i` with $`0\le j<e` and $`0\le i<d` is linearly independent over
the quadratic base function ring.  Hence a bounded normal form evaluates to
zero exactly when every coefficient is zero.
:::

:::proof "trace_cover_normal_form_uniqueness"
Lean proves a generic two-stage `AdjoinRoot` theorem for two monic polynomials
and specializes it to the $`\eta` and $`\xi` Kummer binomials.  This proves the
target-side uniqueness half of affine-map injectivity.  Lean also constructs
semantic rectangular coefficients using the actual two-stage product-basis
`repr`, composes them with the affine and Laurent comparison maps, and proves
exact evaluation compatibility.  Lean now additionally defines source-side
syntactic coefficients, reduces every monomial by explicit Euclidean
quotient and remainder formulas, proves polynomial evaluation compatibility,
and proves that the syntactic coefficient vector vanishes exactly when
evaluation in the Kummer top field vanishes.  From the single explicit
division statement

$$`\operatorname{NF}(f)=0\Longrightarrow
f\in(\text{trace-cover polynomial})`

Lean proves affine-map injectivity.  For $`\sigma\ne0,1` and odd coprime
exponents, Lean now proves that $`xy` is relatively prime to the cleared
cover, so localization away from $`xy` is faithful without assuming
irreducibility.  It follows that the division statement is equivalent to the
single concrete obligation that the explicit Laurent-to-Kummer map is
injective; that injectivity also forces irreducibility of the cleared affine
cover.  Conversely, Lean proves that irreducibility of the cleared cover
forces comparison injectivity: the Kummer $`\eta` coordinate is
transcendental, the cover becomes the minimal polynomial of $`\xi` over
$`K(\eta)`, and Gauss lemma contracts divisibility back to $`K[x,y]`.
Lean now closes this equivalence by decomposing every source polynomial as
$`\sum x^r y^s q_{r,s}(x^d,y^e)`, applying the independently proved
degree-one kernel to each $`q_{r,s}`, and recomposing after power
substitution.  Consequently comparison injectivity, source division, and
cleared-cover irreducibility are all proved in the odd-coprime split range.
The nondegeneracy condition $`\sigma\ne1` is essential rather than
cosmetic: at $`\sigma=1,d=e=1`, Lean exhibits $`xy-1` with zero syntactic
normal form but outside the ideal of the full factored cover, and proves the
affine-to-Kummer map is not injective.
:::

:::lemma_ "positive_split_cover_irreducible" (parent := "endgame") (uses := "trace_cover_normal_form_uniqueness, common_prime_kummer_independence") (lean := "BGS.Markoff.X_pow_sub_C_irreducible_of_sqrt_neg_one, BGS.Markoff.splitTraceEtaKummerPolynomial_irreducible_of_sqrt_neg_one, BGS.Markoff.splitTraceXiRadicand_not_primePower_of_commonPrime, BGS.Markoff.splitTraceXiKummerPolynomial_irreducible_of_primitiveRoot, BGS.Markoff.generalSplitTracePolynomialSyntacticNormalForm_eq_zero_iff, BGS.Markoff.splitTraceRecomposeGeneralResidueBlocks_polynomial, BGS.Markoff.splitTraceBaseResidueEvaluation_generalResidueBlock, BGS.Markoff.generalSplitTracePolynomialSyntacticNormalForm_division, BGS.Markoff.generalSplitTraceKummerTower_cover_maps_to_zero_of_primitiveRoot, BGS.Markoff.splitTraceCoverPolynomial_irreducible_of_primitiveRoot, BGS.Markoff.finTwoSecondVariableScaleEquiv_normalizedCover, BGS.Markoff.map_splitTraceCoverPolynomial, BGS.Markoff.splitTraceCoverPolynomial_absolutelyIrreducible_of_positiveExponents, BGS.Markoff.splitTraceCoverPolynomial_absolutelyIrreducible_of_coprime")
For $`\sigma\ne0,1` and arbitrary positive $`d,e`, including even and
noncoprime degrees, the cleared split trace-cover polynomial is irreducible
over every field containing the required roots of unity.  For the paper's actual nonzero
weights $`\alpha_1,\alpha_2` with $`\alpha_1\alpha_2\ne1`, it is absolutely
irreducible over the ground field after scalar extension to its algebraic
closure whenever $`e` is nonzero in the ground field.  No quotient-domain
assumption is added.
:::

:::proof "positive_split_cover_irreducible"
Lean first proves a composite-binomial criterion valid for even exponents once
$`-1` has a square root.  This first makes both stages of the positive-coprime
Kummer tower fields.  The common-prime eigencharacter and class calculations
above remove coprimality from the second stage.  Lean then rebuilds the rectangular syntactic normal form
without parity hypotheses, reconstructs every polynomial from its residue
blocks, applies the independently proved degree-one kernel to every block,
and obtains exact equality between the affine evaluation kernel and the
principal cover ideal.  The quotient embeds into the Kummer top field, so its
principal ideal is prime and the normalized cover is irreducible.

Over the algebraic closure, Lean additionally chooses $`c` with
$`c^e=\alpha_1` and applies the explicit polynomial-ring automorphism
$`y\mapsto cy`.  It proves the exact identity

$$`P_{1,\alpha_1\alpha_2,d,e}(x,cy)
   =\alpha_1P_{\alpha_1,\alpha_2,d,e}(x,y).`

Both the coordinate change and the scalar factor are units, so normalized
irreducibility transfers to the actual weighted cover.  This closes the
weighted split case in the paper's characteristic range.  The seeded
nonsplit scalar-extension bridge is handled separately below.
:::

:::lemma_ "common_prime_kummer_independence" (parent := "endgame") (uses := "normalized_trace_curve_abs_irreducible") (lean := "BGS.Algebra.kummerPowerBasis_eigenvector_eq_rootMonomial, BGS.Algebra.exists_rootMonomial_of_primePower_mem_base, BGS.Markoff.splitTraceCoordinateProduct_quadraticPresentation_not_isSquare, BGS.Markoff.splitTraceResidualRatio_pow_ne_primePower, BGS.Markoff.RatFunc.X_mul_splitTraceRadicand_eq_residualRatio, BGS.Markoff.splitTrace_X_mul_radicand_pow_ne_primePower_of_not_dvd, BGS.Markoff.splitTraceBaseCoordinates_mixedPower_ne_oddPrimePower, BGS.Markoff.splitTraceXiRadicand_not_primePower_of_commonPrime") (tags := "noncoprime-cover") (priority := "high")
For $`\sigma\ne0,1`, the two degree-one trace-coordinate Kummer classes are
independent modulo every odd prime.  In characteristic different from two,
their exceptional product class is also nonsquare in the quadratic function
field presentation.
:::

:::proof "common_prime_kummer_independence"
Writing $`v^2=R(u)` for the quadratic trace coordinate, Lean identifies the
product class with

$$`uR(u)=\frac{1-\sigma u}{1-u}.`

It proves this rational function is nonsquare by reduced numerator-denominator
coprimality at the prime $`1-\sigma u`, and checks the other two square classes
using exact rational-function degrees.  A general quadratic-extension square
criterion then shows the class remains nonsquare after adjoining $`v`.

For an odd prime $`q`, Lean proves more generally that no nonzero residue power
below $`q` of this rational ratio is a $`q`-th power.  Taking the exact norm of
a hypothetical mixed relation

$$`z^q=(uv)^a v^b`

first forces $`a=b` modulo $`q`; the remaining diagonal class reduces to the
same height-one-prime obstruction.  Thus both odd and two-primary base class
calculations are now explicit.

Lean also proves the generic roots-of-unity descent: in a cyclic Kummer
extension $`F(\eta)` with $`\eta^e=v`, if $`z^q` lies in $`F` for a prime
$`q\mid e`, then

$$`z=c\eta^k,\qquad 0\le k<e,\qquad e\mid qk.`

This follows from the explicit root-scaling automorphism and coefficient
comparison in the Kummer power basis.  Lean now specializes the congruence to
the trace radicands: if $`r=qk/e`, it obtains
$`c^qv^r=uv`, and the odd/two-primary class calculations rule out every
$`0\le r<q`.  This proves the full second Kummer degree even when $`q` divides
both cover exponents.
:::

:::lemma_ "weighted_split_trace_cover_abs_irreducible" (parent := "endgame") (uses := "trace_curve_equation, normalized_trace_curve_abs_irreducible, odd_coprime_trace_power_cover_function_field, trace_cover_localization_map, trace_cover_normal_form_uniqueness, positive_split_cover_irreducible, common_prime_kummer_independence, trace_cover_characteristic_obstruction, trace_cover_zero_weight_obstruction") (lean := "BGS.Markoff.splitTraceCoverPolynomial_absolutelyIrreducible_of_positiveExponents, BGS.Markoff.splitTraceCoverPolynomial_absolutelyIrreducible_of_coprime, BGS.Markoff.splitTraceCoverPolynomial_absolutelyIrreducible_of_oddCoprime") (tags := "algebraic-geometry, split-cover") (effort := "large") (priority := "high")
For positive covering exponents, with the exponent used in the first Kummer
stage nonzero in the field, the weighted split covering curve is
geometrically irreducible when
$`\alpha_1,\alpha_2` are both nonzero and
$`\alpha_1\alpha_2\ne1`.
:::

:::proof "weighted_split_trace_cover_abs_irreducible"
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "14--15, Lemma 11"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 881
        endLine := 933
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Lean now proves the exact clearing identity and the degree-one base curve's
absolute irreducibility.  The published source corrects historical v1's missing
$`y^e` factor and initially uses the correct $`d` translates.  It still
reverts to $`0\le s\le d` on page 15.  More seriously, its printed hypothesis
that the weights are merely not both zero is false for the cleared curve: if
$`\alpha_2=0` and $`e>0`, then $`y^e` is a visible factor.  The statement above
therefore uses the stronger hypothesis actually satisfied in the endgame.
The source also omits the necessary condition that the cover degrees be prime
to the characteristic and does not justify why irreducibility survives
adjoining both power roots.  Lean now supplies that
descent for odd coprime split degrees and constructs the exact affine and
Laurent coordinate-ring maps into the Kummer top field.  Target-side basis
uniqueness and source-side syntactic reduction are complete.  Lean proves
that the affine-to-Laurent localization is faithful and that the missing
quotient-division theorem is equivalent, in the nondegenerate odd-coprime
split case, to injectivity of the Laurent-to-Kummer comparison map.  Lean now
proves that this injectivity is itself equivalent to irreducibility of the
cleared higher-cover polynomial.  The residue-block argument now proves that
irreducibility theorem for every field in the nondegenerate odd-coprime split
case.  The parity-free Kummer and residue-block proof first extends this to all
positive coprime degrees.  Eigencharacter descent and the explicit common-prime
class calculations then remove coprimality as well.  Scalar extension gives
absolute irreducibility for the paper's actual nonzero weights and positive
cover exponents under the visible characteristic condition.  Thus oddness
and coprimality were proof artifacts.  This node is split-only: it is a
completed Lean theorem and no longer inherits the unfinished nonsplit model.
:::

:::lemma_ "seeded_nonsplit_trace_cover_abs_irreducible" (parent := "endgame") (uses := "seeded_nonsplit_trace_cover, weighted_split_trace_cover_abs_irreducible") (lean := "BGS.Markoff.existingConicSeed_weightedCover_absolutelyIrreducible") (tags := "algebraic-geometry, nonsplit-cover") (effort := "large") (priority := "high")
For the corrected seed from the existing nonsplit conic, scalar extension to
$`\mathbb F_{p^2}` turns the endgame curve into a weighted split trace cover
with nonzero weights and product different from one.  Hence its defining
polynomial over the algebraic closure is irreducible for positive exponents
prime to the characteristic.
:::

:::proof "seeded_nonsplit_trace_cover_abs_irreducible"
Lean proves the exact scalar-extended equation, identifies the product of the
two weights with the nontrivial conic invariant, and applies the general
weighted split-cover theorem.  This is the precise irreducibility premise
used by the descended-curve irreducibility transport below.
:::

:::definition "nonsplit_cayley_parametrization" (parent := "endgame") (uses := "seeded_nonsplit_trace_cover") (lean := "BGS.Markoff.quadraticCayleyValue, BGS.Markoff.quadraticCayleyPoint, BGS.Markoff.quadraticCayleyParameterEquiv, BGS.Markoff.quadraticCayleyParameterEquiv_apply, BGS.Markoff.quadraticCayleyValue_pow_add_inv_pow") (tags := "selected-endgame, dependency-complete, nonsplit-cover, explicit-descent") (priority := "high")
The nonsplit norm-one torus minus its identity point is parametrized explicitly
by $`\mathbb F_p`.  Frobenius sends the Cayley value to its inverse, and the
powered trace is represented by a cleared numerator and norm denominator.
:::

:::definition "seeded_nonsplit_descended_plane_curve" (parent := "endgame") (uses := "nonsplit_cayley_parametrization, seeded_nonsplit_trace_cover") (lean := "BGS.Markoff.seededCayleyTraceNumeratorPolynomial, BGS.Markoff.quadraticCayleyNormPolynomial, BGS.Markoff.seededNonsplitDescendedPolynomial, BGS.Markoff.seededNonsplitDescendedPolynomial_hasBidegreeAtMost") (tags := "selected-endgame, dependency-complete, nonsplit-cover, base-field-plane-curve") (priority := "high")
Clearing the Cayley denominator produces an explicit bivariate polynomial over
$`\mathbb F_p` of bidegree at most $`(2d,2e)`.  This is the base-field curve to
which the general affine Hasse--Weil theorem is actually applied.
:::

:::lemma_ "seeded_nonsplit_descended_curve_abs_irreducible" (parent := "endgame") (uses := "seeded_nonsplit_trace_cover_abs_irreducible, seeded_nonsplit_descended_plane_curve") (lean := "BGS.Markoff.cayleyTransport_splitIteratedPolynomial, BGS.Markoff.map_seededNonsplitDescendedPolynomial_irreducible_of_map_splitCover, BGS.Markoff.seededNonsplitDescendedPolynomial_absolutelyIrreducible_of_splitCover") (tags := "selected-endgame, dependency-complete, nonsplit-cover, descent, axiom-clean") (effort := "large") (priority := "high")
The split cover is transported by the genuine Mobius automorphism of the
rational-function coefficient field.  Denominator clearing multiplies by a
unit, the cleared polynomial is primitive, and Gauss descent proves
irreducibility over the polynomial coefficient ring.  Uniqueness of algebraic
closures then returns absolute irreducibility over $`\mathbb F_p`.
:::

:::lemma_ "seeded_nonsplit_descended_count_comparison" (parent := "endgame") (uses := "nonsplit_cayley_parametrization, seeded_nonsplit_descended_plane_curve") (lean := "BGS.Markoff.seededNonsplitDescendedSolutions_card_eq_nonidentity_card, BGS.Markoff.affinePlaneCurveZeros_seededNonsplitDescendedPolynomial_card_eq, BGS.Markoff.seededNonsplitTraceCurveSolutions_card_eq_descended_add_identityBoundary, BGS.Markoff.seededNonsplitIdentityBoundarySolutions_card_le, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions_card_eq_affine_add_identityBoundary") (tags := "selected-endgame, dependency-complete, nonsplit-cover, exact-point-comparison") (priority := "high")
Affine zeros of the descended curve are exactly the nonidentity torus
solutions.  The omitted identity fiber is displayed as a separate univariate
boundary set and has at most $`2e` points; no quadratic-field point count is
substituted for the required base-field count.
:::

:::lemma_ "split_trace_cover_boundary_count" (parent := "endgame") (uses := "trace_curve_equation") (lean := "BGS.Markoff.splitTraceCoverPolynomial_axis_zero_eq_origin, BGS.Markoff.splitTraceCoverPolynomial_nonorigin_has_nonzero_coordinates, BGS.Markoff.torusSplitTraceCoverZeros_card_eq_splitTraceCurveSolutions_card, BGS.Markoff.affineSplitTraceCoverZeros_erase_origin, BGS.Markoff.affineSplitTraceCoverZeros_card_eq_torus_card_add_one")
For positive covering exponents and nonzero second coefficient, the origin is
the unique affine trace-cover zero on either coordinate axis.  Consequently
the affine zero count is exactly the torus zero count plus one, and the torus
zero count is the cardinality of the Laurent trace equation on units.
:::

:::proof "split_trace_cover_boundary_count"
Lean evaluates the cleared polynomial on both axes, proves that every
nonorigin zero has two nonzero coordinates, and constructs the exact finite
solution sets.  Erasing the origin from the affine zero finset gives the torus
zero finset, while a direct equivalence identifies the latter with solutions
of `SplitTraceCurveEquation` on $`K^\times\times K^\times`.  Thus this part of
the projective-boundary bookkeeping is no longer absorbed into an unspecified
error term.
:::

:::lemma_ "split_trace_biprojective_closure" (parent := "endgame") (uses := "split_trace_cover_boundary_count") (lean := "BGS.Markoff.splitTraceBihomogeneousValue, BGS.Markoff.splitTraceBihomogeneousPolynomial, BGS.Markoff.eval_splitTraceBihomogeneousPolynomial, BGS.Markoff.splitTraceBiprojectiveZeros, BGS.Markoff.splitTraceBiprojectiveAffineBoundary, BGS.Markoff.splitTraceBiprojectiveAffineBoundary_eq_corners, BGS.Markoff.splitTraceBiprojectiveAffineBoundary_card, BGS.Markoff.affineSplitTraceCoverZerosEquivBiprojectiveOffBoundary, BGS.Markoff.splitTraceBihomogeneousPolynomial_pderiv_eval_infinity_infinity") (tags := "projective-closure, normalization-exposed") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12--13, equations (30)--(34)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 813
        endLine := 839
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%
The cleared polynomial has an explicit bidegree-$`(2d,2e)` closure in
$`\mathbf P^1\times\mathbf P^1`.  Its affine chart is exactly the existing
cleared affine curve.  Outside $`\mathbf A^1\times\mathbf A^1` it has three
rational corner points; together with the affine origin, these are the four
points outside the original torus chart.
:::

:::proof "split_trace_biprojective_closure"
Lean writes the four-variable bihomogeneous polynomial

$$`
\alpha X_0^dX_1^dY_0^{2e}+\beta X_0^dX_1^dY_1^{2e}
-X_0^{2d}Y_0^eY_1^e-X_1^{2d}Y_0^eY_1^e.
`

Using the canonical affine chart plus infinity for each projective line, it
constructs an explicit equivalence from affine zeros to projective zeros off
the three-point boundary.  This does not finish the geometric step: when
$`d,e>1`, Lean computes every formal partial derivative at the corner
$`(X_0:X_1,Y_0:Y_1)=(1:0,1:0)` and obtains zero.  The raw closure is therefore
singular there.  The published appeal to genus and Weil cannot use this raw
closure directly; it genuinely requires normalization and control of the
branches above the boundary.
:::

:::lemma_ "trace_cover_corner_initial_forms" (parent := "endgame") (uses := "split_trace_biprojective_closure") (lean := "BGS.Markoff.splitTraceBihomogeneousValue_infinity_infinity_weightedScaling, BGS.Markoff.splitTraceBihomogeneousValue_zero_infinity_weightedScaling, BGS.Markoff.splitTraceBihomogeneousValue_infinity_zero_weightedScaling, BGS.Markoff.splitTraceBihomogeneousValue_zero_zero_weightedScaling, BGS.Markoff.splitTraceCornerInitialPolynomial, BGS.Markoff.splitTraceCornerInitialPolynomial_factor_of_commonScaling, BGS.Markoff.exists_splitTraceCornerInitialPolynomial_factor_of_commonScaling, BGS.Markoff.splitTraceCornerInitialPolynomial_eq_prod_factors, BGS.Markoff.splitTraceCornerInitialPolynomial_factors_injective, BGS.Markoff.exists_splitTraceCornerInitialPolynomial_gcd_factorization") (tags := "normalization-gap, local-branches") (priority := "high")
At every projective corner, the weighted local equation has initial form

$$`\gamma x^d-y^e,`

where $`\gamma` is $`\alpha` or $`\beta`.  If the characteristic does not
divide $`g=\gcd(d,e)`, then over an algebraic closure this initial form is a
product of exactly $`g` distinct binomials.
:::

:::proof "trace_cover_corner_initial_forms"
Lean substitutes $`x\mapsto T^e x` and $`y\mapsto T^d y` in all four local
charts and proves the exact decomposition

$$`
T^{de}(\gamma x^d-y^e)+T^{3de}(\text{higher term}).
`

It then chooses a $`g`-th root of $`\gamma` and a primitive $`g`-th root of
unity and factors the initial polynomial into $`g` explicitly indexed,
pairwise distinct binomials.  This is not yet a branch-count theorem for the
normalization: one must still lift the distinct weighted initial factors to
height-one primes in the completed local ring, or construct the integral
closure explicitly.  That lifting is the next genuine normalization wall.
:::

:::lemma_ "weighted_trace_affine_normalization" (parent := "endgame") (uses := "weighted_split_trace_cover_abs_irreducible, split_trace_biprojective_closure") (lean := "BGS.Markoff.WeightedSplitTraceAffineCoordinateRing, BGS.Markoff.weightedSplitTraceAffineCoordinateRing_isDomain, BGS.Markoff.weightedSplitTraceAffineGenericPointMorphism, BGS.Markoff.weightedSplitTraceAffineNormalization, BGS.Markoff.weightedSplitTraceAffineNormalizationToCurve, BGS.Markoff.weightedSplitTraceAffineNormalizationToCurve_isIntegral, BGS.Markoff.weightedSplitTraceAffineNormalization_isIntegral, BGS.Markoff.weightedSplitTraceAffineNormalization_isReduced, BGS.Markoff.weightedSplitTraceGeometricAffineNormalization") (tags := "normalization, affine-chart, optional-weil-proof-route") (priority := "high")
The proved irreducible weighted polynomial defines an integral affine curve.
Its generic point is the spectrum of the fraction field of the coordinate
ring, and the relative integral-closure construction gives an actual affine
normalization with an integral morphism back to the cleared affine curve.
:::

:::proof "weighted_trace_affine_normalization"
Lean turns irreducibility into primality of the principal defining ideal and
hence a domain structure on the quotient coordinate ring.  It constructs the
generic-point morphism

$$`
\operatorname{Spec}(\operatorname{Frac} A)\longrightarrow
\operatorname{Spec}(A)
`

and applies Mathlib's relative normalization.  The resulting scheme is proved
integral and reduced, and the map to $`\operatorname{Spec}(A)` is integral.
The arbitrary-positive-exponent absolute-irreducibility theorem instantiates
this construction over the algebraic closure for the paper's actual weights.

This is not yet the smooth projective normalization needed by Weil: the three
other biprojective charts must be normalized compatibly and glued, and the
points above the four corners must be related to the proved local factors.
:::

:::lemma_ "trace_cover_chart_transitions" (parent := "endgame") (uses := "weighted_trace_affine_normalization") (lean := "BGS.Markoff.splitTraceBihomogeneousValue_zero_zero_chart, BGS.Markoff.splitTraceBihomogeneousValue_infinity_zero_chart, BGS.Markoff.splitTraceBihomogeneousValue_zero_infinity_chart, BGS.Markoff.splitTraceBihomogeneousValue_infinity_infinity_chart, BGS.Markoff.WeightedSplitTraceTorusCurve, BGS.Markoff.weightedSplitTraceTorusCurveLeftInversionEquiv, BGS.Markoff.weightedSplitTraceTorusCurveRightInversionEquiv, BGS.Markoff.weightedSplitTraceGeometricChartNormalizations, BGS.Markoff.WeightedSplitTraceLaurentCoordinateRing, BGS.Markoff.weightedSplitTraceLeftInversionLaurentEquiv, BGS.Markoff.weightedSplitTraceRightInversionLaurentEquiv, BGS.Markoff.weightedSplitTraceRightInversionLaurentMap_inverseComposition, BGS.Markoff.weightedSplitTraceLaurentInversions_commute") (tags := "normalization, localized-transitions, algebraic-cocycle, scheme-gluing-gap") (priority := "high")
The four standard affine charts of the biprojective closure use only two
coordinate rings: the polynomial with weights $`(\alpha,\beta)` and the same
polynomial with weights $`(\beta,\alpha)`.  First-coordinate inversion
preserves the equation, while second-coordinate inversion swaps the weights.
:::

:::proof "trace_cover_chart_transitions"
Lean evaluates the bihomogeneous polynomial in all four charts and proves the
two exact polynomial identities.  On the common torus, it constructs explicit
involutive equivalences implementing $`x\mapsto x^{-1}` and
$`y\mapsto y^{-1}`.  It also constructs the two geometric affine
normalizations required by the two weight orderings.  At coordinate-ring
level, Lean now localizes away from $`xy`, proves both coordinates are units,
shows that the two substitutions kill the appropriate defining ideals, and
uses the localization universal property to construct algebra isomorphisms.
The inverse-composition identities are checked on polynomial generators and
then extended first through the quotient and then through the localization.
The left and right inversions are also proved to commute, closing the
coordinate-ring cocycle square for the four standard charts.

The later normalization-transition node now identifies these localized rings
with principal opens in the affine normalization rings, promotes the maps to
scheme isomorphisms, and transports this cocycle to those concrete overlap
models.  The remaining work after that node is the pullback-level triple-overlap
data required by Mathlib's scheme-gluing structure.
:::

:::lemma_ "trace_cover_laurent_jacobian" (parent := "endgame") (uses := "trace_cover_chart_transitions") (lean := "BGS.Markoff.splitTraceCoverPolynomial_pderiv_zero_eval, BGS.Markoff.splitTraceCoverPolynomial_pderiv_one_eval, BGS.Markoff.weightedSplitTraceLaurentPartialX_eq, BGS.Markoff.weightedSplitTraceLaurentPartialY_eq, BGS.Markoff.weightedSplitTraceLaurentJacobianFactors_span_top, BGS.Markoff.weightedSplitTraceLaurentPartials_span_top") (tags := "normalization, smooth-locus, jacobian") (priority := "high")
Assume that $`2,d,e` are nonzero in the ground field and that
$`\alpha\beta\ne1`.  In the Laurent coordinate ring of the trace cover, the
two formal partial derivatives generate the unit ideal.
:::

:::proof "trace_cover_laurent_jacobian"
Write $`X=x^d` and $`Y=y^e`.  After removing the unit factors from the two
partials, their Jacobian factors are

$$`A=\alpha Y^2+\beta-2XY,
\qquad B=2\alpha XY-X^2-1.`

Lean proves directly in the Laurent coordinate ring that the ideal
$`(A,B)` contains successively $`X^2-1`, $`\alpha XY-1`,
$`\alpha^2Y^2-1`, and finally $`\alpha\beta-1`.  The last element is a unit by
the nondegeneracy hypothesis, so $`(A,B)=(1)`.  Since the removed factors are
$`d x^{d-1}` and $`e y^{e-1}`, they are units under the stated characteristic
conditions, and the actual partials also span the unit ideal.

This closes the substantive Jacobian calculation.  The next node turns it
into a genuine Mathlib smoothness theorem using explicit local presentations.
:::

:::lemma_ "trace_cover_laurent_smooth" (parent := "endgame") (uses := "trace_cover_laurent_jacobian") (lean := "BGS.Markoff.weightedSplitTraceAffineFinitePresentation, BGS.Markoff.weightedSplitTraceLaurentFinitePresentation, BGS.Markoff.weightedSplitTraceAffineXPreSubmersivePresentation_jacobian, BGS.Markoff.weightedSplitTraceAffineYPreSubmersivePresentation_jacobian, BGS.Markoff.weightedSplitTracePartialXCompositePresentation_jacobian_isUnit, BGS.Markoff.weightedSplitTracePartialYCompositePresentation_jacobian_isUnit, BGS.Markoff.weightedSplitTracePartialXLocalization_smooth, BGS.Markoff.weightedSplitTracePartialYLocalization_smooth, BGS.Markoff.weightedSplitTraceLaurent_smooth") (tags := "normalization, smooth-locus, submersive-presentation") (priority := "high")
Under the same nondegeneracy and characteristic hypotheses, the Laurent
trace-cover coordinate ring is a smooth algebra over the ground field.
:::

:::proof "trace_cover_laurent_smooth"
Lean gives the affine hypersurface a finite presentation with two generators
and one relation.  On the first partial's principal open it selects the
$`x`-column of the Jacobian; on the second it selects the $`y`-column.  Each
chart is obtained by composing the hypersurface presentation with the
$`xy`-localization and then the relevant partial-derivative localization.
The resulting Jacobian determinant is a product of three elements that are
units by construction, giving explicit submersive presentations and hence
`Algebra.Smooth` on both principal opens.

The proved unit-ideal equality for the two partials shows that these opens
cover the prime spectrum.  Mathlib's smooth-locus criterion then yields
`Algebra.Smooth` for the full Laurent trace-cover algebra.  Smoothness is no
longer an assumption.  Rather than wait for a missing general
smooth-implies-normal theorem, the next node transports the Laurent chart
maps directly through integral closure in the corresponding fraction fields.
:::

:::lemma_ "trace_cover_laurent_normalization_transitions" (parent := "endgame") (uses := "weighted_split_trace_cover_abs_irreducible, trace_cover_chart_transitions, trace_cover_laurent_smooth") (lean := "BGS.Markoff.weightedSplitTraceAffineCoordinateProduct_ne_zero_of_irreducible, BGS.Markoff.weightedSplitTraceLaurentCoordinateRing_isDomain, BGS.Markoff.integralClosureFractionRingEquiv, BGS.Markoff.integralClosureFractionRingEquiv_coe, BGS.Markoff.fractionRingEquiv_trans, BGS.Markoff.integralClosureFractionRingEquiv_trans, BGS.Markoff.integralClosureAwayEquiv, BGS.Markoff.WeightedSplitTraceAffineNormalizationRing, BGS.Markoff.WeightedSplitTraceLaurentNormalizationRing, BGS.Markoff.weightedSplitTraceAffineNormalizationLaurentOpenEquiv_of_irreducible, BGS.Markoff.weightedSplitTraceAffineNormalizationLaurentOpenSchemeIso_of_irreducible, BGS.Markoff.weightedSplitTraceLeftInversionLaurentNormalizationEquiv, BGS.Markoff.weightedSplitTraceRightInversionLaurentNormalizationEquiv, BGS.Markoff.weightedSplitTraceLaurentNormalizationInversions_commute, BGS.Markoff.weightedSplitTraceLaurentNormalizationInversions_commute_of_irreducible, BGS.Markoff.weightedSplitTraceLeftInversionLaurentNormalizationSchemeIso, BGS.Markoff.weightedSplitTraceRightInversionLaurentNormalizationSchemeIso, BGS.Markoff.conjugatedLeftNormalizationOpenEquiv, BGS.Markoff.conjugatedRightNormalizationOpenEquiv, BGS.Markoff.conjugatedNormalizationOpenInversions_commute, BGS.Markoff.conjugatedLeftNormalizationOpenSchemeIso, BGS.Markoff.conjugatedRightNormalizationOpenSchemeIso, BGS.constantOpenGlueDataAux, BGS.constantOpenGlueData, BGS.constantOpenGlueDataOfCommonTarget, BGS.Markoff.weightedSplitTraceAffineNormalizationSpec, BGS.Markoff.WeightedSplitTraceAffineNormalizationLaurentOpenRing, BGS.Markoff.weightedSplitTraceAffineNormalizationLaurentOpenSpec, BGS.Markoff.weightedSplitTraceAffineNormalizationLaurentOpenImmersion, BGS.Markoff.weightedSplitTraceAffineNormalizationLaurentOpenImmersion_isOpen, BGS.Markoff.weightedSplitTraceLeftAffineNormalizationOpenEquiv_of_irreducible, BGS.Markoff.weightedSplitTraceRightAffineNormalizationOpenEquiv_of_irreducible, BGS.Markoff.weightedSplitTraceLeftAffineNormalizationOpenSchemeIso_of_irreducible, BGS.Markoff.weightedSplitTraceRightAffineNormalizationOpenSchemeIso_of_irreducible, BGS.Markoff.WeightedSplitTraceNormalizationChart, BGS.Markoff.weightedSplitTraceNormalizationChartScheme, BGS.Markoff.weightedSplitTraceNormalizationChartOpen, BGS.Markoff.weightedSplitTraceNormalizationChartOpenImmersion, BGS.Markoff.weightedSplitTraceNormalizationChartOpenIsoCommon, BGS.Markoff.weightedSplitTraceProjectiveNormalizationGlueData, BGS.Markoff.weightedSplitTraceProjectiveNormalization, BGS.Markoff.weightedSplitTraceNormalizationChartMap, BGS.Markoff.weightedSplitTraceNormalizationChartMap_isOpen, BGS.Markoff.weightedSplitTraceNormalizationChartMap_jointly_surjective") (tags := "normalization, integral-closure, principal-open, open-immersion, lifted-cocycle, scheme-gluing, optional-weil-proof-route") (priority := "high")
The explicit Laurent transition maps lift to ring equivalences between the
integral closures in the corresponding fraction fields.  These lifted maps
satisfy the same square cocycle, and therefore induce isomorphisms of the
normalized affine overlap schemes.
:::

:::proof "trace_cover_laurent_normalization_transitions"
First, irreducibility makes each affine chart ring a domain.  Positivity of
$`d,e` and nonvanishing of the parameters rule out the coordinate axes as
components: if the coordinate product vanished in the quotient, primality
would force the defining polynomial to be associated to $`X` or $`Y`;
evaluation at $`(0,1)` or $`(1,0)` gives a contradiction.  Thus the Laurent
localization is also a domain.

For an algebra equivalence $`A\simeq B`, Mathlib extends it to an equivalence
of fraction fields.  Lean uses `IsIntegral.map_of_comp_eq` to prove directly
that this extension carries elements integral over $`A` to elements integral
over $`B`.  Restriction therefore gives an explicit equivalence of integral
closures.  A fraction-ring extensionality argument proves that this
construction respects composition.  Applying it to the two coordinate
inversions lifts the already-proved Laurent cocycle; the concrete `Spec`
construction supplies the corresponding contravariant scheme isomorphisms.

Lean also proves the principal-open comparison itself.  It equips the affine
fraction field with the algebra structure induced from the Laurent
localization, applies Mathlib's theorem that integral closure commutes with
localization, and compares that ambient field with the Laurent ring's
canonical fraction field.  The resulting explicit ring equivalence says that
normalizing first and inverting $`xy` agrees with inverting $`xy` first and
normalizing; its `Spec` isomorphism is the required overlap model.

Finally the normalized Laurent transitions are conjugated by these
principal-open identifications.  Lean proves abstractly that the square
cocycle survives conjugation and produces the corresponding `Spec`
isomorphisms.  Thus the transition maps now live on principal-open models of
the affine normalization rings, rather than on isolated Laurent kernels.

The affine normalization rings and principal-open rings are also packaged as
literal affine schemes.  Their localization maps induce proved open
immersions into the affine normalization charts, and the left and right
transition equivalences induce concrete scheme isomorphisms between those
overlap schemes.

For the four-chart assembly, Lean uses a project-local specialization of
`Scheme.GlueData'`.  Every off-diagonal intersection is the same torus open
inside its chart.  Since the open immersion is a monomorphism, both
projections from its self-pullback are isomorphisms; conjugating by these
projections gives the required pullback transition maps.  Their factorization
and triple cocycle are proved.  Identifying each chart overlap with one common
normalized Laurent scheme then yields the actual four-chart `Scheme.GlueData`,
its glued scheme, open chart maps, and joint surjectivity of those maps.

The same construction is now carried out independently for the raw affine
charts, giving an actual glued biprojective curve.  The normalization map is
connected to this raw model on the difficult overlaps: Lean proves that the
principal-open comparison commutes with the affine raw-to-normalized map, and
that both coordinate inversions commute with the raw-to-normalized Laurent
map.  These are consequences of explicit scalar-tower and integral-closure
naturality calculations, not extra hypotheses.  A reusable descent theorem
for common-open gluing data has also been proved.

This removes the former smooth-implies-normal detour.  The affine and
inversion compatibilities have now been assembled across all four charts and
descended to a global morphism from the glued integral-closure curve to the raw
biprojective curve.  The exposed remaining geometric wall is to prove that
this morphism realizes the projective normalization, relate its explicit
charts to Mathlib's relative normalization, prove the resulting curve proper,
and identify its boundary branches with the already-factored corner initial
forms.  These are two distinct obligations.  Each affine chart morphism is
already integral, but global integrality still requires proving that every
normalized chart is exactly the preimage of its raw target chart, equivalently
that the displayed chart square is a pullback.  Properness then requires the
additional module-finiteness of each integral closure.  Mathlib does not infer
this from integrality and Noetherianity; the available route is a genuine
Noether normalization and finite separable function-field argument.
:::

:::lemma_ "trace_curve_biprojective_normalization_chart_squares" (parent := "endgame") (uses := "trace_cover_laurent_normalization_transitions") (lean := "BGS.specIsoOfRingEquiv, BGS.specMap_two_eq_three_of_comp_eq, BGS.specMap_two_eq_two_of_comp_eq, BGS.constantOpenGlueDataOfCommonTargetMap, BGS.constantOpenGlueDataOfCommonTargetMap_chart, BGS.Markoff.WeightedSplitTraceProjectiveChart, BGS.Markoff.weightedSplitTraceBiprojectiveCurveGlueData, BGS.Markoff.weightedSplitTraceBiprojectiveCurve, BGS.Markoff.weightedSplitTraceProjectiveChartMap, BGS.Markoff.integralClosureFractionRingEquiv_comp_algebraMap, BGS.Markoff.integralClosureAwayMap, BGS.Markoff.integralClosureAwayEquiv_comp_map, BGS.Markoff.weightedSplitTraceRawPrincipalOpenSquare, BGS.Markoff.weightedSplitTraceAffineNormalizationRingSquare, BGS.Markoff.weightedSplitTraceAffineIntegralClosureToCurve, BGS.Markoff.weightedSplitTraceLaurentNormalizationToCurve, BGS.Markoff.weightedSplitTraceAffineNormalizationSquare, BGS.Markoff.weightedSplitTraceLeftLaurentNormalizationRingSquare, BGS.Markoff.weightedSplitTraceRightLaurentNormalizationRingSquare, BGS.Markoff.weightedSplitTraceLeftLaurentNormalizationSquare, BGS.Markoff.weightedSplitTraceRightLaurentNormalizationSquare, BGS.Markoff.weightedSplitTraceRightLaurentNormalizationInverseSquare, BGS.Markoff.weightedSplitTraceFirstInvertedNormalizationSquare, BGS.Markoff.weightedSplitTraceSecondInvertedNormalizationSquare, BGS.Markoff.weightedSplitTraceBothInvertedNormalizationSquare, BGS.Markoff.weightedSplitTraceNormalizationChartToProjectiveChart, BGS.Markoff.weightedSplitTraceNormalizationChartCompatibility, BGS.Markoff.weightedSplitTraceProjectiveNormalizationToBiprojectiveCurve, BGS.Markoff.weightedSplitTraceNormalizationChartMap_toBiprojectiveCurve") (tags := "normalization-map, chart-compatibility, biprojective-gluing") (priority := "high")
The four raw affine equation charts form an actual glued biprojective curve.
On the normalization side, the affine principal-open square and the two
coordinate-inversion naturality squares commute with the canonical
raw-to-integral-closure maps.  The resulting four compatible affine maps
descend to a global morphism from the glued integral-closure curve to the raw
biprojective curve.
:::

:::proof "trace_curve_biprojective_normalization_chart_squares"
The raw chart gluing uses the same common-open construction as the normalized
charts, but with the explicit Laurent coordinate inversions.  For the affine
square, Lean first proves that the two maps into the localized affine
normalization agree by the scalar-tower law, then composes with the proved
integral-closure/localization equivalence.  For each coordinate inversion,
the induced fraction-field equivalence maps the original algebra map to the
algebra map after inversion; restricting to integral closures gives the ring
square, and contravariant `Spec` gives the scheme square.  Reassociating these
three squares handles the four chart cases.  The proved common-open descent
construction then produces the global morphism, together with its restriction
formula on every affine chart.
:::

:::lemma_ "projective_point_count_arithmetic_adapter" (parent := "endgame") (uses := "split_trace_cover_boundary_count") (lean := "BGS.Markoff.splitTraceCurveSolutions_count_error_le_of_projectiveComparison_and_hasse, BGS.Markoff.splitTraceCurveSolutions_count_error_le_sqrt_mul_de_of_projectiveComparison_and_hasse, BGS.Markoff.splitTraceCurveSolutions_count_error_le_sqrt_mul_de_of_projectiveComparison_and_hasseSquare, BGS.Markoff.splitTraceNormalizationBoundaryLabels, BGS.Markoff.projectiveBoundary_card_le_four_mul_de_of_injective_normalizationLabels, BGS.Markoff.splitTraceCurveSolutions_count_error_le_of_normalizationLabels_and_hasse") (tags := "arithmetic-adapter, optional-weil-proof-route")
An explicit equivalence between affine zeros and projective points off a
boundary, together with Hasse, genus, and boundary inequalities, implies the
required torus point estimate.  An injective label into
$`\operatorname{Fin}(4)\times\operatorname{Fin}(\gcd(d,e))` gives the
boundary contribution $`4de`.
:::

:::proof "projective_point_count_arithmetic_adapter"
This is a completed conditional Lean theorem.  Every geometric datum is an
ordinary argument: projective and boundary finsets, the affine-chart
equivalence, the Hasse inequality, and numerical genus and boundary bounds.
It neither constructs the normalization nor assumes that the existing glued
scheme has the required geometry.
:::

:::lemma_ "normalization_boundary_branch_labeling" (parent := "endgame") (uses := "trace_cover_corner_initial_forms, weighted_trace_affine_normalization, trace_cover_laurent_normalization_transitions, trace_curve_biprojective_normalization_chart_squares") (tags := "normalization-gap, boundary-wiring, optional-weil-proof-route") (priority := "high")
The points of the glued normalization above the torus boundary admit an
injective labeling by a projective corner and one of the
$`\gcd(d,e)` factors of that corner's initial form.
:::

:::proof "normalization_boundary_branch_labeling"
Lean already defines the target label space as

$$`\operatorname{Fin}(4)\times\operatorname{Fin}(\gcd(d,e))`

and proves that any actual injection into it bounds the boundary cardinality
by $`4\gcd(d,e)\le4de`.  No cardinality estimate is stored as a field or
assumed directly.  What remains here is exactly to construct the injection:
lift the proved local initial factors to branches of the glued normalization
and prove that every normalized boundary point receives one label.
:::

:::lemma_ "endgame_power_cover_multiplicity" (parent := "endgame") (uses := "trace_curve_equation") (lean := "BGS.Markoff.powerTraceCoverSolutions, BGS.Markoff.powerTraceRangeSolutions, BGS.Markoff.powerTraceCoverEquivSigmaFibers, BGS.Markoff.natCard_powerMapFiber_eq_ker, BGS.Markoff.natCard_powerTraceCoverSolutions, BGS.Markoff.natCard_powerTraceCoverSolutions_of_dvd")
For finite cyclic groups, the number of trace-equation solutions before two
power maps is exactly the product of the two kernel sizes and the number of
solutions on their images.  If the exponents divide the group orders, this
factor is exactly $`de`.
:::

:::proof "endgame_power_cover_multiplicity"
Lean constructs an explicit equivalence between a cover solution and a target
solution together with one element in each power-map fiber.  Every nonempty
fiber of a group homomorphism is explicitly equivalent to its kernel, and the
kernel of the $`d`-th power map on a finite cyclic group has cardinality
$`\gcd(d,|G|)`.  Thus the division by $`e_Hd_K` in published equation (32) is
an exact theorem, not a heuristic multiplicity assertion.
:::

:::lemma_ "weighted_split_trace_curve_point_estimate" (parent := "endgame") (uses := "weighted_split_trace_cover_abs_irreducible, weighted_split_trace_weil_from_general_hasse_weil") (lean := "BGS.Markoff.exists_weightedSplitTraceWeilBoundAssumption_of_generalHasseWeil, BGS.Markoff.splitTraceCurveSolutions_count_error_le_of_weilBoundAssumption, BGS.Markoff.splitTraceCurveSolutions_count_error_le_of_weilBoundAssumption_and_positiveExponents") (tags := "selected-endgame, dependency-complete, general-theorem-application") (priority := "high")
For positive covering degrees $`d,e`, nonzero weights with product different
from one, and the visible characteristic condition, the number of weighted
split torus solutions satisfies

$$`\left|N_{\mathrm{split}}-q\right|
  \le C\sqrt q\,de.`
:::

:::proof "weighted_split_trace_curve_point_estimate"
Lean derives the uniform split Weil-bound parameter by applying the allowed
general affine-plane Hasse--Weil theorem. It proves the concrete polynomial's
geometric irreducibility, bidegree and exact affine/torus point comparison;
positivity and all coefficient hypotheses remain ordinary theorem arguments.
:::

:::lemma_ "seeded_nonsplit_trace_curve_point_estimate" (parent := "endgame") (uses := "seeded_nonsplit_trace_weil_from_general_hasse_weil") (lean := "BGS.Markoff.exists_seededNonsplitTraceWeilBoundAssumption_of_generalHasseWeil, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions, BGS.Markoff.mem_existingConicSeedNonsplitTraceCurveSolutions_iff, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions_count_error_le_of_weilBoundAssumption, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions_count_error_le_of_weilBoundAssumption_and_positiveExponents") (tags := "selected-endgame, nonsplit-cover, dependency-complete, general-theorem-application") (priority := "high")
For the corrected conic seed, the actual base-field solutions on the
norm-one torus times $`\mathbb F_p^\times` satisfy

$$`\left|N_{\mathrm{nonsplit}}-p\right|
  \le C\sqrt p\,de.`
:::

:::proof "seeded_nonsplit_trace_curve_point_estimate"
Lean derives the nonsplit Weil-bound parameter from the proved general affine
Hasse--Weil theorem after proving the descended base-field curve absolutely
irreducible and comparing its affine zeros with the required torus count.
The visible identity boundary contributes at most $`2e` points.
:::

:::lemma_ "weighted_split_trace_power_range_count" (parent := "endgame") (uses := "weighted_split_trace_curve_point_estimate, endgame_power_cover_multiplicity") (lean := "BGS.Markoff.splitTracePowerRangeSolutions, BGS.Markoff.splitTraceCurveSolutionsEquivPowerTraceCoverSolutions, BGS.Markoff.splitTraceCurveSolutions_card_eq_mul_natCard_powerTraceRangeSolutions, BGS.Markoff.rangeCount_error_le_of_coverCount_error_and_exactMultiplicity, BGS.Markoff.splitTracePowerRangeSolutions_count_error_le_of_weilBoundAssumption") (tags := "selected-endgame, dependency-complete") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, equations (32)--(34)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 834
        endLine := 839
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For the two power-map images indexed by $`d,e`, let $`f(d,e)` be the number
of weighted split trace coincidences.  When $`d,e` divide the two cyclic
group orders,

$$`\left|f(d,e)-\frac{q}{de}\right|\le C\sqrt q.`
:::

:::proof "weighted_split_trace_power_range_count"
Lean constructs an equivalence between the trace-curve solution finset and
the generic two-power cover, proves its cardinality is exactly $`de` times
the power-range count, and divides both the main term and the Weil error by
this positive factor.  This is the complete formal passage from published
equations (32)--(33) to equation (34).
:::

:::lemma_ "seeded_nonsplit_trace_power_range_count" (parent := "endgame") (uses := "seeded_nonsplit_trace_curve_point_estimate, endgame_power_cover_multiplicity") (lean := "BGS.Markoff.existingConicSeedNonsplitTorusTrace, BGS.Markoff.existingConicSeedNonsplitPowerRangeSolutions, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutionsEquivPowerTraceCoverSolutions, BGS.Markoff.existingConicSeedNonsplitTraceCurveSolutions_card_eq_mul_natCard_powerTraceRangeSolutions, BGS.Markoff.existingConicSeedNonsplitPowerRangeSolutions_count_error_le_of_weilBoundAssumption") (tags := "selected-endgame, nonsplit-cover, dependency-complete") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "14, nonsplit reduction to the hyperbolic count"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 869
        endLine := 877
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The identical exact quotient for the corrected seeded nonsplit equation gives

$$`\left|f_{\mathrm{nonsplit}}(d,e)-\frac{p}{de}\right|
  \le C\sqrt p.`

Here the range is inside the norm-one torus times the base-field unit group.
:::

:::proof "seeded_nonsplit_trace_power_range_count"
Lean proves the equivalence on the actual base-field solution finset and uses
cyclicity of both groups to compute both power-map kernels.  Consequently the
quadratic scalar extension used for irreducibility does not alter the count.
:::

:::lemma_ "cyclic_primitive_trace_moebius_inversion" (parent := "endgame") (uses := "endgame_power_cover_multiplicity") (lean := "BGS.Markoff.powMonoidHom_range_eq_ker_complementaryExponent, BGS.Markoff.powMonoidHom_range_eq_zpowers_of_complementaryOrder, BGS.Markoff.traceRelationPairs, BGS.Markoff.traceExactOrderSolutions, BGS.Markoff.tracePowerKernelSolutions, BGS.Markoff.sum_traceExactOrderSolutions_card_eq_tracePowerKernelSolutions_card, BGS.Markoff.moebius_sum_tracePowerKernelSolutions_card_eq_traceExactOrderSolutions_card, BGS.Markoff.powerTraceRangeSolutionsEquivTracePowerKernelSolutions, BGS.Markoff.moebius_sum_powerTraceRangeSolutions_card_eq_traceExactOrderSolutions_card, BGS.Markoff.abs_moebius_weighted_sum_sub_le_divisors_card_mul, BGS.Markoff.traceExactOrderSolutions_card_error_le_moebiusMain") (tags := "selected-endgame, inclusion-exclusion, cyclic-group") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, equation (35)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 840
        endLine := 842
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For any trace relation with its right coordinate in a finite cyclic group,
the number of solutions whose right coordinate has full order is exactly the
Möbius-weighted sum of the counts on the right power-map images.
:::

:::proof "cyclic_primitive_trace_moebius_inversion"
Lean partitions relation pairs by the exact order of the right coordinate,
applies Mathlib's Möbius inversion theorem, and proves that for $`d\mid n`
the subgroup $`\operatorname{range}(x\mapsto x^d)` is exactly
$`\ker(x\mapsto x^{n/d})`.  Summing the individual $`O(\sqrt p)` errors
costs at most $`\tau(n)` times that error.
:::

:::lemma_ "primitive_trace_asymptotic_inequality" (parent := "endgame") (uses := "divisor_bound_input") (lean := "BGS.Markoff.primitiveTraceMoebiusMainTerm, BGS.Markoff.sum_moebius_mul_complementaryDivisor_eq_totient, BGS.Markoff.primitiveTraceMoebiusMainTerm_eq_totient, BGS.Markoff.le_totient_mul_card_divisors, BGS.Markoff.fieldCard_div_fixed_mul_divisors_le_primitiveTraceMoebiusMainTerm, BGS.Markoff.divisorsError_lt_primitiveTraceMoebiusMainTerm_of_explicitInequality, BGS.Markoff.eventually_endgamePrimitiveTrace_explicitInequality, BGS.Markoff.exists_threshold_endgamePrimitiveTrace_explicitInequality, BGS.Markoff.orbitExponent_le_rpow_of_mul_order_eq_card_sub_one, BGS.Markoff.exists_threshold_endgamePrimitiveTrace_explicitInequality_of_largeOrder, BGS.Markoff.orbitExponent_le_two_mul_rpow_of_mul_order_eq_card_add_one, BGS.Markoff.exists_threshold_endgamePrimitiveTrace_explicitInequality_of_largeNonsplitOrder") (tags := "selected-endgame, inclusion-exclusion, asymptotic") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, equation (36) and the paragraph following it"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 843
        endLine := 845
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every fixed $`C` and $`\delta>0`, sufficiently large $`p` satisfy

$$`e\,\tau(p-1)^2C\sqrt p<p`

uniformly whenever $`e\,|H|=p-1` and
$`|H|\ge p^{1/2+\delta}`.
:::

:::proof "primitive_trace_asymptotic_inequality"
Lean proves $`p-1\le\varphi(p-1)\tau(p-1)`, applies the formal
subpolynomial divisor bound with exponent $`\delta/8`, and absorbs the fixed
constant by a strict real-power comparison.  It also derives
$`e\le p^{1/2-\delta}` from $`e|H|=p-1` rather than assuming that upper
bound separately.
:::

:::lemma_ "split_primitive_trace_inclusion_exclusion" (parent := "endgame") (uses := "weighted_split_trace_power_range_count, cyclic_primitive_trace_moebius_inversion, primitive_trace_asymptotic_inequality") (lean := "BGS.Markoff.splitPrimitiveTraceSolutions, BGS.Markoff.splitPrimitiveTraceSolutions_card_error_le_of_weilBoundAssumption, BGS.Markoff.exists_splitPrimitiveTracePair_of_explicitInequality") (tags := "selected-endgame, inclusion-exclusion, dependency-complete") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, equations (35)--(36)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 840
        endLine := 845
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For fixed split orbit exponent $`e_H`, a primitive trace pair exists whenever

$$`e_H\,\tau(p-1)^2 C\sqrt p<p.`

The Möbius main term is proved equal to
$`p\varphi(p-1)/(e_H(p-1))`; no totient estimate is assumed.
:::

:::proof "split_primitive_trace_inclusion_exclusion"
Lean combines equation (34) with the exact Möbius identity, proves the
elementary bound $`p-1\le\varphi(p-1)\tau(p-1)`, and extracts an actual pair
whose split coordinate has order $`p-1` from the resulting positive finite
set.  The displayed inequality is the remaining numerical premise.
:::

:::lemma_ "nonsplit_primitive_trace_inclusion_exclusion" (parent := "endgame") (uses := "seeded_nonsplit_trace_power_range_count, cyclic_primitive_trace_moebius_inversion, primitive_trace_asymptotic_inequality") (lean := "BGS.Markoff.existingConicSeedNonsplitPrimitiveTraceSolutions, BGS.Markoff.existingConicSeedNonsplitPrimitiveTraceSolutions_card_error_le_of_weilBoundAssumption, BGS.Markoff.exists_existingConicSeedNonsplitPrimitiveTracePair_of_explicitInequality") (tags := "selected-endgame, inclusion-exclusion, nonsplit-cover, dependency-complete") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "14, nonsplit inclusion-exclusion conclusion"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 869
        endLine := 877
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For the corrected seeded nonsplit orbit, the same explicit inequality with
its norm-one orbit exponent produces a primitive base-field trace pair.
:::

:::proof "nonsplit_primitive_trace_inclusion_exclusion"
The finite set is defined on the norm-one power image times
$`\mathbb F_p^\times`, and Lean extracts a right coordinate of exact order
$`p-1`.  No quadratic-field point is counted as a base-field solution.
:::

:::lemma_ "primitive_trace_power_range_orbit_transport" (parent := "endgame") (uses := "rotation_orbit_weighted_trace_from_eigenvalue, cyclic_primitive_trace_moebius_inversion") (lean := "BGS.Markoff.exists_pow_eq_of_mem_complementaryPowerRange, BGS.Markoff.exists_iterate_splitFiberPoint_eq_of_mem_complementaryPowerRange, BGS.Markoff.exists_iterate_quadraticNormFiberPoint_eq_of_mem_complementaryPowerRange") (tags := "selected-endgame, orbit-wiring, cyclic-group") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, orbit parametrization preceding equations (29)--(35)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 813
        endLine := 842
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    },
    {
      page := "13--14, nonsplit parametrization and inclusion-exclusion"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 847
        endLine := 877
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The image of the complementary power map used by the point count is exactly
the cyclic subgroup generated by the rotation eigenvalue.  Consequently each
split or nonsplit parameter returned by the primitive count is an actual
forward iterate of the starting conic point.
:::

:::proof "primitive_trace_power_range_orbit_transport"
Lean first proves equality of the two subgroups by order and cardinality in a
finite cyclic group.  It then extracts a natural power of the eigenvalue and
substitutes it into the already-proved split and nonsplit iterate formulas.
:::

:::lemma_ "primitive_split_trace" (parent := "endgame") (uses := "split_fiber_parametrization_from_eigenvalue, split_primitive_trace_inclusion_exclusion, primitive_trace_power_range_orbit_transport") (lean := "BGS.Markoff.exists_iterate_splitFiberPoint_with_primitive_secondTrace, BGS.Markoff.exists_threshold_splitFiberPoint_with_primitive_secondTrace")
If a split coordinate rotation has order at least
$`p^{1/2+\delta}`, some point on its orbit has another coordinate whose
eigenvalue generates $`\mathbb F_p^\times`.

Lean instantiates the weights and complementary exponent from the split
fiber, discharges nondegeneracy and characteristic hypotheses, applies the
primitive count, and transports the returned parameter to an actual forward
rotation iterate.
:::

:::lemma_ "primitive_nonsplit_trace" (parent := "endgame") (uses := "nonsplit_fiber_parametrization_from_eigenvalue, seeded_nonsplit_trace_cover, nonsplit_primitive_trace_inclusion_exclusion, primitive_trace_power_range_orbit_transport") (lean := "BGS.Markoff.existingConicSeedNonsplitTorusTrace_eq_quadraticNormFiberPoint_u2, BGS.Markoff.exists_iterate_quadraticNormFiberPoint_with_primitive_secondTrace, BGS.Markoff.exists_threshold_quadraticNormFiberPoint_with_primitive_secondTrace")
If a nonsplit coordinate rotation has order at least
$`p^{1/2+\delta}`, some point on its orbit has another coordinate whose
eigenvalue generates $`\mathbb F_p^\times`.

Here the large starting orbit lies in the norm-one torus, but the primitive
coordinate produced in published equations (37)--(42) is a base-field unit.
Lean proves that the seeded algebraic trace is exactly the second coordinate
of the base-field conic point, uses the separate $`p+1` complementary-exponent
asymptotic, and transports the primitive pair to an actual rotation iterate.
:::

:::lemma_ "endgame_parabolic" (parent := "endgame") (uses := "parabolic_fibers") (lean := "BGS.Markoff.exists_iterate_parabolicTwoPoint_with_primitive_secondTrace, BGS.Markoff.exists_iterate_parabolicNegTwoPoint_with_primitive_secondTrace, BGS.Markoff.exists_iterate_parabolicPoint_with_primitive_secondTrace, BGS.Markoff.exists_iterate_parabolicPoint_with_maximal_secondRotation")
Every nonempty parabolic fiber satisfying the large-order hypothesis reaches
a primitive torus trace by an explicit calculation on its affine lines.
:::

:::proof "endgame_parabolic"
Lean extracts a square root of $`-1` directly from the given parabolic point.
The closed iterate formulas show that the line parameter runs through all of
$`\mathbb F_p`, so it can be chosen to equal the trace of a generator of
$`\mathbb F_p^\times`.
:::

:::proposition "large_order_to_maximal" (parent := "endgame") (uses := "rotation_orbit_weighted_trace, primitive_split_trace, primitive_nonsplit_trace, endgame_parabolic") (lean := "BGS.Markoff.exists_threshold_nonparabolicPoint_with_primitive_secondTrace, BGS.Markoff.exists_threshold_nonparabolicPoint_with_maximal_secondRotation, BGS.Markoff.exists_threshold_point_with_maximal_secondRotation, BGS.Markoff.exists_threshold_sameComponent_maximalRotation_of_large_firstCoordinate, BGS.Markoff.exists_threshold_sameComponent_maximalRotation_of_some_largeCoordinate")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12--14, Proposition 10"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 810
        endLine := 879
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

A point with some coordinate order at least $`p^{1/2+\delta}` is connected to
a point with a primitive split or nonsplit coordinate trace.
:::

:::proof "large_order_to_maximal"
Lean separates the semisimple, parabolic, and trace-zero cases.  The
trace-zero rotation has order at most four and is excluded by the large-order
hypothesis for sufficiently large $`p`.  Coordinate swaps reduce any of the
three possible large coordinates to the proved first-coordinate theorem, and
the swaps and rotation iterates are composed inside
`SameNormalizedComponent`.
:::

:::group "cage"
Primitive-trace cage
:::

The primitive-trace region and its connected component.

:::definition "maximal_trace" (parent := "cage") (uses := "coordinate_order") (lean := "BGS.Markoff.IsSplitMaximalTrace")
For the selected cage core, a normalized value is split-maximal when its
rotation has exact order $`p-1`.  This is the trace type produced by the
formalized endgame.  The paper's broader cage also includes norm-one traces
of order $`p+1`; that enlargement is not needed for Theorem 1.
:::

:::definition "cage_set" (parent := "cage") (uses := "maximal_trace, original_markoff_surface") (lean := "BGS.Markoff.normalizedCoordinateAt, BGS.Markoff.IsInSplitCage")
The selected split cage is the set of normalized Markoff points with at least
one split-maximal coordinate trace.
:::

:::lemma_ "normalized_cage_base_incidence_geometry" (parent := "cage") (uses := "maximal_trace, incidence_aux_geometry") (lean := "BGS.Markoff.NormalizedIncidenceAux, BGS.Markoff.IncidenceAuxEquationWitness, BGS.Markoff.normalizedIncidenceAux_iff_incidenceAux_div_three, BGS.Markoff.cageIncidenceEquationWitnessScaleEquiv, BGS.Markoff.NormalizedCageIncidenceCoordinateRing, BGS.Markoff.NormalizedCageIncidenceGeometricallyIntegral, BGS.Markoff.splitMaximalTrace_ne_zero, BGS.Markoff.splitMaximalTrace_sq_ne_four, BGS.Markoff.normalizedCageIncidence_offDiagonal_geometricallyIntegral") (tags := "optional-cage-route, locally-formalized, witness-preserving, geometric-integrality, off-diagonal") (priority := "medium")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "15--16, equations (56)--(58)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 941
        endLine := 968
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For the canonical pair of cage axes, division by three in every retained
coordinate gives a witness-preserving equivalence between the normalized
quadratic equations

$$`(\xi^2-4)y^2-\lambda^2=4\xi^2,\qquad
   (\eta^2-4)y^2-\mu^2=4\eta^2`

and the already-formalized original-coordinate incidence curve.  For
split-maximal $`\xi,\eta` with $`\xi^2\ne\eta^2`, the base incidence curve is
therefore geometrically integral.  The proof derives the nonzero and
nonparabolic coefficient conditions from split maximality.
:::

:::proof "normalized_cage_base_incidence_geometry"
Lean proves the scalar equation equivalence, packages it as an equivalence of
witness-bearing point types, and then applies the existing biquadratic
coordinate-ring theorem after checking every scaled coefficient.  This node
does not include the pullback along $`t\mapsto t^d+t^{-d}`; that is the
remaining Kummer tower after the trace-quadratic node below.
:::

:::lemma_ "cage_trace_quadratic_irreducible" (parent := "cage") (uses := "normalized_cage_base_incidence_geometry") (lean := "BGS.Markoff.cageTraceBranchPolynomial, BGS.Markoff.traceRootPolynomial, BGS.Markoff.traceRootPolynomial_irreducible_of_discriminant_not_isSquare, BGS.Markoff.cageTraceBranchPolynomial_separable, BGS.Markoff.incidenceBranchPolynomial_cageTrace_linearCombination, BGS.Markoff.incidenceBranchPolynomial_isCoprime_cageTrace, BGS.Markoff.cageTraceBranchSquareClasses_independent_ratFunc, BGS.Markoff.incidenceBiquadraticTraceBranch_not_isSquare, BGS.Markoff.incidenceBiquadraticNormalizedTrace, BGS.Markoff.incidenceBiquadraticNormalizedTrace_discriminant_not_isSquare, BGS.Markoff.incidenceBiquadraticTraceRootPolynomial, BGS.Markoff.incidenceBiquadraticTraceRootPolynomial_irreducible, BGS.Markoff.IncidenceTraceFunctionField, BGS.Markoff.incidenceTraceRoot, BGS.Markoff.incidenceTraceRoot_quadratic_relation") (tags := "optional-cage-route, locally-formalized, shifted-cover, square-class-independence, trace-quadratic") (priority := "medium")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "16--17, Lemma 12 and branch points"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 974
        endLine := 1003
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Let $`y` be the original common incidence coordinate.  In the off-diagonal
biquadratic incidence function field, the discriminant $`9y^2-4` of

$$`R^2-(3y)R+1`

remains nonsquare.  Hence this trace quadratic is irreducible, and its
canonical root defines a genuine quadratic extension satisfying the displayed
trace relation.
:::

:::proof "cage_trace_quadratic_irreducible"
Lean proves that $`9y^2-4` is separable and coprime to each of the two
incidence branch polynomials using an explicit Bezout constant $`16`.  The
four square classes obtained by multiplying it by either incidence class are
nonsquares in $`K(y)`.  Applying the proved quadratic-extension preservation
lemma twice shows that the discriminant remains nonsquare in the exact
biquadratic field presentation.  A domain-level discriminant argument then
proves the trace quadratic irreducible and constructs its canonical
`AdjoinRoot` extension.
:::

:::lemma_ "cage_pulled_radicand_geometry" (parent := "cage") (uses := "maximal_trace") (lean := "BGS.Markoff.cagePulledRadicand, BGS.Markoff.cagePulledRadicand_separable, BGS.Markoff.cagePulledRadicand_isCoprime") (tags := "selected-cage-route, dependency-complete, pulled-radicand") (priority := "high")
For every positive covering exponent, the explicit pulled radicands are
squarefree; radicands associated to distinct squared traces are coprime.
The nonzero and nonparabolic coefficient conditions come from split maximality.
:::

:::lemma_ "cage_pulled_square_class_independence" (parent := "cage") (uses := "cage_pulled_radicand_geometry") (lean := "BGS.Markoff.cagePulledRadicand_squareClasses_independent_ratFunc") (tags := "selected-cage-route, dependency-complete, square-class-independence") (priority := "high")
The three nontrivial products of the two radicand classes are nonsquares in
the rational-function field.  This is the exact algebraic input needed for
the off-diagonal biquadratic plane model.
:::

:::lemma_ "direct_cage_plane_models_abs_irreducible" (parent := "cage") (uses := "cage_pulled_square_class_independence") (lean := "BGS.Markoff.biquadraticPrimitiveQuartic_irreducible, BGS.Markoff.cageDiagonalPlanePolynomial_absolutelyIrreducible, BGS.Markoff.cageOffDiagonalPlanePolynomial_absolutelyIrreducible, BGS.Markoff.cageDiagonalPlanePolynomial_hasBidegreeAtMost, BGS.Markoff.cageOffDiagonalPlanePolynomial_hasBidegreeAtMost") (tags := "selected-cage-route, dependency-complete, algebraic-geometry, direct-plane-model, square-class-independence") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "16--17, Lemma 12"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 974
        endLine := 1009
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

After pulling the common trace back along $`t\mapsto t^d+t^{-d}` and clearing
denominators, the two retained incidence equations have radicands

$$`F_\xi(t)=(\xi^2-4)(t^{2d}+1)^2-4\xi^2t^{2d}.`

Lean proves each radicand squarefree, proves distinct-square radicands
coprime, and proves the three relevant square classes independent in
$`\overline{\mathbb F}_p(t)`.  The diagonal model is $`L^2=F_\xi(t)`; the
off-diagonal model is the primitive quartic

$$`(S^2-F_\xi-F_\eta)^2-4F_\xi F_\eta=0.`

Both displayed plane polynomials are absolutely irreducible with explicit
bidegrees $`(2,4d)` and $`(4,8d)`.  This direct model replaces the unused
trace-root Kummer route in the selected dependency graph.
:::

:::lemma_ "tame_trace_fiber_product_point_estimate" (parent := "cage") (uses := "cage_point_estimate_from_general_hasse_weil") (lean := "BGS.Markoff.CageMiddleWitnessPair, BGS.Markoff.cageMiddleWitnessPowerRangeSolutions, BGS.Markoff.CageWitnessPointEstimate, BGS.Markoff.exists_cageWitnessPointEstimate_of_generalHasseWeil") (tags := "dependency-complete, witness-bearing-count, general-theorem-application, cage-specific") (effort := "large") (priority := "high")
The rational-point count for the cage fiber product has main term $`mp` for
a positive geometric component multiplicity $`m` and an error controlled by
its covering degrees and $`\sqrt p`, including its own projective boundary.
:::

:::proof "tame_trace_fiber_product_point_estimate"
Lean applies the allowed affine-plane Hasse--Weil theorem to the two direct
models.  It proves exact $`d`-fold power-cover multiplicity, transports every
ordered axis pair to the canonical pair, and compares plane points with
pulled root pairs.  The exceptional errors are at most $`4d+4` on the
diagonal and $`6d+4` off it.  Division by the exact cover gives multiplicity
$`2` when $`\xi^2=\eta^2` and multiplicity $`1` otherwise; $`p=5` is handled
separately by a finite ambient-cardinality bound.
:::

:::lemma_ "primitive_incidence_bridge" (parent := "cage") (uses := "tame_trace_fiber_product_point_estimate, maximal_trace") (lean := "BGS.Markoff.cageBridgeAxis, BGS.Markoff.CageMiddleTraceRelation, BGS.Markoff.exists_primitive_cageMiddleUnit_of_explicitInequality, BGS.Markoff.exists_threshold_primitive_cageMiddleUnit, BGS.Markoff.exists_threshold_splitMaximalFiberBridge") (tags := "dependency-complete, algebraic-geometry") (effort := "large") (priority := "high")
Given two maximal coordinate fibers, there is a third maximal coordinate
fiber meeting both.
:::

:::proof "primitive_incidence_bridge"
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "15--17, Section 3.2 and equations (56)--(61)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 941
        endLine := 1017
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Lean applies Möbius inversion to the power-image estimates, proves the main
term dominates the divisor-counted error for large $`p`, extracts a generator
of $`\mathbb F_p^\times`, and proves that its trace supplies the required
middle fiber.  Primitive extraction is not part of the external assumption.
:::

:::lemma_ "cage_connected" (parent := "cage") (uses := "primitive_incidence_bridge, rotation_orbit_card, cage_set") (lean := "BGS.Markoff.mem_normalizedFiberAt_coordinate, BGS.Markoff.sameNormalizedComponent_of_mem_splitMaximal_firstFiber, BGS.Markoff.sameNormalizedComponent_of_mem_same_splitMaximalFiber, BGS.Markoff.exists_threshold_splitCage_connected")
Any two points of the cage are connected by elementary Markoff moves.
:::

:::proof "cage_connected"
Lean proves that a split-maximal eigenvalue generates the full split torus,
so rotation is transitive on its whole conic fiber.  The primitive incidence
bridge gives two intersection points on one middle split-maximal fiber; three
fiber-transitivity steps connect the original cage points.  Coordinate swaps
handle all axis choices.
:::

:::definition "cage_component" (parent := "cage") (uses := "cage_connected, gamma_action")
The distinguished component $`\mathcal C(p)` is the unique
$`\Gamma`-component containing the cage.
:::

:::proposition "endgame_to_cage" (parent := "endgame") (uses := "large_order_to_maximal, cage_set") (lean := "BGS.Markoff.exists_threshold_largeOrder_to_splitCage")
Every point with a coordinate order at least $`p^{1/2+\delta}` is in the
same Markoff component as a point of the selected split cage.
:::
