import BGS.Markoff.Core.Basic
import BGS.Markoff.Core.Normalization
import BGS.Markoff.Core.Statements
import BGS.Markoff.Assembly.ExceptionalPrimeCount
import BGS.Markoff.Assembly.GiantOrbit
import BGS.Markoff.Assembly.Unconditional
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Scope, coordinates, and main statements" =>

:::source_document "bgs-published"
%%%
title := "Bourgain--Gamburd--Sarnak, Strong Approximation and Diophantine Properties of Markoff Triples"
kind := .pdf
pdf := "source/MarkoffDiophantine.pdf"
pageRoot := "source"
%%%
:::

:::source_document "bgs-v1"
%%%
title := "Bourgain--Gamburd--Sarnak, Markoff Surfaces and Strong Approximation: 1 (v1; historical)"
kind := .text
pageRoot := "Papers/arXiv-1607.01530v1"
%%%
:::

:::source_document "martin-markoff"
%%%
title := "Daniel E. Martin, A New Proof of Chen's Theorem for Markoff Graphs (arXiv:2502.15960v1)"
kind := .pdf
pdf := "source/MartinChenMarkoff.pdf"
pageRoot := "source"
%%%
:::

The published BGS manuscript is the primary source of record.  Source chips give
its printed page and, when available, exact lines in the checked semantic
LaTeX reconstruction.  That reconstruction is navigation evidence, not an
author-supplied source.  The BGS v1 source is retained only for revision history.
Martin's arXiv PDF and author-supplied TeX are recorded separately for the
elementary orbit-divisibility proof added to the formalization.
The Eddy--Fuchs--Litman--Martin--Tripeny preprint is likewise represented by
its external arXiv PDF.  Source descriptions in the explicit-cutoff chapter
also record exact line spans in the downloaded author-supplied TeX used for
the audit, without creating a broken link to that ignored local research file.
The Blueprint separates published assertions, repaired statements needed by
the proof, and genuinely external inputs.  An entry is not formalized merely
because the paper calls it clear or cites a broad theorem.

:::group "foundations"
Markoff foundations
:::

The two coordinate systems, the Markoff moves, their orbits, and the two main
theorems.

:::definition "original_markoff_point" (parent := "foundations") (lean := "BGS.Markoff.Point")
A point is an ordered triple over a commutative ring.
:::

:::definition "original_markoff_surface" (parent := "foundations") (lean := "BGS.Markoff.markoffPolynomial, BGS.Markoff.IsMarkoff, BGS.Markoff.surface, BGS.Markoff.puncturedSurface")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "1, equation (1)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 431
        endLine := 433
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

In the paper's original coordinates, the Markoff surface over a ring $`R` is
the zero locus

$$`x_1^2+x_2^2+x_3^2-3x_1x_2x_3=0.`

For a field $`F`, the punctured surface $`X^*(F)` is obtained by removing the
origin.  Over a general ring $`R`, the corresponding scheme-theoretic open
condition is instead $`x_1R+x_2R+x_3R=R`; the formal punctured dynamics below
are instantiated over the finite fields $`\mathbb F_p`.
:::

:::definition "normalized_markoff_surface" (parent := "foundations") (uses := "original_markoff_surface") (lean := "BGS.Markoff.NormalizedPoint, BGS.Markoff.normalizedPolynomial, BGS.Markoff.IsNormalizedMarkoff, BGS.Markoff.normalizedSurface, BGS.Markoff.normalizedPuncturedSurface") (tags := "specification, normalization") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "6, normalized equation"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 584
        endLine := 593
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every ring in which $`3` is a unit, put $`u_i=3x_i`. The normalized equation
is

$$`u_1^2+u_2^2+u_3^2=u_1u_2u_3.`

All rotation traces in the rest of the Blueprint refer to $`u_i`, not $`x_i`.
The published Section 2 now announces this normalization explicitly; the
typed equivalence remains necessary because the introduction and Section 7
use the original Diophantine coordinates.
:::

:::lemma_ "scale_equiv" (parent := "foundations") (uses := "original_markoff_surface, normalized_markoff_surface") (lean := "BGS.Markoff.normalizationEquiv, BGS.Markoff.normalizationSurfaceEquiv, BGS.Markoff.normalizedPolynomial_toNormalized, BGS.Markoff.toNormalized_vieta1, BGS.Markoff.toNormalized_vieta2, BGS.Markoff.toNormalized_vieta3, BGS.Markoff.toNormalized_swap12, BGS.Markoff.toNormalized_swap23, BGS.Markoff.toNormalized_rotate1") (tags := "missing-from-paper, specification") (effort := "small") (priority := "high")
If $`3` is invertible, coordinatewise multiplication by $`3` is an equivalence
between the original and normalized Markoff surfaces. It fixes the origin and
intertwines every coordinate permutation and Vieta move.
:::

:::proof "scale_equiv"
Expand both equations and both versions of each Vieta move. This elementary
bridge is absent from the paper but is mandatory before any conic formula can
be assigned a type.
:::

:::definition "vieta_moves" (parent := "foundations") (uses := "original_markoff_surface") (lean := "BGS.Markoff.vieta1, BGS.Markoff.vieta2, BGS.Markoff.vieta3, BGS.Markoff.vieta1Equiv, BGS.Markoff.vieta2Equiv, BGS.Markoff.vieta3Equiv")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "1, Introduction"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 440
        endLine := 449
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

The three Vieta maps replace one coordinate by three times the product of the
other two minus the old coordinate. Each is an involution.
:::

:::lemma_ "moves_preserve_surface" (parent := "foundations") (uses := "vieta_moves, original_markoff_surface") (lean := "BGS.Markoff.markoffPolynomial_vieta1, BGS.Markoff.markoffPolynomial_vieta2, BGS.Markoff.markoffPolynomial_vieta3, BGS.Markoff.markoffPolynomial_swap12, BGS.Markoff.markoffPolynomial_swap23")
Every Vieta move and coordinate permutation preserves the Markoff polynomial.
This elementary algebraic layer is already formalized.
:::

:::definition "fundamental_rotation" (parent := "foundations") (uses := "vieta_moves") (lean := "BGS.Markoff.rotate1, BGS.Markoff.markoffPolynomial_rotate1")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "6, equation (7)"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 597
        endLine := 608
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Fixing the first original coordinate gives

$$`(x_2,x_3)\longmapsto(x_3,3x_1x_3-x_2).`

In normalized coordinates its matrix is
$`\left(\begin{smallmatrix}0&1\\-1&u_1\end{smallmatrix}\right)`.
:::

:::definition "gamma_action" (parent := "foundations") (uses := "moves_preserve_surface") (lean := "BGS.Markoff.MarkoffSurface, BGS.Markoff.PuncturedMarkoffSurface, BGS.Markoff.Gamma, BGS.Markoff.gammaGenerators, BGS.Markoff.puncturedGammaOrbit, BGS.Markoff.SamePuncturedComponent") (tags := "formalization-interface") (priority := "high")
For a commutative ring $`R`, $`\Gamma(R)` is the subgroup of permutations of
the Markoff surface generated by the three Vieta involutions and coordinate
permutations. Its components are MulAction orbits. The final Lean definition
must act directly on the surface subtype, so preservation is part of the type.
The published introduction uses a Vieta-only $`\Gamma`, whereas historical v1
and this formal interface include coordinate permutations.  The selected
Martin argument is applied directly to orbits of this formal action.
:::

:::definition "strong_approximation" (parent := "foundations") (uses := "gamma_action, original_markoff_surface") (lean := "BGS.Markoff.StrongApproximationAt, BGS.Markoff.PuncturedMarkoffTransitiveAt, BGS.Markoff.IsExceptionalPrime, BGS.Markoff.puncturedMarkoffTransitiveAt_iff_strongApproximationAt")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "2, Conjecture 1"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 476
        endLine := 488
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For a prime $`p`, strong approximation is the surjectivity of reduction from
natural Markoff solutions to solutions modulo $`p`.  Lean names this
`StrongApproximationAt p`.  The finite-field action statement is named
`PuncturedMarkoffTransitiveAt p`: it says that $`\Gamma(\mathbb F_p)` is
transitive on $`X^*(\mathbb F_p)`.  Natural Markoff connectivity proves that
the two statements are equivalent.  The paper conjectures this property for
every prime; it does not prove it for every prime.
:::

:::theorem "theorem_one" (parent := "foundations") (uses := "gamma_action, original_markoff_surface") (lean := "BGS.Markoff.TheoremOneStatement, BGS.Markoff.theoremOneStatement_of_generalHasseWeil, BGS.Markoff.theoremOneStatement") (tags := "main-result, proved-in-lean, dependency-complete, unconditional-cz, unconditional-hasse-weil") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "3, Theorem 1"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 498
        endLine := 509
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

For every real $`\varepsilon>0`, all sufficiently large primes $`p` have a
$`\Gamma`-orbit $`\mathcal C(p)` in $`X^*(\mathbb F_p)` whose complement has
at most $`p^\varepsilon` points. There is also a positive absolute constant
$`c` such that every orbit has at least
$`c(\log p)^{1/3}` points for all sufficiently large $`p`.

The Lean proposition `BGS.Markoff.TheoremOneStatement` records these claims
separately, so that the first threshold may depend on $`\varepsilon` while
the constant in the second claim remains absolute.  The declaration
`BGS.Markoff.theoremOneStatement` proves it without external hypotheses: the
Corvaja--Zannier middle-game theorem and the general affine Hasse--Weil theorem
are both supplied in-repository.
:::

:::proof "theorem_one" (uses := "giant_orbit_assembly, every_orbit_logarithmic_lower_bound")
The giant-orbit assertion is assembled from the endgame, middle game, and an
explicit low-order trace count. The orbit lower bound comes from the corrected
cyclotomic opening argument. The paper never writes the low-order count.
:::

:::theorem "theorem_two" (parent := "foundations") (uses := "strong_approximation") (lean := "BGS.Markoff.TheoremTwoStatement, BGS.Markoff.theoremTwoStatement_of_generalHasseWeil, BGS.Markoff.theoremTwoStatement") (tags := "main-result, proved-in-lean, dependency-complete, unconditional-cz, unconditional-hasse-weil") (priority := "high")
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

Let $`E` be the primes for which strong approximation fails. For every real
$`\varepsilon>0`, the number of $`p\le T` in $`E` is at most $`T^\varepsilon`
when $`T` is sufficiently large.

The proposition `BGS.Markoff.TheoremTwoStatement` fixes the order of the
$`\varepsilon`, threshold, and $`T` quantifiers.  The declaration
`BGS.Markoff.theoremTwoStatement` derives it from the unconditional Theorem 1
route and Chen's orbit-divisibility theorem, using Martin's later elementary
proof.
:::

:::proof "theorem_two" (uses := "eventual_transitivity_from_chen_divisibility, chen_divisibility_exceptional_prime_count")
Chen's orbit-divisibility theorem, through Martin's elementary proof, upgrades
the giant orbit from Theorem 1 to transitivity at every sufficiently large
prime.  The exceptional set is therefore finite, which immediately implies
the published subpower count.  The original CKSZ route remains documented as
a source-faithful alternative, but is no longer a dependency of this
formalized proof.
:::

:::theorem "theorem_three" (parent := "foundations") (uses := "original_markoff_surface, strong_approximation") (tags := "main-result, diophantine") (priority := "high")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "3--4, Theorem 3"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 518
        endLine := 526
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Almost all Markoff numbers are composite.  The paper proves the stronger
statement that, for every fixed $`\nu`, the proportion of Markoff numbers with
at most $`\nu` distinct prime factors tends to zero; this is Theorem 19 and is
the actual downstream target recorded in the Diophantine chapter.
:::

:::proof "theorem_three" (uses := "highly_composite_markoff_numbers")
Specialize the highly-composite theorem to $`\nu=1`; a prime has at most one
distinct prime factor.  The proof path must pass through the product-modulus
transitivity and orbit-equidistribution inputs rather than treating Theorem 3
as an isolated sieve kernel.
:::
