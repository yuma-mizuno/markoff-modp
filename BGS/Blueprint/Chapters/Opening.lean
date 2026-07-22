import BGS.Blueprint.Chapters.MiddleGame
import BGS.Markoff.Core.FiniteRotationEigenvalues
import BGS.Markoff.Opening.CyclotomicDefect
import BGS.Markoff.Opening.ParabolicPeriodicity
import BGS.Markoff.Opening.PeriodicSemisimple
import BGS.Markoff.Opening.TorsionTraces
import BGS.Markoff.Opening.FiniteOrbit
import BGS.Markoff.Opening.CyclotomicNorm
import BGS.Markoff.Opening.CompatibleRoots
import BGS.Markoff.Opening.AlgebraicClosureTransport
import BGS.Markoff.Opening.CyclotomicReduction
import BGS.Markoff.Opening.CyclotomicBound
import BGS.Markoff.Opening.OrderArithmetic
import BGS.Markoff.Opening.TraceOrderBound
import BGS.Markoff.Opening.RotationOrbitCard
import BGS.Markoff.Opening.OrbitCardBound
import BGS.Markoff.Opening.EveryOrbitLarge
import BGS.Markoff.Opening.UnitCircle
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "The opening and the orbit lower bound" =>

:::group "opening"
Cyclotomic orbit growth
:::

Cyclotomic lifting rules out uniformly small finite-field orbits.

:::lemma_ "finite_order_rotation_eigenvalues" (parent := "opening") (uses := "normalized_rotation_matrix") (lean := "BGS.Markoff.finiteOrderRotation_has_torsion_eigenvalue")
If a normalized rotation matrix has finite order over an algebraically closed
field, its trace parameter is $`w+w^{-1}` for a finite-order eigenvalue $`w`.
:::

:::proof "finite_order_rotation_eigenvalues"
Lean chooses a root of $`X^2-tX+1`, proves it is nonzero, and reconstructs the
trace identity.  If the eigenvalue squares to one it is visibly torsion;
otherwise the proved equality between matrix rotation order and eigenvalue
order transfers finite order to $`w`.
:::

:::lemma_ "parabolic_periodicity_obstruction" (parent := "opening") (uses := "parabolic_fibers, normalized_rotation_matrix") (lean := "BGS.Markoff.rhoSL_two_not_finiteOrder, BGS.Markoff.exists_nonzero_fixedVector_with_infiniteOrder_rotation, BGS.Markoff.iterate_normalizedRotate1_parabolicLineAtTwo_ne_self_of_pos, BGS.Markoff.iterate_normalizedRotate1_parabolicLineAtNegTwo_ne_self_of_pos, BGS.Markoff.iterate_normalizedRotate1_ne_self_of_mem_fiber1_two, BGS.Markoff.iterate_normalizedRotate1_ne_self_of_mem_fiber1_neg_two") (tags := "corrected-logic")
Periodicity of one point on a fiber does not by itself imply that the rotation
matrix has finite order.  The parabolic fibers must be excluded using their
explicit translation action.
:::

:::proof "parabolic_periodicity_obstruction"
Lean proves that the trace-$`2` matrix has infinite order in characteristic
zero, yet fixes the nonzero vector $`(1,1)`.  Thus the shortcut from a finite
point orbit to finite matrix order is false.  The repair is now proved in
Lean: every positive trace-$`2` iterate translates a line parameter by
$`2ni`, while even trace-$`-2` iterates translate by $`-4ki` and odd iterates
land on the opposite line.  Characteristic zero makes all these returns
impossible.  The fiber decompositions then show that no point of either
parabolic Markoff fiber is periodic.
:::

:::lemma_ "periodic_semisimple_eigenvalue" (parent := "opening") (uses := "finite_order_rotation_eigenvalues, torus_trace_coordinates") (lean := "BGS.Markoff.exists_splitTorusTrace_eq, BGS.Markoff.periodic_nonparabolic_fiber_has_torsion_eigenvalue")
A positive return of a point on a nonparabolic normalized fiber forces a
torsion eigenvalue $`w` with trace $`w+w^{-1}` equal to the fixed coordinate.
:::

:::proof "periodic_semisimple_eigenvalue"
Over an algebraically closed field, Lean chooses a nonzero root of
$`X^2-tX+1`.  Away from $`t^2=4`, the explicit split-fiber equivalence writes
the point with a nonzero eigen-coordinate $`s`, and rotation sends
$`s\mapsto sw`.  A positive return therefore gives $`w^n=1`.  The singular
trace-zero branch is handled separately: $`w+w^{-1}=0` gives $`w^2=-1` and
hence $`w^4=1`.
:::

:::lemma_ "finite_orbit_eigenvalues" (parent := "opening") (uses := "periodic_semisimple_eigenvalue, parabolic_periodicity_obstruction, gamma_action") (lean := "BGS.Markoff.normalizedRotate1Surface_injective, BGS.Markoff.exists_positive_normalizedRotate1Surface_return_of_finite_component, BGS.Markoff.finite_component_coordinate1_has_torsion_trace, BGS.Markoff.finite_normalizedGammaOrbit_has_torsion_traces") (priority := "high")
If a point over an algebraically closed characteristic-zero field has a finite
$`\Gamma`-orbit, every coordinate rotation has a positive point return. Therefore each
normalized coordinate has the form $`t+t^{-1}` for a root of unity $`t`.
Parabolic, nonsemisimple fibers must be excluded by their translation action,
not merely because the matrix has infinite order.
:::

:::proof "finite_orbit_eigenvalues"
Lean transports the original-coordinate $`\Gamma` action through the
normalization equivalence and identifies the first rotation with the explicit
word $`\mathrm{swap}_{23}\circ V_2`.  Every iterate stays in the transported
orbit.  Injectivity and finiteness give a positive point return.  The
semisimple theorem produces a torsion eigenvalue; the explicit parabolic
translation theorem rules out traces $`\pm2`.  Normalized coordinate swaps
repeat this argument for all three coordinates.  No matrix-order shortcut is
used.
:::

:::lemma_ "unit_circle_markoff_only_zero" (parent := "opening") (uses := "normalized_markoff_surface") (lean := "BGS.Markoff.real_normalizedMarkoff_eq_origin_of_firstCoordinate_mem_Icc, BGS.Markoff.real_normalizedMarkoff_eq_origin_of_coordinates_mem_Icc")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "22, Proposition 16 and equations (80)--(81)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1225
        endLine := 1240
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

If real numbers $`a,b,c` in $`[-2,2]` satisfy
$`a^2+b^2+c^2=abc`, then $`a=b=c=0`. Indeed,

$$`0\le a^2+b^2+c^2=|abc| \le (|a|^3+|b|^3+|c|^3)/3 \le 2(a^2+b^2+c^2)/3.`
:::

:::proof "unit_circle_markoff_only_zero"
Lean proves a stronger asymmetric form.  From $`|a|\le2` and
$`2|bc|\le b^2+c^2`, the Markoff equation gives

$$`a^2+b^2+c^2=abc=|abc|\le b^2+c^2.`

Thus $`a^2=0`, and substituting $`a=0` forces $`b^2+c^2=0` and hence
$`b=c=0`.  Only the first interval hypothesis is required; the published
three-coordinate version is an immediate wrapper.  The proof is axiom-clean
under the project standard.
:::

:::lemma_ "torsion_trace_markoff_only_zero" (parent := "opening") (uses := "cyclotomic_defect_ne_zero, unit_circle_markoff_only_zero") (lean := "BGS.Markoff.norm_coe_eq_one_of_isOfFinOrder, BGS.Markoff.complex_normalizedMarkoff_eq_origin_of_torsion_traces")
A complex normalized Markoff point whose three coordinates are reciprocal
traces of torsion eigenvalues is the origin.
:::

:::proof "torsion_trace_markoff_only_zero"
Lean first proves that a finite-order complex unit has norm one.  The Markoff
polynomial is then exactly the symmetric cyclotomic defect of the three
eigenvalues.  The proved zero-defect theorem forces all three traces to zero,
so extensionality identifies the point with the normalized origin.
:::

:::proposition "no_finite_orbit_char_zero" (parent := "opening") (uses := "finite_orbit_eigenvalues, torsion_trace_markoff_only_zero") (lean := "BGS.Markoff.complex_normalizedPoint_eq_origin_of_finite_normalizedGammaOrbit, BGS.Markoff.complex_normalizedGammaOrbit_infinite_of_ne_origin, BGS.Markoff.normalizedGammaOrbit_infinite_of_ne_origin_of_complexEmbedding, BGS.Markoff.algebraicClosureRat_normalizedGammaOrbit_infinite_of_ne_origin") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "22, Proposition 16"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1225
        endLine := 1240
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The punctured normalized Markoff surface over
$`\overline{\mathbb Q}` has no finite $`\Gamma`-orbit.
:::

:::proof "no_finite_orbit_char_zero"
Lean first proves the result over $`\mathbb C`: transported orbit finiteness
gives three torsion traces, and the cyclotomic defect argument forces the point
to be the origin.  It then defines coordinatewise transport of normalized
surface points along a field embedding and proves equivariance for all five
Markoff generators.  Closure induction, including products and inverses,
lifts every target $`\Gamma` word to the source.  Thus finite orbits map to
finite orbits, and the canonical algebraic closure of $`\mathbb Q` embeds into
$`\mathbb C`, proving the exact displayed statement.
:::

:::lemma_ "compatible_cyclotomic_lifts" (parent := "opening") (uses := "coordinate_order") (lean := "BGS.Markoff.exists_common_primitiveRoot_powers, BGS.Markoff.exists_common_primitiveRoot_powers_of_orderOf_dvd, BGS.Markoff.exists_residue_common_primitiveRoot_powers, BGS.Markoff.openingCyclotomicRoot_isPrimitive, BGS.Markoff.openingCyclotomicReduction_integerRoot, BGS.Markoff.openingCyclotomicPrime_isPrime, BGS.Markoff.openingCyclotomicPrime_under, BGS.Markoff.openingCyclotomicQuotientReduction_injective, BGS.Markoff.openingCyclotomicQuotientReduction_three_powers")
Let three semisimple finite-field rotation eigenvalues have exact orders
$`l_1,l_2,l_3`, and put $`n=\operatorname{lcm}(l_1,l_2,l_3)`. Choose powers
of one primitive $`n`-th root of unity whose simultaneous reduction gives the
three eigenvalues.
:::

:::proof "compatible_cyclotomic_lifts"
Lean first proves the group-theoretic compatibility: three $`n`-th roots in
the finite-field algebraic closure are simultaneous powers of one primitive
$`n`-th root when $`p` and $`n` are coprime.  It then uses the integral power
basis of $`\mathbb Q(\zeta_n)` to construct an actual map from its ring of
integers to that residue closure, sending the characteristic-zero generator
to the prescribed root.  The kernel is proved prime, its contraction is
exactly $`(p)`, and the injective quotient reduction sends all three powers to
the prescribed eigenvalues.  Thus the compatible prime and simultaneous
reduction are constructed in-repository, not assumed.
:::

:::definition "cyclotomic_defect" (parent := "opening") (uses := "compatible_cyclotomic_lifts, normalized_markoff_surface") (lean := "BGS.Markoff.cyclotomicTrace, BGS.Markoff.cyclotomicDefect") (tags := "corrected-definition") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "23, equation (82)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1241
        endLine := 1252
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For compatible roots $`\zeta_1,\zeta_2,\zeta_3`, define

$$`\eta=\sum_{j=1}^3(\zeta_j+\zeta_j^{-1})^2  -(\zeta_1+\zeta_1^{-1})(\zeta_2+\zeta_2^{-1})   (\zeta_3+\zeta_3^{-1}).`

The displayed published formula still mixes the indices $`l_1` and $`l_2`;
the definition above records the intended symmetric expression.
:::

:::lemma_ "cyclotomic_defect_ne_zero" (parent := "opening") (uses := "cyclotomic_defect, no_finite_orbit_char_zero") (lean := "BGS.Markoff.cyclotomicTrace_eq_two_mul_re, BGS.Markoff.cyclotomicTrace_eq_zero_of_defect_eq_zero, BGS.Markoff.cyclotomicDefect_ne_zero_of_some_trace_ne_zero")
Unless all three traces vanish, $`\eta\ne0`. Vanishing trace corresponds to
eigenvalue order $`4`.  The published version corrects historical v1's order-$`2`
claim.
:::

:::proof "cyclotomic_defect_ne_zero"
For three complex unit-circle lifts, Lean proves that each reciprocal-eigenvalue
trace is the real number $`2\operatorname{Re}(\zeta_j)`.  If the symmetric
defect vanished, these three real traces would form a normalized Markoff point
in $`[-2,2]^3`; the proved real opening lemma forces all three traces to zero.
Thus any nonzero trace makes the defect nonzero.  Connecting finite-field
order $`4` to the zero-trace branch remains part of the compatible-lift
interface.
:::

:::lemma_ "cyclotomic_defect_archimedean_bound" (parent := "opening") (uses := "cyclotomic_defect") (lean := "BGS.Markoff.norm_cyclotomicTrace_le_two, BGS.Markoff.norm_cyclotomicDefect_le_twenty")
Every complex unit-circle specialization of $`\eta` has absolute value at most
$`20`.
:::

:::proof "cyclotomic_defect_archimedean_bound"
Each trace has norm at most $`2` by the triangle inequality.  The three square
terms contribute at most $`12` and the triple product at most $`8`, giving the
uniform bound $`20`.  This is proved directly in Lean and axiom-audited.
:::

:::lemma_ "cyclotomic_defect_norm_bound" (parent := "opening") (uses := "cyclotomic_defect_ne_zero, cyclotomic_defect_archimedean_bound") (lean := "BGS.Markoff.isIntegral_cyclotomicDefect_of_primitiveRoots, BGS.Markoff.cyclotomicDefect_integerNorm_natAbs_le_twenty_pow_totient, BGS.Markoff.cyclotomicDefect_integerNorm_natAbs_pos")
Multiplying the conjugate bounds in the cyclotomic number field gives

$$`0<|N_{\mathbb Q(\zeta_n)/\mathbb Q}(\eta)| \le20^{\varphi(n)}\le20^n.`
:::

:::lemma_ "prime_dvd_defect_norm" (parent := "opening") (uses := "compatible_cyclotomic_lifts, cyclotomic_defect") (lean := "BGS.Markoff.openingCyclotomicReduction_integerTrace, BGS.Markoff.openingCyclotomicReduction_integerDefect, BGS.Markoff.residueCyclotomicDefect_eq_zero_of_normalizedMarkoff, BGS.Markoff.openingCyclotomicIntegerDefect_mem_prime_of_normalizedMarkoff, BGS.Markoff.prime_dvd_integerNorm_of_quotient_eq_zero, BGS.Markoff.modulus_le_twenty_pow_totient_of_cyclotomicDefect_reduction")
Reduction of the compatible roots modulo a prime over $`p` makes the Markoff
equation hold, so that prime divides $`\eta` and hence $`p` divides the integer
norm of $`\eta`.
:::

:::proof "prime_dvd_defect_norm"
Lean defines the reciprocal traces and symmetric defect directly in the
cyclotomic ring of integers.  The constructed reduction sends each integral
trace to its prescribed residue trace and sends the integral defect to the
normalized Markoff polynomial.  Hence a residue Markoff point puts the defect
in the selected prime above $`p`, giving divisibility of its integer norm.
For a nonorigin residue point, a complex embedding and the proved unit-circle
argument show that the characteristic-zero defect is nonzero.
:::

:::lemma_ "coordinate_order_lower_bound" (parent := "opening") (uses := "cyclotomic_defect_norm_bound, prime_dvd_defect_norm") (lean := "BGS.Markoff.modulus_le_twenty_pow_totient_of_compatible_residue_traces, BGS.Markoff.twenty_pow_totient_le_twenty_pow, BGS.Markoff.lcm_three_le_product, BGS.Markoff.product_le_max_cube, BGS.Markoff.modulus_le_twenty_pow_max_order_cube_of_lcm_totient_bound, BGS.Markoff.exists_residueClosure_eigenvalue_of_trace, BGS.Markoff.exists_exact_eigenvalue_orders_with_cyclotomic_bound, BGS.Markoff.eigenvalueOrder_le_normalizedGammaOrbit_ncard")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "23--24, equations (83)--(88)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1251
        endLine := 1284
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For a nonzero finite-field Markoff point,

$$`p\le20^n,\qquad n=\operatorname{lcm}(l_1,l_2,l_3) \le l_1l_2l_3.`

Thus $`max(l_1,l_2,l_3)^3\ge\log_{20}p`. A separate elementary branch
handles parabolic coordinates.
:::

:::proof "coordinate_order_lower_bound"
For the common conductor $`n`, Lean now proves the concrete bound
$`p\le20^{\varphi(n)}` from the compatible residue traces.  It then proves
$`\varphi(n)\le n`, bounds the three-order lcm by $`l_1l_2l_3`, and bounds
that product by $`\max(l_1,l_2,l_3)^3`.  Consequently
$`p\le20^{\max(l_1,l_2,l_3)^3}`.  Lean now performs finite-field trace
classification for every coordinate of an arbitrary nonorigin normalized
point, including explicit eigenvalues $`\pm1` for parabolic traces, proves the
three exact eigenvalue orders are coprime to $`p`, and derives this cube bound.
Lean then bounds each eigenvalue order by the full Gamma-orbit cardinality.
Nonzero nonparabolic traces use the exact split or norm-one rotation-cycle
cardinality.  Trace zero is handled by four explicit distinct orbit points,
and parabolic eigenvalue orders $`1` or $`2` are handled by two explicit
distinct orbit points; they are not confused with the unipotent matrix orders
$`p` and $`2p`.
:::

:::theorem "orbit_card_lower_bound" (parent := "opening") (uses := "coordinate_order_lower_bound, rotation_orbit_card") (lean := "BGS.Markoff.normalizedSurfaceRotationCycle_subset_normalizedGammaOrbit, BGS.Markoff.normalizedSurfaceRotationCycle_card, BGS.Markoff.normalizedRotationCycle_card_le_normalizedGammaOrbit_ncard, BGS.Markoff.prime_le_twenty_pow_normalizedGammaOrbit_ncard_cube, BGS.Markoff.normalizedGammaOrbit_normalization_eq_image, BGS.Markoff.normalizedGammaOrbit_normalization_ncard, BGS.Markoff.prime_le_twenty_pow_gammaOrbit_ncard_cube")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "24, Proposition 17"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1282
        endLine := 1291
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Every $`\Gamma`-orbit in $`X^*(\mathbb F_p)` has cardinality $`m` satisfying

$$`p\le20^{m^3}.`

This exact inequality is the preferred Lean statement; the paper's
$`m\gg(\log p)^{1/3}` follows immediately.
:::

:::proof "orbit_card_lower_bound"
For $`p\ne2,3`, Lean chooses exact eigenvalues for the three normalized
coordinate traces, applies the cyclotomic norm estimate, and bounds all three
eigenvalue orders by the cardinality of the same normalized Gamma orbit,
using coordinate swaps to move the second and third coordinates into the
first position.  Hence $`p\le20^{m^3}`.  Finally, the normalization
equivalence is proved to carry the original Gamma orbit bijectively onto the
normalized Gamma orbit, so the identical inequality holds in the paper's
original Markoff coordinates.  The exclusions of $`2` and $`3` are explicit,
not typeclass-hidden.
:::

:::theorem "every_orbit_logarithmic_lower_bound" (parent := "opening") (uses := "orbit_card_lower_bound") (lean := "BGS.Markoff.subtypeVal_image_puncturedGammaOrbit, BGS.Markoff.puncturedGammaOrbit_ncard_eq_gammaOrbit_ncard, BGS.Markoff.prime_le_twenty_pow_puncturedGammaOrbit_ncard_cube, BGS.Markoff.one_third_mul_log_rpow_le_of_prime_le_twenty_pow_cube, BGS.Markoff.everyOrbitLargeAt_one_third, BGS.Markoff.theoremOne_everyOrbitLarge, BGS.Markoff.theoremOneStatement_of_eventually_hasGiantOrbit") (tags := "theorem-one, completed-conjunct") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "24, Proposition 17"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1282
        endLine := 1290
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

There is an absolute constant $`c>0` and a threshold $`p_0` such that every
punctured $`\Gamma`-orbit over every prime $`p\ge p_0` has cardinality at
least

$$`c(\log p)^{1/3}.`
:::

:::proof "every_orbit_logarithmic_lower_bound"
Lean proves that forgetting the nonzero proof identifies the punctured orbit
with the corresponding orbit in the full surface.  Taking logarithms in
$`p\le20^{m^3}` and cubing the nonnegative target gives the explicit safe
constant $`c=1/3` for every prime $`p\ge5`.  The result is packaged with the
exact quantifiers of the second conjunct of `TheoremOneStatement`.
:::
