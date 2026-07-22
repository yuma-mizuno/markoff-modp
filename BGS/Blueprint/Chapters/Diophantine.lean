import BGS.Blueprint.Chapters.Assembly
import BGS.Markoff.Diophantine.CoordinateCoprimeProduct
import BGS.Markoff.Diophantine.CoordinateZeroPatternCounts
import BGS.Markoff.Diophantine.LocalCounts
import BGS.Markoff.Diophantine.PrimewiseCRT
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "The Diophantine application" =>

:::group "diophantine_application"
Prime factors of Markoff numbers
:::

The published Section 7: product-modulus transitivity, a finite local sieve,
and orbit equidistribution imply that almost all Markoff numbers have
arbitrarily many distinct prime factors.

:::definition "good_squarefree_modulus" (parent := "diophantine_application") (uses := "strong_approximation") (tags := "published-primary, specification") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "26, equation (93)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1381
        endLine := 1394
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Let $`\mathcal Q` be a finite set of distinct primes
$`p\equiv1\pmod4` at which strong approximation holds.  Put

$$`q=\prod_{p\in\mathcal Q}p,
\qquad L_{\mathcal Q}=\sum_{p\in\mathcal Q}\frac1p.`

For composite $`q`, define $`X^*_{\mathcal Q}(q)` primewise as
$`\prod_{p\in\mathcal Q}X^*(p)`.  It is not the naive complement of the single
origin in $`X(\mathbb Z/q\mathbb Z)`: every local component must be punctured.
This distinction is required for the displayed Chinese-remainder product.
:::

:::lemma_ "primewise_punctured_crt" (parent := "diophantine_application") (uses := "good_squarefree_modulus, original_markoff_surface") (lean := "BGS.Markoff.PrimewisePuncturedMarkoffSurface, BGS.Markoff.CRTPrimewisePuncturedMarkoffSurface, BGS.Markoff.primewisePuncturedCRTEquiv, BGS.Markoff.ne_surfaceOrigin_iff_exists_crt_ne_surfaceOrigin, BGS.Markoff.exists_naivePunctured_not_primewisePunctured, BGS.Markoff.primewisePuncturedCRTEquiv_vieta1, BGS.Markoff.primewisePuncturedCRTEquiv_vieta2, BGS.Markoff.primewisePuncturedCRTEquiv_vieta3, BGS.Markoff.primewisePuncturedCRTEquiv_swap12, BGS.Markoff.primewisePuncturedCRTEquiv_swap23") (tags := "finite-ring, specification") (priority := "high")
The Chinese remainder equivalence restricts to

$$`X^*_{\mathcal Q}(q)\simeq\prod_{p\in\mathcal Q}X^*(p),`

and intertwines coordinate reduction and every Markoff move.
:::

:::lemma_ "published_prime_surface_card" (parent := "diophantine_application") (uses := "primewise_punctured_crt") (lean := "BGS.Markoff.normalizedPuncturedSurface_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.puncturedMarkoffSurface_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.primewisePuncturedMarkoffSurface_card_eq_of_mod_four_eq_one, BGS.Markoff.crtPrimewisePuncturedMarkoffSurface_card_eq_of_mod_four_eq_one") (tags := "finite-field-count")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "26, equations (94)--(95)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1395
        endLine := 1404
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For $`p\equiv1\pmod4`,

$$`|X^*(p)|=p^2+3p,`

and therefore
$`|X^*_{\mathcal Q}(q)|=\prod_{p\in\mathcal Q}(p^2+3p)`.
:::

:::proof "published_prime_surface_card"
Lean counts the normalized surface by summing the exact number of roots of
the quadratic in the third coordinate.  The resulting double quadratic-character
sum is $`3p+1`; including the constant contribution gives $`p^2+3p+1`
points, and removing the origin gives $`p^2+3p`.  The explicit normalization
equivalence transports this to the original Markoff surface.  `Nat.card_pi`
and the primewise CRT equivalence then give the displayed product, without
replacing primewise puncturing by the naive global puncture.
:::

:::lemma_ "coordinate_zero_local_card" (parent := "diophantine_application") (uses := "published_prime_surface_card") (lean := "BGS.Markoff.normalizedPuncturedFiber1_zero_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.puncturedMarkoffFirstCoordinateZero_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.puncturedMarkoffSecondCoordinateZero_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.puncturedMarkoffThirdCoordinateZero_zmod_card_eq_of_mod_four_eq_one") (tags := "finite-field-count")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "26, equation (96)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1405
        endLine := 1414
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For any one coordinate, exactly $`2p-2` points of $`X^*(p)` have that
coordinate zero.  This uses $`p\equiv1\pmod4` to count the two nonzero lines
on $`y^2+z^2=0` and removes their common origin.
:::

:::proof "coordinate_zero_local_card"
For the normalized first-coordinate-zero fiber, Lean constructs an equivalence
with pairs $`(y,z)` satisfying $`z^2=-y^2`.  The zero value of $`y` contributes
one root and each of the other $`p-1` values contributes two, giving $`2p-1`;
removing the common origin gives $`2p-2`.  Normalization transports the count
to original coordinates, and the two coordinate-swap equivalences prove the
same formula for the second and third coordinates.
:::

:::lemma_ "coordinate_coprime_exact_product" (parent := "diophantine_application") (uses := "coordinate_zero_local_card, primewise_punctured_crt") (lean := "BGS.Markoff.puncturedMarkoffFirstCoordinateNonzero_zmod_card_eq_of_mod_four_eq_one, BGS.Markoff.primewisePuncturedFirstCoordinateNonzero_card_eq_of_mod_four_eq_one, BGS.Markoff.crtPrimewisePuncturedFirstCoordinateNonzero_card_eq_of_mod_four_eq_one, BGS.Markoff.primewisePuncturedFirstCoordinateNonzero_proportion_eq_product_one_sub, BGS.Markoff.crtPrimewisePuncturedFirstCoordinateNonzero_proportion_eq_product_one_sub")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "27, equations (97)--(99)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1415
        endLine := 1435
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The proportion of $`\xi` for which $`x(\xi)` is coprime to $`q` is

$$`\prod_{p\in\mathcal Q}
\left(1-\frac{2p-2}{p^2+3p}\right).`

Equivalently, the numerator is $`\prod_{p\in\mathcal Q}(p^2+p+2)`.
:::

:::proof "coordinate_coprime_exact_product"
Lean defines the local first-coordinate-nonzero subtype, obtains its cardinality
$`p^2+p+2` by subtracting the proved $`2p-2` zero locus from the full
$`p^2+3p` surface, and takes the finite product over the primewise carrier.
The CRT-restricted carrier is transported through the primewise equivalence.
Over $`\mathbb Q`, field simplification proves the exact factor identity
$`(p^2+p+2)/(p^2+3p)=1-(2p-2)/(p^2+3p)`.
:::

:::lemma_ "coordinate_coprime_product_formula" (parent := "diophantine_application") (uses := "coordinate_coprime_exact_product") (tags := "analytic-number-theory")
Uniformly in the finite set $`\mathcal Q`, the exact local product satisfies

$$`\prod_{p\in\mathcal Q}
\left(1-\frac{2p-2}{p^2+3p}\right)\asymp e^{-2L_{\mathcal Q}},`

with constants uniform in the finite set $`\mathcal Q`.
:::

:::lemma_ "coordinate_prescribed_zero_pattern" (parent := "diophantine_application") (uses := "coordinate_coprime_exact_product") (lean := "BGS.Markoff.primewisePuncturedFirstCoordinateZeroExactlyOn, BGS.Markoff.primewisePuncturedFirstCoordinateZeroExactlyOn_card_eq_of_mod_four_eq_one, BGS.Markoff.crtPrimewisePuncturedFirstCoordinateZeroExactlyOn, BGS.Markoff.crtPrimewisePuncturedFirstCoordinateZeroExactlyOn_card_eq_of_mod_four_eq_one")
For a prescribed subset $`\mathcal R\subseteq\mathcal Q`, the number of
primewise-punctured points whose first coordinate vanishes exactly at the
indices in $`\mathcal R` is

$$`\prod_{p\in\mathcal R}(2p-2)
\prod_{p\in\mathcal Q\setminus\mathcal R}(p^2+p+2).`
:::

:::proof "coordinate_prescribed_zero_pattern"
Lean defines the exact zero-pattern subtype as a dependent product of the
local zero and nonzero loci.  `Nat.card_pi` and the two proved local counts
give the displayed product.  Restricting the primewise CRT equivalence proves
the identical formula in the single-residue-ring presentation.
:::

:::lemma_ "coordinate_divisible_by_exactly_t_primes" (parent := "diophantine_application") (uses := "coordinate_coprime_product_formula, coordinate_prescribed_zero_pattern")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "27--28, equations (100)--(102)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1436
        endLine := 1470
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Let $`X^*_{\nu}(q)` consist of the primewise-punctured points whose first
coordinate vanishes modulo at most $`\nu` primes in $`\mathcal Q`.  Then

$$`|X^*_{\nu}(q)|
\ll |X^*_{\mathcal Q}(q)|(\nu+1)
       (2e^2L_{\mathcal Q})^\nu e^{-2L_{\mathcal Q}}.`

The proof expands the independent local choices, sums over subsets of size
$`t\le\nu`, and applies the elementary symmetric-polynomial bound by
$`L_{\mathcal Q}^t`.
:::

:::lemma_ "product_modulus_transitive" (parent := "diophantine_application") (uses := "good_squarefree_modulus, primewise_punctured_crt, meiri_puder_product_transitivity") (tags := "deep-external, group-comparison") (priority := "high")
The Markoff action on $`X^*_{\mathcal Q}(q)` is transitive.  This is the exact
downstream wrapper around the Meiri--Puder and Goursat input; it must verify
that the group acting on each factor is the same group used in the formal
strong-approximation statement.
:::

:::lemma_ "good_prime_reciprocal_mass" (parent := "diophantine_application") (uses := "theorem_two, primes_one_mod_four_reciprocal_diverges") (tags := "analytic-number-theory") (priority := "high")
For every real $`A>0`, there is a finite set $`\mathcal Q` of good primes
$`p\equiv1\pmod4` with $`L_{\mathcal Q}>A`.

The deduction must show that a set having at most $`T^\varepsilon`
exceptional primes for every $`\varepsilon>0` has convergent reciprocal sum;
subtracting it from the divergent reciprocal sum in the progression leaves
arbitrarily large good-prime mass.
:::

:::lemma_ "fixed_modulus_markoff_equidistribution" (parent := "diophantine_application") (uses := "product_modulus_transitive, mirzakhani_markoff_orbit_equidistribution") (tags := "deep-external, homogeneous-dynamics") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "28, equations (103)--(104)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1471
        endLine := 1500
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For fixed $`\mathcal Q` and $`\nu`, integral Markoff points of height at most
$`T` reduce into $`X^*_{\nu}(q)` with limiting proportion
$`|X^*_{\nu}(q)|/|X^*_{\mathcal Q}(q)|`.  The limit $`T\to\infty` is taken
with $`q` fixed; only afterwards may $`\mathcal Q` grow.
:::

:::lemma_ "ordered_markoff_points_few_prime_factors" (parent := "diophantine_application") (uses := "coordinate_divisible_by_exactly_t_primes, fixed_modulus_markoff_equidistribution, good_prime_reciprocal_mass")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "28--29, equation (105)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1491
        endLine := 1510
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For each coordinate and fixed $`\nu`, the upper density of ordered integral
Markoff points whose coordinate has at most $`\nu` distinct prime factors is
zero.  First bound the limsup by

$$`(\nu+1)(2e^2L_{\mathcal Q})^\nu e^{-2L_{\mathcal Q}},`

then let $`L_{\mathcal Q}` tend to infinity.
:::

:::lemma_ "ordered_points_to_markoff_multiset" (parent := "diophantine_application") (uses := "ordered_markoff_points_few_prime_factors") (tags := "gap, multiplicity, diophantine") (effort := "large") (priority := "high")
Transfer the density-zero statement for ordered Markoff triples of bounded sup
norm to the multiset $`\mathbb M_s` of their largest coordinates, counted with
the multiplicity used in the introduction.  The proof must identify the
positive solutions inside the integral orbit, control signs and coordinate
permutations, and show that stabilizer and repeated-largest-coordinate
multiplicities cancel in the ratio.  The published sentence “hence to the
maximum” does not supply this bridge.
:::

:::theorem "highly_composite_markoff_numbers" (parent := "diophantine_application") (uses := "ordered_points_to_markoff_multiset") (tags := "main-result, diophantine, published-primary") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "26--29, Theorem 19 and proof"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1358
        endLine := 1517
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every fixed $`\nu\ge1`, as $`T\to\infty`, the number of elements
$`m\le T` of the Markoff multiset $`\mathbb M_s` having at most $`\nu`
distinct prime factors is little-$`o` of the total number of elements of
$`\mathbb M_s` up to $`T`.
:::
