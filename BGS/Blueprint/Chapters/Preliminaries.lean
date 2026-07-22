import BGS.Blueprint.Chapters.Foundations
import BGS.Blueprint.Chapters.ExternalInputs
import BGS.Markoff.Incidence.Fibers
import BGS.Markoff.Incidence.CoordinateRing
import BGS.Markoff.Core.ConicParametrization
import BGS.Markoff.Incidence.NormalizedGraph
import BGS.Markoff.Core.Rotation
import BGS.Markoff.Core.RotationTorus
import BGS.Markoff.Core.TraceClassification
import BGS.Markoff.Core.ParabolicFibers
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Rotations, conic fibers, and incidence" =>

:::group "local_dynamics"
Rotation dynamics
:::

The algebra of a single coordinate rotation and its conic fiber.

:::definition "normalized_rotation_matrix" (parent := "local_dynamics") (uses := "scale_equiv, fundamental_rotation") (lean := "BGS.Markoff.rho, BGS.Markoff.rho_det, BGS.Markoff.rho_trace, BGS.Markoff.rho_charpoly, BGS.Markoff.rho_mulVec, BGS.Markoff.rhoSL, BGS.Markoff.rho_mulVec_movingCoordinates")
For a normalized coordinate $`u`, define

$$`\rho(u)=\begin{pmatrix}0&1\\-1&u\end{pmatrix}.`

Its determinant is one and its characteristic polynomial is
$`T^2-uT+1`. Acting on the other two coordinates realizes the corresponding
fundamental Markoff rotation.
:::

:::definition "torus_trace_coordinates" (parent := "local_dynamics") (lean := "BGS.Markoff.splitTorusTrace, BGS.Markoff.quadraticNormOneTorus, BGS.Markoff.quadraticNormOneTrace, BGS.Markoff.algebraMap_quadraticNormOneTrace")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7--8, trace parametrizations and equations (16)--(17)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 632
        endLine := 691
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For a unit $`w`, its split-torus trace coordinate is $`w+w^{-1}`.  Over
$`\mathbb F_p`, the nonsplit trace coordinate is the same expression on the
norm-one subgroup of $`\mathbb F_{p^2}^{\times}`, descended to
$`\mathbb F_p`.
:::

:::lemma_ "rotation_preserves_conic" (parent := "local_dynamics") (uses := "normalized_rotation_matrix, normalized_markoff_surface") (lean := "BGS.Markoff.normalizedPolynomial_rotate1, BGS.Markoff.isNormalizedMarkoff_rotate1, BGS.Markoff.normalizedRotate1_mem_fiber1_iff")
The matrix $`\rho(u)` preserves the conic obtained by fixing the corresponding
coordinate of the normalized Markoff surface.
:::

:::definition "conic_section" (parent := "local_dynamics") (uses := "original_markoff_surface") (lean := "BGS.Markoff.fiber1, BGS.Markoff.fiber2, BGS.Markoff.fiber3, BGS.Markoff.normalizedFiber1, BGS.Markoff.normalizedFiber2, BGS.Markoff.normalizedFiber3")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7, equation (8)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 607
        endLine := 610
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The fiber $`C_i(a)` consists of punctured Markoff points whose $`i`-th coordinate
is $`a`. We retain both its original-coordinate and normalized-coordinate
versions, related by {uses "scale_equiv"}[].
:::

:::definition "rotation_type" (parent := "local_dynamics") (uses := "normalized_rotation_matrix, torus_trace_coordinates")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7, Section 2.1"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 612
        endLine := 614
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Over $`\mathbb F_p`, a normalized coordinate $`u` is parabolic when
$`u^2-4=0`, split semisimple when $`u^2-4` is a nonzero square, and nonsplit
semisimple when it is a nonsquare. Project-specific predicates are needed:
mathlib's ordered-ring meanings of hyperbolic and elliptic are not these
finite-field notions.
:::

:::lemma_ "nonparabolic_trace_eigenvalue_cover" (parent := "local_dynamics") (uses := "normalized_rotation_matrix, torus_trace_coordinates") (lean := "BGS.Markoff.exists_split_or_quadraticNormOneTrace")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7--8, trace parametrizations and equations (16)--(17)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 632
        endLine := 691
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every odd prime $`p` and every normalized trace $`t` with $`t^2\ne4`, one
of the following explicit witness presentations exists:

* a unit $`w\in\mathbb F_p^\times` with $`w+w^{-1}=t` and $`w^2\ne1`; or
* a unit $`w` in the norm-one torus of $`\mathbb F_{p^2}` whose descended
  trace is $`t` and with $`w^2\ne1`.

This disjunctive coverage theorem is sufficient for arguments, such as the
Opening orbit bound, that do not need named split and nonsplit predicates.
:::

:::definition "coordinate_order" (parent := "local_dynamics") (uses := "normalized_rotation_matrix") (lean := "BGS.Markoff.rotationOrder, BGS.Markoff.rhoSL_pow_rotationOrder, BGS.Markoff.rotationOrder_pos") (tags := "corrected-definition") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "8, equations (16)--(17)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 680
        endLine := 690
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The coordinate order is the group-theoretic order of $`\rho(u)`, defined with
`orderOf`.  Its identification with the multiplicative order of a split or
nonsplit torus eigenvalue is the separate theorem
`torus_trace_rotation_order`. If $`w=\rho^j` for a primitive root $`\rho`,
then the multiplicative order is

$$`(p-1)/\gcd(p-1,j),`

not $`(p-1)/j` without an additional divisibility convention.
:::

:::lemma_ "torus_trace_rotation_order" (parent := "local_dynamics") (uses := "coordinate_order, torus_trace_coordinates") (lean := "BGS.Markoff.rotationOrder_splitTorusTrace, BGS.Markoff.rotationOrder_quadraticNormOneTrace")
For a nonparabolic eigenvalue $`w`, the normalized trace $`w+w^{-1}` has
matrix rotation order exactly `orderOf w`.  In the nonsplit case $`w` lies in
the concrete norm-one subgroup of $`\mathbb F_{p^2}^{\times}` and its field
trace is $`w+w^{-1}`.
:::

:::proof "torus_trace_rotation_order"
Lean proves the split statement by an explicit eigenbasis and conjugacy.  It
proves the nonsplit statement using the concrete `GaloisField p 2`, its norm-one
subgroup, and the finite-field trace and norm formulas.  The condition
$`w^2\ne1` is essential: at the two parabolic eigenvalues the rotation matrix
is generally unipotent, so its order need not equal `orderOf w`.
:::

:::lemma_ "parabolic_fibers" (parent := "local_dynamics") (uses := "conic_section, normalized_rotation_matrix, coordinate_order") (lean := "BGS.Markoff.normalizedPolynomial_at_two, BGS.Markoff.normalizedPolynomial_at_neg_two, BGS.Markoff.normalizedFiber1_two_eq_empty_of_mod_four_eq_three, BGS.Markoff.normalizedFiber1_neg_two_eq_empty_of_mod_four_eq_three, BGS.Markoff.exists_parabolic_line_decomposition_of_mod_four_eq_one, BGS.Markoff.rotationOrder_two, BGS.Markoff.rotationOrder_neg_two, BGS.Markoff.normalizedRotationCycle_card_parabolicLineAtTwo, BGS.Markoff.normalizedRotationCycle_card_parabolicLineAtNegTwo")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "7--8, Lemma 5"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 620
        endLine := 629
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For normalized coordinate $`u=\pm2`, the fiber is empty when
$`p\equiv3\pmod4` and is a pair of affine lines when
$`p\equiv1\pmod4`. In original coordinates the exceptional values are
$`x=\pm2/3`.  The published normalization paragraph makes the appearance of
$`C_1(\pm2)` correct; Lean still keeps the two coordinate types distinct.
:::

:::proof "parabolic_fibers"
Lean proves the exact factorizations, emptiness for $`p\equiv3\pmod4`, and
the two affine-line decompositions for $`p\equiv1\pmod4`.  It also computes
the line action and the matrix powers: the trace-$`2` rotation has order $`p`,
whereas the trace-$`-2` rotation has order $`2p` for odd $`p`.  This asymmetry
is real and remains explicit.
:::

:::lemma_ "trace_zero_fiber_exception" (parent := "local_dynamics") (uses := "conic_section") (lean := "BGS.Markoff.normalizedFiber1_zero_zmod_five_card, BGS.Markoff.normalizedPuncturedFiber1_zero_zmod_five_card, BGS.Markoff.no_split_torus_equiv_normalizedPuncturedFiber1_zero_zmod_five") (tags := "source-correction") (priority := "high")
Normalized trace zero is semisimple but its conic is singular, so it cannot
be included in a uniform split or nonsplit torus parametrization.  Lean
kernel-checks the obstruction over $`\mathbb F_5`: the full fiber has nine
points and its punctured fiber has eight, whereas
$`|\mathbb F_5^\times|=4`.  Trace zero must be handled as its own line/empty
case according to whether $`-1` is a square.
:::

:::lemma_ "split_fiber_parametrization_from_eigenvalue" (parent := "local_dynamics") (uses := "conic_section, normalized_rotation_matrix, torus_trace_coordinates, torus_trace_rotation_order") (lean := "BGS.Markoff.splitFiberEquiv, BGS.Markoff.normalizedRotate1_splitFiberPoint, BGS.Markoff.splitNormalizedFiber_zmod_natCard")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "8--9, Lemma 6"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 702
        endLine := 712
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Given a unit $`w\in\mathbb F_p^\times` with $`w^2\ne1` and
$`w+w^{-1}\ne0`, the normalized fiber with trace $`w+w^{-1}` is explicitly
equivalent to $`\mathbb F_p^\times`.  Under this equivalence rotation is
multiplication by $`w`, and the fiber has $`p-1` points.
:::

:::lemma_ "split_conic_equiv" (parent := "local_dynamics") (uses := "rotation_type, split_fiber_parametrization_from_eigenvalue, trace_zero_fiber_exception") (tags := "gap, classification-witness-bridge") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "8--9, Lemma 6"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 702
        endLine := 712
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Every nonzero split semisimple trace must first be shown to admit a split
eigenvalue $`w\in\mathbb F_p^\times`.  Applying the proved witness-level
parametrization then gives the paper's hyperbolic conic equivalence.  The
classification-to-witness implication is not yet formalized.
:::

:::lemma_ "nonsplit_fiber_parametrization_from_eigenvalue" (parent := "local_dynamics") (uses := "conic_section, normalized_rotation_matrix, torus_trace_coordinates, torus_trace_rotation_order") (lean := "BGS.Markoff.quadraticNormOneTorus_natCard, BGS.Markoff.quadraticNormFiberEquiv, BGS.Markoff.nonsplitNormalizedFiber_natCard, BGS.Markoff.normalizedRotate1_quadraticNormFiberPoint")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "9, Lemma 7"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 718
        endLine := 728
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Given $`t\ne0`, $`t^2\ne4`, and a norm-one eigenvalue $`w` whose descended
trace is $`t`, the normalized fiber at $`t` is explicitly equivalent to its
quadratic norm fiber.  After choosing a base point it is a torsor for the
norm-one torus of order $`p+1`, and rotation is multiplication by $`w`.
:::

:::lemma_ "nonsplit_conic_equiv" (parent := "local_dynamics") (uses := "rotation_type, nonsplit_fiber_parametrization_from_eigenvalue, trace_zero_fiber_exception") (tags := "gap, classification-witness-bridge") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "9, Lemma 7"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 718
        endLine := 728
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Every nonzero nonsplit semisimple trace must first be shown to admit a
norm-one eigenvalue with that descended trace.  Applying the proved
witness-level parametrization then gives the paper's elliptic conic
equivalence.  The classification-to-witness implication is not yet
formalized.
:::

:::lemma_ "rotation_orbit_card_from_eigenvalue" (parent := "local_dynamics") (uses := "split_fiber_parametrization_from_eigenvalue, nonsplit_fiber_parametrization_from_eigenvalue") (lean := "BGS.Markoff.normalizedRotationCycle_card_split, BGS.Markoff.normalizedRotationCycle_card_nonsplit")
For split and nonsplit fibers equipped with explicit eigenvalue witnesses,
the rotation-cycle cardinality equals the matrix rotation order.
:::

:::lemma_ "rotation_orbit_card" (parent := "local_dynamics") (uses := "nonparabolic_trace_eigenvalue_cover, rotation_orbit_card_from_eigenvalue") (lean := "BGS.Markoff.normalizedRotationCycle_card_of_nonzero_nonparabolic")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "8--9, Lemmas 6--7"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 702
        endLine := 728
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every nonzero nonparabolic normalized trace over an odd prime field, the
rotation cycle of every point on its fiber has cardinality equal to the
matrix rotation order.  Lean obtains an eigenvalue from the disjunctive
coverage theorem and then applies the corresponding witness-level cycle
kernel.  Parabolic and trace-zero branches are handled separately where they
are used.
:::

:::group "incidence_geometry"
Conic-fiber incidence geometry
:::

Intersections of conic fibers and the common-fiber bridge.

:::lemma_ "conic_intersection_card" (parent := "incidence_geometry") (uses := "conic_section")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "9--10, equations (26)--(28)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 733
        endLine := 752
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For two different coordinate axes, fixing normalized values $`\xi` and
$`\eta` leaves a quadratic equation for the third coordinate.  The published
formula is

$$`1+\left(\frac{\xi^2\eta^2-4(\xi^2+\eta^2)}p\right).`

Transporting through {uses "scale_equiv"}[] recovers the factor-$`9`
original-coordinate formula used by the existing Lean implementation.
Jacobsthal's count says that a fixed split (hyperbolic) fiber meets
$`(p+1)/2` other-axis conic sections, while a nonsplit (elliptic) fiber meets
$`(p-1)/2`; this corrects historical v1's blanket count.
:::

:::definition "incidence_graph" (parent := "incidence_geometry") (uses := "conic_intersection_card")
Vertices are nondegenerate coordinate fibers. Two vertices on different axes
are adjacent when their intersection is nonempty. Intersection multiplicity
is recorded separately; connectivity uses the underlying simple graph.
:::

:::definition "incidence_aux_curve" (parent := "incidence_geometry") (uses := "incidence_graph") (lean := "BGS.Markoff.IncidenceAux, BGS.Markoff.incidenceAuxPolynomial1, BGS.Markoff.incidenceAuxPolynomial2, BGS.Markoff.incidenceAuxIdeal, BGS.Markoff.IncidenceAuxCoordinateRing, BGS.Markoff.incidenceAux_iff_aeval_eq_zero, BGS.Markoff.conicRoot, BGS.Markoff.incidenceAux_implies_common_fiber")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "10, Proposition 8 and equation (29)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 754
        endLine := 770
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For two normalized fibers with values $`\xi_1,\xi_2`, the proposed
common-fiber value $`y` lies on the affine curve

$$`\lambda^2=(\xi_1^2-4)y^2-4\xi_1^2,\qquad
\mu^2=(\xi_2^2-4)y^2-4\xi_2^2.`

The Lean declarations listed above use original coordinates, obtained by the
explicit scaling equivalence; this distinction must remain visible.
:::

:::lemma_ "incidence_aux_geometry" (parent := "incidence_geometry") (uses := "incidence_aux_curve") (lean := "BGS.Markoff.incidenceBranchSquareClasses_independent_ratFunc, BGS.Markoff.IncidenceAuxGeometricallyIntegral, BGS.Markoff.IncidenceAuxOffDiagonalGeometryAt, BGS.Markoff.incidenceAux_offDiagonal_geometricallyIntegral") (tags := "gap, algebraic-geometry") (effort := "large") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "10--11, Lemma 9"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 773
        endLine := 802
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

When $`\xi_1^2\ne\xi_2^2`, the coordinate ring of the auxiliary affine curve
remains a domain after base change to an algebraic closure. This is the
geometric-integrality claim implicit in the paper; irreducibility over
$`\mathbb F_p` alone is insufficient.  The selected point-count proof now uses
the explicit elliptic model directly, so it does not hide genus information
inside this assertion.
:::

:::proof "incidence_aux_geometry"
Historical v1 line 661 asserts irreducibility without proof.  Published Lemma 9 instead
derives an explicit quartic genus-one model and checks its distinct roots;
this is a genuine repair, though it does not provide the coordinate-ring
base-change statement used here.  Lean proves that the two
quadratic branch polynomials are separable and coprime and that their three
nonzero square-class combinations are nonsquares in the rational function
field.  It then identifies the base-changed three-variable quotient with a
rank-four iterated quadratic algebra, injects that algebra into the resulting
biquadratic function field, and transports `IsDomain` back through both explicit
algebra equivalences.  The geometric-integrality gap is closed with threshold
$`p\ge3`.
:::

:::lemma_ "incidence_aux_diagonal_point" (parent := "incidence_geometry") (uses := "incidence_aux_curve, conic_section") (lean := "BGS.Markoff.incidenceAux_diagonal_point") (tags := "gap, finite-field-geometry") (priority := "high")
When $`\xi_1^2=\xi_2^2`, the system reduces to one affine conic equation.
For all sufficiently large primes it must have a point whose common normalized
coordinate $`y` is still admissible, so $`y\ne0,\pm2`. The paper supplies neither the
point count nor the exclusion argument.
:::

:::proof "incidence_aux_diagonal_point"
This gap is now closed in Lean with threshold $`p\ge 11`.  A Jacobi-sum
calculation proves that the nondegenerate affine conic has exactly
$`p-\chi(\xi_1^2-4)` points in normalized coordinates.  At most six lie over the three
forbidden values of $`y`, while the total is at least $`p-1\ge10`; hence an
admissible intermediate coordinate exists.  The proof uses no unproved
geometric input.
:::

:::lemma_ "incidence_aux_point_count" (parent := "incidence_geometry") (uses := "incidence_aux_curve, elliptic_character_sum_hasse_bound") (lean := "BGS.Markoff.auxiliaryTripleCount_eq, BGS.Markoff.quarticTrace_add_leadingChar_eq_monicCubicTrace, BGS.Markoff.exists_auxiliary_triple_away_from_three, BGS.Markoff.incidenceAux_offDiagonal_point") (tags := "gap, algebraic-geometry, finite-field-geometry") (effort := "large") (priority := "high")
The exact affine triple count reduces to the character sum of the nonsingular
elliptic curve $`Y^2=X(X-u)(X-v)`.  Hasse's bound, followed by removal of the
three normalized fibers $`y=0,\pm2` (equivalently $`0,\pm2/3` before scaling),
yields an admissible point.  The Lean reduction is
complete and gives the sufficient uniform threshold $`p\ge29`; only the
explicit Hasse bound remains open.
:::

:::proof "incidence_aux_point_count"
The smooth model is made explicit as
$`Y^2=X(X-u)(X-v)`, with discriminant
$`16u^2v^2(u-v)^2\ne0`.  Character expansion and the quartic-to-cubic change
of variables are proved in Lean.  Hasse gives a total count greater than
twelve for $`p>25`, while the three forbidden fibers contain at most twelve
triples.  Thus the formal downstream argument uses $`p\ge29`.
Moreover, `scripts/check-incidence-small-primes.py` checks the exact displayed
equations and admissibility predicate: no admissible common $`y` exists for
$`(p,\xi_1,\xi_2)=(13,1,4)` or $`(17,1,6)`. Thus the printed $`p>10`
threshold is false for this bridge, not merely unproved.  Both failures are
also kernel-checked in Lean.  No further failure occurs for primes from $`19`
through $`499`; this is evidence, not a proof of the sharper threshold.
:::

:::lemma_ "incidence_bridge_reduction" (parent := "incidence_geometry") (uses := "incidence_aux_curve") (lean := "BGS.Markoff.IncidenceAuxPointAt, BGS.Markoff.IncidenceBridgeAt, BGS.Markoff.incidenceBridgeAt_of_auxPoint")
An admissible solution of the two explicit auxiliary equations yields an
admissible common fiber. This algebraic reduction is proved in Lean and has no
geometric assumption beyond the supplied auxiliary point.
:::

:::lemma_ "incidence_bridge_mod_three" (parent := "incidence_geometry") (uses := "incidence_bridge_reduction, incidence_aux_diagonal_point, incidence_aux_point_count")
For $`p\equiv3\pmod4`, any two admissible fibers have an admissible common
fiber. This is the exact bridge needed for diameter at most two.
:::

:::lemma_ "incidence_bridge_mod_one_admissible" (parent := "incidence_geometry") (uses := "incidence_bridge_reduction, incidence_aux_diagonal_point, incidence_aux_point_count")
For $`p\equiv1\pmod4`, the same argument gives a common admissible fiber for
every pair of admissible fibers. This is not yet the full mod-four-one case.
:::

:::lemma_ "parabolic_bridge_mod_one" (parent := "incidence_geometry") (uses := "parabolic_fibers, incidence_bridge_mod_one_admissible") (lean := "BGS.Markoff.normalizedParabolicFiber_meets_distinctAxis, BGS.Markoff.normalizedParabolicFiber_has_commonNeighbor, BGS.Markoff.normalizedParabolicIncidenceBridge_mod_one") (tags := "gap") (priority := "high")
Every parabolic line occurring when $`p\equiv1\pmod4` must be connected to the
admissible incidence graph, with the required distance bound.
:::

:::proof "parabolic_bridge_mod_one"
Fix $`i^2=-1`.  A point on $`C_1(2)` has the form
$`(2,t,t+2i)`, and a point on $`C_1(-2)` has the form
$`(-2,t,-t+2i)`.  Hence either parabolic fiber meets every fiber on each
different coordinate axis.  Lean proves all six ordered axis pairs rather
than appealing informally to symmetry, and these intersections are nonzero
because the parabolic coordinate itself is nonzero.  The full-surface
same-axis common-neighbor wrapper is also proved, but its second edge can use
the origin when the other endpoint is a zero fiber.  That punctured subcase is
therefore retained as part of the graph-level gap.  The congruence
$`p\equiv1\pmod4` supplies the required square root of $`-1`.
:::

:::lemma_ "zero_fiber_bridge_mod_one" (parent := "incidence_geometry") (uses := "parabolic_fibers") (lean := "BGS.Markoff.normalizedZeroFiber_meets_distinctAxis, BGS.Markoff.normalizedExceptionalFiber_meets_distinctAxis, BGS.Markoff.normalizedExceptionalFiber_has_commonNeighbor, BGS.Markoff.normalizedExceptionalIncidenceBridge_mod_one") (tags := "gap") (priority := "high")
When $`p\equiv1\pmod4`, the normalized zero-coordinate fiber is also nonempty
and was excluded by the admissibility predicate.  It too has distance at most
two from every nonempty incidence vertex.
:::

:::proof "zero_fiber_bridge_mod_one"
If $`i^2=-1`, then $`C_1(0)` contains $`(0,t,it)` for every $`t`, so it meets
every second-axis fiber; the analogous formula meets every third-axis fiber.
Coordinate permutations prove the remaining ordered axis pairs.  Lean then
packages zero and parabolic values as exactly the exceptional coordinates
omitted from the admissible bridge and constructs a common neighboring fiber
on the full surface.  When the other fixed coordinate is zero, the displayed
witness can be the origin; the published punctured graph therefore still
requires a deliberately nonzero intermediate coordinate.
:::

:::lemma_ "incidence_bridge_mod_one" (parent := "incidence_geometry") (uses := "incidence_bridge_mod_one_admissible, parabolic_bridge_mod_one, zero_fiber_bridge_mod_one") (lean := "BGS.Markoff.NormalizedAdmissibleBridgeAt, BGS.Markoff.normalizedAdmissibleBridgeAt_of_incidenceBridgeAt, BGS.Markoff.NormalizedAdmissibleGraphBridgeAt, BGS.Markoff.normalizedAdmissibleGraphBridgeAt_of_fixedAxes, BGS.Markoff.NormalizedFullSurfaceFiberBridgeAt, BGS.Markoff.normalizedFullSurfaceFiberBridge_mod_one") (tags := "gap") (priority := "high")
For $`p\equiv1\pmod4`, the common-fiber bridge must hold for the punctured
incidence graph, including the zero and parabolic line fibers omitted by
admissibility.
:::

:::proof "incidence_bridge_mod_one"
The source only says this case is simpler.  Lean now transports the
original-coordinate admissible bridge through the explicit multiplication-by-three
equivalence, proves that admissibility is exactly the complement of normalized
values $`0,\pm2`, and applies actual point permutations for all nine ordered
axis pairs.  If either endpoint is exceptional, the explicit zero/parabolic
line formula gives a common fiber on the full normalized surface; otherwise
the transported admissible bridge does.  This is not yet the published graph
theorem because adjacency is computed inside $`X^*(p)`: for example,
$`C_1(0)\cap C_2(0)` contains the origin on the full surface but is empty after
puncturing.  The remaining proof must ensure every chosen intersection witness
is nonzero, with a separate treatment of zero--zero fiber pairs.  The
admissible branch also still inherits the exposed Hasse bound.
:::

:::proposition "incidence_diameter_two" (parent := "incidence_geometry") (uses := "incidence_bridge_mod_three, incidence_bridge_mod_one")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "10, Proposition 8"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 754
        endLine := 770
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every sufficiently large prime, the incidence graph is connected and has
diameter two.
:::
