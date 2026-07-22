import BGS.FiniteField.EllipticCharacterSum
import BGS.FiniteField.HasseFrobenius
import BGS.NumberTheory.DivisorBound
import BGS.Markoff.MiddleGame.WeightedTraceBound
import BGS.Markoff.Endgame.WeilBoundAssumption
import BGS.Markoff.Cage.HasseWeilAssumption
import BGS.Markoff.Cage.WitnessEquations
import BGS.Markoff.Cage.IncidenceGeometry
import BGS.Markoff.Cage.ShiftedTraceCurveIrreducibility
import BGS.External.GeneralCurveTheorems
import BGS.HasseWeil.GeneralBivariateAffineHasseWeil
import BGS.Markoff.Endgame.WeilFromGeneralHasse
import BGS.Markoff.Endgame.Nonsplit.HasseFromGeneral
import BGS.Markoff.MiddleGame.CorvajaZannierFromGeneral
import BGS.CorvajaZannier.GeneralCorvajaZannier
import BGS.Markoff.Cage.EstimateFromPlane
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Deep external inputs" =>

:::group "external_inputs"
External theorem boundaries
:::

Theorems imported from outside the paper's elementary Markoff-surface
algebra.  Inputs that remain external are passed as explicit theorem
assumptions; they must never be hidden as axioms, `sorry`s, typeclasses, or
structure fields.  A node is marked as proved when its former interface has
an in-repository theorem term.

:::theorem "general_hasse_weil_theorem" (parent := "external_inputs") (uses := "affine_hasse_weil") (lean := "BGS.External.GeneralBivariateAffineHasseWeilTheorem, BGS.HasseWeil.generalBivariateAffineHasseWeilTheorem") (tags := "proved-in-lean, dependency-complete, hasse-weil, affine-plane-corollary") (effort := "large") (priority := "high")
The general Hasse--Weil interface is its standard uniform affine-plane
corollary: for every geometrically irreducible bivariate polynomial of
positive bidegree at most $`(d_1,d_2)` over $`\mathbb F_q`,

$$`\bigl|\#C(\mathbb F_q)-q\bigr|
  \le C\sqrt q\,d_1d_2.`

The Lean proposition quantifies over every finite field and every polynomial;
it contains no Markoff weights, nonsplit torus, cage parameter, or specialized
solution set.  The theorem
`BGS.HasseWeil.generalBivariateAffineHasseWeilTheorem` inhabits this interface
with coefficient $`8`, using the closed function-field Hasse--Weil theorem,
the bidegree genus bound, normalization-to-affine comparison, and Frobenius
deflation.
:::

:::theorem "general_corvaja_zannier_theorem" (parent := "external_inputs") (uses := "corvaja_zannier_finite_field_specialization_theorem") (lean := "BGS.CorvajaZannier.generalCorvajaZannierPlaneCurveTheorem") (tags := "corvaja-zannier, proved-in-lean, dependency-complete, finite-field-plane-curve") (effort := "large") (priority := "high")
%%%
source := {
  document := "corvaja-zannier-2013"
  spans := #[
    {
      page := "1929--1930, Theorem 2 and its elementary range"
      text := some {
        path := "source/CorvajaZannier2013.tex"
        startLine := 237
        endLine := 264
      }
      pdf := some { path := "source/CorvajaZannier2013.pdf" }
    },
    {
      page := "1930, Corollary 2"
      text := some {
        path := "source/CorvajaZannier2013.tex"
        startLine := 298
        endLine := 309
      }
      pdf := some { path := "source/CorvajaZannier2013.pdf" }
    }
  ]
}
%%%

The general Corvaja--Zannier torsion-intersection theorem for an admissible
curve in $`\mathbb G_m^2`, with its degree, Euler-characteristic, and
prime-to-characteristic hypotheses stated explicitly.

The Lean declaration is the project's exact finite-field plane-curve
specialization: it quantifies over every finite constant field, uses explicit
public bidegree bounds and the safe Euler bound $`2d_1d_2`, and assumes the two
torsion orders are prime to the characteristic.  It is not silently identified
with the printed corollary's unrestricted geometric root-of-unity statement.

The dedicated Corvaja--Zannier chapter reconstructs the source proof and proves
the project endpoint through the powered-image index, the exhaustive
finite-plus-infinity Wronskian divisor estimate, both Proposition 2
orientations, and the corrected numerical chain through Theorems 4 and 2.
:::

:::definition "general_corvaja_zannier_theorem_interface" (parent := "external_inputs") (lean := "BGS.External.GeneralCorvajaZannierPlaneCurveTheorem") (tags := "explicit-interface, not-a-proof, corvaja-zannier")
Lean records the general plane-curve statement as an ordinary
proposition-valued interface.  This node identifies the exact input type and
its explicit hypotheses; the theorem node above is the in-repository term of
that proposition.  The interface itself remains separate so downstream
specializations can expose precisely what they consume.
:::

:::definition "weighted_split_trace_weil_bound_assumption" (parent := "external_inputs") (lean := "BGS.Markoff.WeightedSplitTraceWeilBoundAssumption") (tags := "specialized-target, selected-endgame, algebraic-geometry, uniform-constant") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "12, equations (31)--(33)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 832
        endLine := 836
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

There is a fixed positive constant $`C`, independent of the finite field,
the two nonzero weights, and the positive covering exponents $`d,e`, such
that every absolutely irreducible weighted split trace cover satisfies

$$`\left|N_{\mathrm{split}}-q\right|
  \le C\sqrt q\,de.`

Absolute irreducibility is an explicit premise of the accepted theorem, not
part of the assumption's name or an inferred typeclass.
:::

:::proof "weighted_split_trace_weil_bound_assumption"
Lean defines this source specialization as an ordinary `Prop` parameter and
fixes $`C` before quantifying over the field, weights, and exponents.  The
endgame adapter proves the concrete absolute-irreducibility premise from the
in-repository weighted-cover theorem.  Thus the only accepted content is the
actual point estimate; no curve-admissibility fact is hidden inside it.
:::

:::theorem "weighted_split_trace_weil_from_general_hasse_weil" (parent := "external_inputs") (uses := "general_hasse_weil_theorem, weighted_split_trace_cover_abs_irreducible") (lean := "BGS.Markoff.exists_weightedSplitTraceWeilBoundAssumption_of_generalHasseWeil") (tags := "general-theorem-application, dependency-complete, selected-endgame") (effort := "large") (priority := "high")
Lean applies the general affine-plane Hasse--Weil theorem to the cleared
weighted trace polynomial, proves the bidegree bound $`(2d,2e)`, and uses the
exact affine/torus comparison. The unique affine boundary point is absorbed
into the resulting uniform coefficient. Thus the split specialization is
derived, not assumed.
:::

:::definition "seeded_nonsplit_trace_weil_bound_assumption" (parent := "external_inputs") (lean := "BGS.Markoff.SeededNonsplitTraceWeilBoundAssumption") (uses := "seeded_nonsplit_trace_cover") (tags := "specialized-target, selected-endgame, algebraic-geometry, nonsplit-cover, uniform-constant") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "14, nonsplit Weil-bound paragraph"
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

There is a fixed positive constant $`C`, independent of $`p`, the corrected
conic seed, and the positive covering exponents, such that the number of
base-field solutions on the norm-one torus times $`\mathbb F_p^\times`
satisfies

$$`\left|N_{\mathrm{nonsplit}}-p\right|
  \le C\sqrt p\,de.`

The counted set is the actual nonsplit set required by Proposition 10, not
the much larger set of all quadratic-field points on its scalar extension.
:::

:::proof "seeded_nonsplit_trace_weil_bound_assumption"
Lean defines the exact finite solution set over the norm-one torus and the
base-field unit group.  The external `Prop` requires geometric
irreducibility as an explicit polynomial premise.  The application adapter
discharges that premise using the corrected seeded scalar-extension theorem,
then derives the uniform point estimate from the general Hasse--Weil input.
:::

:::theorem "seeded_nonsplit_trace_weil_from_general_hasse_weil" (parent := "external_inputs") (uses := "general_hasse_weil_theorem, seeded_nonsplit_descended_curve_abs_irreducible, seeded_nonsplit_descended_count_comparison") (lean := "BGS.Markoff.exists_seededNonsplitTraceWeilBoundAssumption_of_generalHasseWeil") (tags := "general-theorem-application, dependency-complete, selected-endgame, descent") (effort := "large") (priority := "high")
Lean applies the general affine Hasse--Weil theorem to the explicit descended
$`\mathbb F_p`-curve with bidegree $`(2d,2e)`.  The Hasse--Weil error contributes
$`4C\sqrt p\,de`, and the separately exposed identity boundary contributes at
most $`2e`, absorbed uniformly into $`(4C+2)\sqrt p\,de`.  Counting all
$`\mathbb F_{p^2}`-points is never used.
:::

:::definition "cage_witness_point_estimate_target" (parent := "external_inputs") (lean := "BGS.Markoff.CageMiddleWitnessPair, BGS.Markoff.CageIncidenceEquationWitness, BGS.Markoff.canonicalCageWitnessEquivIncidenceEquations, BGS.Markoff.NormalizedIncidenceAux, BGS.Markoff.normalizedIncidenceAux_iff_incidenceAux_div_three, BGS.Markoff.cageIncidenceEquationWitnessScaleEquiv, BGS.Markoff.cageMiddleWitnessPowerRangeSolutions, BGS.Markoff.CageWitnessPointEstimate") (tags := "specialized-target, witness-bearing-count, cage") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "15--17, equations (56)--(61) and Lemma 12"
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

The corrected finite type counts the middle parameter together with both
intersection witnesses. Its target estimate exposes a positive geometric
component multiplicity $`m`, constant across the divisor ranges:

$$`m\frac p d+O(C\sqrt p).`

This is the Hasse--Weil count required by the paper's fiber-product curve.
The previous Boolean projection was removed because it had generic density
one quarter and therefore the wrong main term. Fixing $`m=1` is also false in
diagonal degenerations; the multiplicity-aware statement is what the Möbius
argument actually permits.
:::

:::proof "cage_witness_point_estimate_target"
Lean retains both intersection witnesses, proves the exact canonical
power-cover equivalence, and proves one-sided witness-bearing Möbius inversion
before forgetting them.  The direct pulled-radicand plane models establish
the correct geometric multiplicities: two on the equal-square diagonal and
one off it.  All axis transports and the isolated prime $`p=5` are explicit.
:::

:::theorem "cage_point_estimate_from_general_hasse_weil" (parent := "external_inputs") (uses := "general_hasse_weil_theorem, direct_cage_plane_models_abs_irreducible") (lean := "BGS.Markoff.exists_cagePlanePointEstimate_of_generalHasseWeil, BGS.Markoff.cagePulledRootPair_diagonal_card_comparison, BGS.Markoff.cagePulledRootPair_offDiagonal_card_comparison, BGS.Markoff.canonicalDiagonalCageRangeEstimate, BGS.Markoff.canonicalEqualSquareCageRangeEstimate, BGS.Markoff.canonicalOffDiagonalCageRangeEstimate, BGS.Markoff.exists_cageWitnessPointEstimate_of_generalHasseWeil") (tags := "dependency-complete, general-theorem-application, witness-bearing-count, multiplicity-aware") (effort := "large") (priority := "high")
The general affine-plane Hasse--Weil theorem is applied to the absolutely
irreducible diagonal and off-diagonal direct models.  Exact power-cover and
exceptional-locus comparisons produce the witness-bearing count required by
Möbius inversion without forgetting either intersection witness.
:::

:::theorem "elliptic_character_sum_hasse_bound" (parent := "external_inputs") (lean := "BGS.FiniteField.LegendrePointCardHasseBound, BGS.FiniteField.legendreWeierstrassCurve_point_card_eq_card_add_one_add_characterSum, BGS.FiniteField.ellipticCubicCharacterSum_sq_le_four_mul_card_iff_point_card_hasse, BGS.FiniteField.legendrePointFrobeniusHom, BGS.FiniteField.legendreRationalPointEquivFrobeniusKernel, BGS.FiniteField.legendreHasseWitnessEndomorphism, BGS.FiniteField.frobeniusNormForm_hasseWitness, BGS.FiniteField.legendreHasseNormWitness_nonnegative_iff_point_card_hasse, BGS.FiniteField.ellipticCubicCharacterSum_sq_le_four_mul_card") (tags := "optional-route, explicit-conditional-target, algebraic-geometry") (effort := "large") (priority := "high")
For an odd finite field $`F` and nonzero distinct $`u,v\in F`, set

$$`S(u,v)=\sum_{x\in F}\chi\bigl(x(x-u)(x-v)\bigr).`

Then

$$`S(u,v)^2\le 4|F|.`

This is precisely Hasse's bound for the nonsingular full-$`2`-torsion model
$`Y^2=X(X-u)(X-v)`.
:::

:::proof "elliptic_character_sum_hasse_bound"
Lean constructs the nonsingular Weierstrass model, proves
$`\#E(F)=|F|+1+S(u,v)`, identifies rational points with
$`\ker(\mathrm{Frob}-1)`, and constructs the standard witness
$`[t]-[2]\mathrm{Frob}`.  Its formal norm is exactly $`4|F|-t^2`, and Lean
proves that nonnegativity of this norm is equivalent to the Hasse inequality.
The exact remaining gap is geometric: construct an algebraic degree for this
witness and prove the degree formula. The bound is now an explicit proposition
premise along the optional incidence-diameter route, with no `sorry`, axiom,
typeclass, or structure field. The selected Theorem 1 route does not depend on
this node.
:::

:::theorem "corvaja_zannier_weighted_trace_from_general_theorem" (parent := "external_inputs") (uses := "general_corvaja_zannier_theorem_interface, weighted_trace_curve_cz_hypotheses") (lean := "BGS.Markoff.corvajaZannierWeightedTraceBound_of_generalTheorem") (tags := "general-theorem-application, conditional-composition, numerical-specialization") (effort := "large") (priority := "high")
Apply the general Corvaja--Zannier theorem to the actual weighted trace curve,
using the in-repository irreducibility, non-subtorus, differential, degree,
Euler-characteristic, and characteristic checks, and derive the numerical
weighted-trace bound used by the middle game.  This theorem is the conditional
composition map from an arbitrary term of the general interface, using the
safe degree-only Euler bound $`\chi\le 8` rather than an unproved genus-one
identification.
:::

:::theorem "corvaja_zannier_weighted_trace_bound" (parent := "external_inputs") (uses := "general_corvaja_zannier_theorem, corvaja_zannier_weighted_trace_from_general_theorem") (lean := "BGS.Markoff.WeightedTraceTorsionIntersectionBound, BGS.Markoff.corvajaZannierWeightedTraceBound") (tags := "proved-in-lean, completed-stage, dependency-complete, selected-middle-game, weighted-curve-specialization") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "18, bound following equation (62)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1048
        endLine := 1051
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The neutral proposition `WeightedTraceTorsionIntersectionBound` records the
weighted-trace target uniformly in both weights and both torsion orders.  If
the weighted trace curve is admissible and the two orders are positive and
prime to the characteristic, its safe source envelope is

$$`N(H_1,H_2)\le
48\max\{(|H_1||H_2|)^{1/3},|H_1||H_2|/p\}.`

Its hypotheses explicitly require both weights to be nonzero, their product
to be nondegenerate, the curve to be absolutely irreducible and not a
translated subtorus, and both torsion orders to be positive and prime to the
characteristic.  The proposition is an internal contract between the general
plane-curve theorem and the Markoff middle game, not an additional input.

The published Markoff paper prints the stronger coefficient $`20`; that
number is not the direct specialization of the cited Corvaja--Zannier
corollary.  The official Corollary 2 has numerical right-hand side

$$`\max\{3(2m_1m_2d_1d_2\chi)^{1/3},
12m_1m_2d_1d_2/p\}.`

At $`(d_1,d_2,\chi)=(2,2,4)` this gives the sharper source specialization.
The formal path uses the general degree-only value $`\chi\le8`; both terms are
still dominated by the displayed coefficient-$`48` envelope.  See
[Corvaja--Zannier, JEMS 15 (2013), Theorem 2 and Corollary 2](https://ems.press/content/serial-article-files/31918).

The proved general plane-curve theorem is passed to the composition map above,
so Lean constructs `WeightedTraceTorsionIntersectionBound p K` for every
finite field in the stated characteristic.  This is the completed
weighted-trace stage consumed by the selected middle game; it contains no
axiom, `sorry`, instance, or proof-bearing structure field.
:::

:::theorem "divisor_bound_input" (parent := "external_inputs") (lean := "BGS.NumberTheory.eventually_card_divisors_le_rpow, BGS.NumberTheory.exists_threshold_card_divisors_le_rpow") (tags := "analytic-number-theory") (effort := "medium")
For every $`\varepsilon>0`, the number of divisors of $`n` is at most
$`n^\varepsilon` once $`n` is sufficiently large. The middle-game union bound
uses this for both $`p-1` and $`p+1`.
:::

:::proof "divisor_bound_input"
This input is now proved in Lean.  The proof bounds a fixed power of each
prime-exponent contribution by an exponential, splits prime factors at a
fixed cutoff, obtains $`\tau(n)^k\le C_k n`, and then chooses
$`k>1/\varepsilon` to absorb the constant.
:::

:::theorem "rare_prime_torsion_order" (parent := "external_inputs") (tags := "deep-external, cksz") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "24--25, Theorem 18"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1305
        endLine := 1317
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

A precise CKSZ-style theorem controls torsion points of bounded-order curves
outside at most $`T^\delta` primes up to $`T`. The required interface must say
whether points lie in $`\mathbb F_p`, $`\mathbb F_{p^2}`, or the algebraic
closure, and must formulate translated-subtorus exclusions using Laurent
polynomials. The published application uses the cleared trace polynomial's
exact total degree three, sharpening v1's still-valid degree-four upper bound.
Its theorem still
quantifies over algebraic-closure points while the proof paragraph only states
the needed property for $`\mathbb F_p`-points, so the exact field remains an
open interface issue.
:::

:::theorem "meiri_puder_product_transitivity" (parent := "external_inputs") (uses := "strong_approximation, gamma_action") (tags := "deep-external, published-primary, diophantine") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "26, proof of Theorem 19"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1372
        endLine := 1384
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For distinct primes $`p_1,\ldots,p_k\equiv1\pmod4` at which the Markoff
action is transitive, the Meiri--Puder permutation-group theorem and Goursat
disjointness imply transitivity on $`X^*(p_1\cdots p_k)`.  The exact group
convention and the exceptional low-degree isomorphisms required by the
Goursat argument must be stated, not hidden in the word “essentially.”
:::

:::theorem "mirzakhani_markoff_orbit_equidistribution" (parent := "external_inputs") (uses := "original_markoff_surface, gamma_action") (tags := "deep-external, homogeneous-dynamics, diophantine") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "28, equation (103)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1471
        endLine := 1490
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For fixed squarefree $`q` and a residue class $`\xi\in X^*(q)`, integral
Markoff points in the orbit of $`(1,1,1)` with sup norm at most $`T` are
asymptotically equidistributed among the residue classes in the corresponding
$`\Gamma`-orbit.  A formal interface must specify whether points, ordered
triples, or largest-coordinate Markoff numbers are counted, and must retain
the stabilizer and multiplicity factors needed downstream.
:::

:::theorem "primes_one_mod_four_reciprocal_diverges" (parent := "external_inputs") (tags := "deep-external, analytic-number-theory, diophantine") (effort := "large")
The reciprocal sum of primes $`p\equiv1\pmod4` diverges.  Combined with
Theorem 2's subpower bound for exceptional primes, this supplies finite sets
of good primes whose reciprocal sum is arbitrarily large.  This analytic step
is used silently in the published last paragraph of the proof of Theorem 19.
:::

:::theorem "projective_st_input" (parent := "external_inputs") (tags := "deep-external, alternative") (effort := "large")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "18, Theorem 13"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1064
        endLine := 1078
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The projective Szemeredi--Trotter theorem quoted by the paper is retained as
an optional route. It is not on the selected critical path.
:::
