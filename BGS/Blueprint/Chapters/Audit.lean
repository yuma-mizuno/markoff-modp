import Verso
import VersoManual

open Verso.Genre
open Verso.Genre.Manual

#doc (Manual) "Source corrections and proof status" =>

This appendix records discrepancies between the primary published PDF, the
historical v1, and the formal proof.  It is deliberately prose-only: it
declares no Blueprint group or mathematical node, and therefore contributes no
dependency edge.  Machine-readable source spans belong to the mathematical
nodes discussed below; the aggregate ranges are retained here for navigation.

# Selected proof route

The selected route to the first two main theorems is:

1. normalize coordinates and define the Markoff action;
2. formalize rotations and conic parametrizations;
3. prove the split and nonsplit endgame estimates and the cage-specific direct
   plane-model bridge;
4. apply the in-repository Corvaja--Zannier torsion bound in the middle game;
5. repair the cyclotomic opening argument;
6. prove the general affine Hasse--Weil estimate from the closed
   function-field theorem;
7. insert the omitted low-order count and assemble Theorem 1;
8. apply Chen's orbit-divisibility theorem through Martin's elementary proof
   to Theorem 1 and deduce Theorem 2.

General incidence, the projective Szemeredi--Trotter argument, Stepanov's
auxiliary-polynomial argument, and the CKSZ rare-prime argument are documented
  alternatives, not dependencies of this route.  Corvaja--Zannier and the
  general affine Hasse--Weil bound are both proved in the repository, so
  Theorems 1 and 2 have no external theorem parameter.

The path to Theorem 3 is recorded separately and remains incomplete: it
requires product-modulus transitivity, the local coordinate counts, reciprocal
mass in good primes, fixed-modulus equidistribution, and the multiplicity-aware
passage from ordered Markoff triples to the Markoff-number multiset.

# Published-source revision record

## Repairs present in the published version

- Normalized equation: [published PDF, p. 6](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 584--593](source/MarkoffDiophantine.tex).
  Section 2 explicitly switches to the normalized equation, while Section 7
  returns to the original Diophantine coordinates.
- Lemma 9: [published PDF, pp. 10--11](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 773--802](source/MarkoffDiophantine.tex).
  The publication supplies an off-diagonal genus-one model and the corrected
  split and nonsplit neighbor counts.
- Lemmas 11--12: [published PDF, pp. 14--17](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 881--1017](source/MarkoffDiophantine.tex).
  The publication restores the missing power factor in the cleared split
  polynomial and adds the tame fiber-product lemma used for its cage route.
  It does not repair the malformed nonsplit formulas; the formalization uses a
  corrected seeded nonsplit model.
- Historical CKSZ application: [published PDF, p. 25](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 1331--1334](source/MarkoffDiophantine.tex).
  The published proof uses exact total degree 3.  Historical v1 used the valid
  but weaker upper bound 4.  This sharpening belongs to the optional CKSZ
  route and is not needed by the selected Martin-proof route.

## Defects and omissions still present

- Conic parametrizations: [published PDF, pp. 8--9](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 702--728](source/MarkoffDiophantine.tex).
  Uniform semisimple parametrizations miss the singular trace-zero fiber.
- Proposition 8: [published PDF, pp. 10--11](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 754--802](source/MarkoffDiophantine.tex).
  The p > 10 auxiliary-point bridge is false at p = 13 and p = 17.  These
  counterexamples refute that bridge, not the full diameter-two conclusion.
  Lemma 9 does provide a genus-one model; the missing work is the exact
  geometric-integrality, base-change, boundary, and punctured-fiber bridge.
- Lemma 11: [published PDF, pp. 14--15](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 881--933](source/MarkoffDiophantine.tex).
  The translate range, arbitrary power-cover descent, characteristic
  restrictions, nonsplit geometry, and parabolic case require separate
  repairs.
- Proposition 14: [published PDF, pp. 19--21](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 1082--1201](source/MarkoffDiophantine.tex).
  The projective route loses multiplicities and singular parameters, has a
  sign and determinant-normalization problem, and uses a false blanket claim
  about proper subgroups of SL₂.
- Theorems 1--2: [published PDF, pp. 24--25](source/MarkoffDiophantine.pdf);
  [checked reconstruction, lines 1294--1334](source/MarkoffDiophantine.tex).
  Theorem 1 omits the low-order complement count.  The published Theorem 2
  paragraph does not verify all hypotheses and field cases of its CKSZ input.
  The formalization supplies the count for Theorem 1 and replaces the selected
  Theorem 2 route by the deduction from Theorem 1 using Chen's divisibility
  theorem through Martin's elementary proof.

# Stage-by-stage proof audit

## Coordinates and local dynamics

The introduction and Section 7 use original coordinates, while Sections 2--6
use normalized trace coordinates.  The formalization therefore keeps the two
types separate, proves the scaling equivalence, and distinguishes parabolic
values ±2 from ±2/3.  Rotation order is defined with orderOf, and trace zero is
handled separately because its conic fiber can be singular.

Relevant nodes: `normalized_markoff_surface`, `scale_equiv`,
`coordinate_order`, `parabolic_fibers`, and `trace_zero_fiber_exception`.

## Incidence geometry

Historical v1's uniform neighbor count is off by one; the published split and
nonsplit counts are different.  The general diameter-two route still needs
the complete punctured incidence bridge, including the p ≡ 1 (mod 4) case.
That optional route is not used in the selected proof of Theorem 1.

Relevant nodes: `conic_intersection_card`, `incidence_aux_geometry`,
`incidence_aux_point_count`, and `incidence_bridge_mod_one`.

## Endgame trace estimates

The selected split argument records the corrected cleared polynomial and the
prime-to-characteristic power hypotheses.  The nonsplit argument uses a
nondegenerate seed, descended base-field curve, explicit point estimate, and
a separate parabolic proof.  The earlier claim that the nonsplit projective
model and estimate remained open is obsolete: the descended curve and its
estimate are now formalized.

Relevant nodes: `weighted_split_trace_cover_abs_irreducible`,
`seeded_nonsplit_trace_cover_abs_irreducible`, `primitive_split_trace`,
`primitive_nonsplit_trace`, and `endgame_parabolic`.

## Primitive-trace cage

The published word "maximal" is not by itself an unambiguous trace condition.
The selected formalization defines the split-maximal trace explicitly and uses
direct absolutely irreducible plane models, the general affine Hasse--Weil
bound, exact covering multiplicities, and exceptional-axis comparisons.
The published fiber-product and branch-cycle construction remains documented
as a separate route.

Relevant nodes: `maximal_trace`, `direct_cage_plane_models_abs_irreducible`,
`cage_point_estimate_from_general_hasse_weil`, and
`primitive_incidence_bridge`.

## Order-growth middle game

The Corvaja--Zannier specialization requires explicit curve admissibility,
subgroup-order, separability, and divisor hypotheses.  Those hypotheses and
the finite-field torsion bound are proved in the repository.  The optional
projective route retains the multiplicity, singular-parameter, sign,
determinant, and subgroup-classification defects listed above.

Relevant nodes: `weighted_trace_curve_cz_hypotheses`,
`corvaja_zannier_trace_bound`, `trace_equation_power_saving`, and the optional
`st_nonconcentration`.

## Cyclotomic opening

Published equation (82) mixes indices.  The publication corrects historical
v1's order-two typo to order four, but compatible simultaneous cyclotomic
lifts and the bound for every Galois conjugate still have to be supplied.
Lean provides both and proves the opening orbit lower bound.

Relevant nodes: `compatible_cyclotomic_lifts`, `cyclotomic_defect`,
`cyclotomic_defect_ne_zero`, and `orbit_card_lower_bound`.

## Main-theorem assembly

The published proof omits the p^ε complement estimate.  Lean supplies the
  B^4 low-order count and exponent rescaling, combines the formalized
  Corvaja--Zannier and affine Hasse--Weil bounds with the endgame and cage
  estimates, and proves Theorem 1 unconditionally.

The published introduction describes a Vieta-only Γ, whereas the formal
action and historical v1 also include coordinate permutations.  Chen's
divisibility theorem, proved here by Martin's elementary argument, is applied
directly to each formal Γ-orbit, which is stable under every Vieta involution;
no comparison with a separate Vieta-only orbit is required.  Eventual
transitivity and Theorem 2 then follow from Theorem 1.  The CKSZ trace-curve
route remains optional historical comparison.

Relevant selected nodes: `outside_cage_small_orders`, `giant_orbit_assembly`,
`chen_orbit_card_divisible_via_martin`,
`eventual_transitivity_from_chen_divisibility`, and
`chen_divisibility_exceptional_prime_count`.

## Diophantine application

Source range: [published PDF, pp. 26--29](source/MarkoffDiophantine.pdf);
[checked reconstruction, lines 1358--1517](source/MarkoffDiophantine.tex).

The local counts must use the exact Markoff-surface normalization.  The
remaining path exposes three substantial bridges: Goursat disjointness for
product-modulus transitivity, the passage from Theorem 2 to arbitrarily large
reciprocal mass in good primes, and the conversion of Mirzakhani's
ordered-point equidistribution into a density statement for the
largest-coordinate Markoff multiset.  Coordinate symmetry alone does not
remove multiplicities.

Relevant nodes: `product_modulus_transitive`,
`good_prime_reciprocal_mass`, `fixed_modulus_markoff_equidistribution`, and
`ordered_points_to_markoff_multiset`.
