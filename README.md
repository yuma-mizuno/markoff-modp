# Markoff surface modulo sufficiently large primes

This repository is a Lean 4 formalization of strong approximation for the
Markoff surface modulo sufficiently large primes. It formalizes the results of
Jean Bourgain, Alexander Gamburd, and Peter Sarnak (BGS) on the Markoff surface
in
[*Strong Approximation and Diophantine Properties of Markoff
Triples*](https://doi.org/10.1090/jams/1061).  Combined with
[William Chen's component-divisibility theorem](https://arxiv.org/abs/2011.12940v2),
which is formalized here using
[Daniel E. Martin's later elementary proof](https://arxiv.org/abs/2502.15960),
the BGS results yield strong approximation for all sufficiently large primes.

Most of the formalization was carried out by GPT-5.6-Sol.

## Formalized Result

For a commutative semiring $R$, define the Markoff surface by

```math
\mathrm{Markoff}(R)
  = \left\lbrace (x,y,z) \in R^3 : x^2+y^2+z^2=3xyz \right\rbrace.
```

Let

```math
p_0 = 35721^5\,2^{1547}\,32769^2+1.
```

**Theorem** (Strong approximation for large primes). For every prime $p$ with $p_0 \le p$, the map

```math
\mathrm{Markoff}(ℕ)
  \longrightarrow
\mathrm{Markoff}(ℤ/pℤ)
```

is surjective.

The corresponding eventual-surjectivity theorem is formalized as follows:
```lean4
import Mathlib

namespace Challenge

abbrev MarkoffNat :=
  {⟨x, y, z⟩ : ℕ × ℕ × ℕ | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev MarkoffModp (p : ℕ) :=
  {⟨x, y, z⟩ : ZMod p × ZMod p × ZMod p | x ^ 2 + y ^ 2 + z ^ 2 = 3 * x * y * z}

abbrev markoffNatToModp (p : ℕ) : MarkoffNat → MarkoffModp p :=
  fun ⟨⟨x, y, z⟩, h⟩ ↦ ⟨⟨x, y, z⟩, by simpa using congrArg (fun n : ℕ ↦ (n : ZMod p)) h⟩

theorem markoff_reduction_surjective_of_large_prime :
    ∃ p₀ : ℕ, ∀ (p : ℕ), p.Prime → p₀ ≤ p →
      Function.Surjective (markoffNatToModp p) := by
  sorry

end Challenge
```
[`Solution.lean`](Solution.lean) proves this statement by choosing the explicit
value of $p_0$ displayed above and applying the proved production endpoint.

The displayed cutoff is a 498-digit integer, approximately
$3.0828167547327980\times 10^{497}$.  It combines the formalized Euler-seven
maximal-divisor complement argument with the fully elementary weighted moment

```math
\tau(n)^{20}\le 2^{796}n^2.
```

For odd $p$, the exact neighboring-order identity
$\tau(p-1)\tau(p+1)=2\tau((p^2-1)/2)$ then yields a joint sum bound with
leading constant $2^{796}$.  No divisor table, factorization list, or large
finite certificate is used.  This improves the preceding formal cutoff by a
factor of approximately $1.1042\times 10^{71}$.

## Improving the cutoff

The cutoff displayed above is far from optimal. A smaller bound was proved by
Jillian Eddy, Elena Fuchs, Matthew Litman, Daniel Martin, and Nico Tripeny:

```math
p > 863\#\,53\#\,13\#\,7\#\,5\# \cdot 3^3 \cdot 2^5
  \approx 3.448 \times 10^{392}
```

in [*Connectivity of Markoff mod-$p$ graphs and maximal
divisors*](https://arxiv.org/abs/2308.07579), using maximal divisors and a
finite computation.

We invite contributors to push the formalized cutoff lower, and AI-assisted
pull requests are welcome. An improvement can replace the current
cutoff if it is proved in Lean and passes the `Comparator` challenge.

## Versions

- Lean: `leanprover/lean4:v4.32.0`
- mathlib: `81a5d257c8e410db227a6665ed08f64fea08e997`, locked in both
  `lakefile.lean` and `lake-manifest.json`

## Build

Run the following on any supported platform:

```console
lake exe cache get
lake build BGS
```

The committed `lake-manifest.json` pins every dependency revision.

## Continuous verification

The `Comparator` workflow independently checks the statement and axiom boundary
of `Challenge.markoff_reduction_surjective_of_large_prime`. Its solution is
backed by the sorry-free production endpoint
`BGS.Markoff.reduction_surjective_of_explicitBound`.

`Challenge.lean` is one self-contained trusted specification file. It imports
only `Mathlib`, defines the natural and modular Markoff surfaces and their
coordinatewise reduction map, and states eventual reduction surjectivity with
the single intentional `sorry` placeholder required by Comparator. It does not import
the production `BGS` library. The challenge is isolated in the non-default
`BGSComparator` library; the production `BGS` and `RiemannRoch` libraries have
sorry count zero, and `Solution.lean` imports the proved production endpoint
and supplies the explicit cutoff as its existential witness.
The workflow pins Comparator and lean4export revisions compatible with the
repository's Lean toolchain.

## Layout

```text
BGS/FiniteField/HasseFrobenius.lean  Frobenius kernel and exact degree wall
BGS/Markoff/Core/               semiring functor, natural connectivity, action, and rotations
BGS/Markoff/Opening/            cyclotomic opening and orbit lower bound
BGS/Markoff/MiddleGame/         Corvaja--Zannier order-escape argument
BGS/Markoff/TraceCurve/         trace-cover algebra and geometric models
BGS/Markoff/Endgame/            primitive trace counting and maximal rotation
BGS/Markoff/Endgame/Nonsplit/   descended nonsplit curve and Hasse adapter
BGS/Markoff/Cage/               direct cage plane models and connectivity
BGS/Markoff/Incidence/          incidence fibers, geometry, and point counts
BGS/Markoff/Assembly/           cross-stage composition and reduction surjectivity
BGS/Markoff/Diophantine/        CRT and local-product counting
BGS/Markoff/*.lean              folder-level import aggregators
BGS/NumberTheory/DivisorBound.lean  proved subpolynomial divisor estimate
BGS/CorvajaZannier/             numerical implications and corrected optimization
BGS/Markoff/Core/Statements.lean  exact logical statements of Theorems 1 and 2
Challenge.lean                  small auditable existence statement
Solution.lean                   explicit witness and production proof
comparator.json                 Comparator declaration mapping
formalization.yaml              public source and theorem alignment metadata
```
