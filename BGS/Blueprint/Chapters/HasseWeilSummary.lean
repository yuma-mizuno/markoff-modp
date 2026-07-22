import BGS.HasseWeil.GeneralBivariateAffineHasseWeil
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

set_option verso.blueprint.foldCodeBlocks true
set_option verso.blueprint.externalCode.sourceLinkTemplate
  "https://github.com/search?q={module}&type=code"

#doc (Manual) "Hasse--Weil" =>

:::group "hasse_weil"
Hasse--Weil
:::

The BGS argument uses Hasse--Weil only through a uniform affine point-count
estimate for geometrically irreducible bivariate equations.  This chapter
keeps the complete mathematical route to that estimate in one place, while
the dependency graph treats the proved affine theorem as one input to the
split, nonsplit, and cage counts.

The selected proof follows Henning Stichtenoth,
[\"Algebraic Function Fields and Codes\", second edition, Chapter
5](https://doi.org/10.1007/978-3-540-76878-4), especially Theorem 5.2.1,
Proposition 5.2.6, Lemma 5.2.7, Proposition 5.2.8, and the normal-closure
argument on pages 205--206.  The formal theorem is slightly coarser than the
optimal projective constant but has the square-root scale needed by BGS.

# Closed function-field estimate

Let $`K` be a finite field of cardinality $`q`, and let $`F/K(X)` be finite
separable with full constant field exactly $`K`.  Lean proves

$$`
  \left|N_1(F)-q-1\right|
    \le (2g(F)+1)\sqrt q,
`

where $`N_1(F)` is the number of degree-one places.  The proof has four
subsections.

## Square-field Stepanov upper bound

Over a sufficiently large square field, choose a Riemann space with enough
coefficients to impose the Frobenius restrictions used by the
Bombieri--Stepanov auxiliary function.  At every rational place, either the
auxiliary function vanishes or its principal divisor has controlled positive
order.  Summing local orders and comparing them with the pole divisor gives a
one-sided estimate

$$`
  N_1(E) \le |k| + 1 + A + B\sqrt{|k|},
`

with $`A` and $`B` depending only on the degree and genus of the fixed
function field.  Riemann--Roch supplies the required dimension budget.

The formal boundary is implemented by the square-field Stepanov auxiliary,
zero-count, and automatic Riemann-space modules imported by
`FiniteExtensionHasseWeil`.

## Exact constant extensions and Frobenius twists

Passing from $`K` to a finite extension $`S` must preserve the full constant
field and the genus.  Lean constructs the exact constant extension as the
fraction field of the tensor product, proves compatibility at finite and
infinity places, computes the different coefficients, and derives genus
invariance.

For a Galois extension $`N/C(X)`, Frobenius-twist fixed fields $`N_\gamma`
have the same degree and genus.  Every rational place is counted by the
appropriate twists with exact finite-place multiplicity, while the infinity
contribution is uniformly bounded.  Averaging the one-sided Stepanov bounds
therefore produces a two-sided estimate for the fixed tower.

## Normal closure and divisible extension degrees

For a general finite separable $`F/K(X)`, take its normal closure and enlarge
the base to the full algebraic constant field $`C` of that closure.  The
formalization proves that the normal closure is Galois over $`C(X)` and that
the original exact constant extensions are recovered by the corresponding
intermediate fields.

Choose the auxiliary constant field in a degree divisible by the relevant
Galois orders and even enough to be a square.  If

$$`H=(g_N+1)(g_N+2),`

the fixed-tower estimate gives constants $`A,B` such that for every positive
$`n`,

$$`
  \left|N_{2Hn}(F)-q^{2Hn}-1\right|
    \le A+Bq^{Hn}.
`

Only this single divisible subsequence is needed.

## Zeta trace and the spectral step

The closed-place Euler recurrence and Riemann--Roch give a rational zeta
function and a finite trace formula

$$`
  N_m(F)=q^m+1-\sum_i\alpha_i^m.
`

If one $`\alpha_i` had absolute value greater than $`\sqrt q`, its powers on
the degrees $`2Hn` would eventually dominate every other term, contradicting
the preceding square-root-scale estimate.  Hence every reciprocal-root
parameter has norm at most $`\sqrt q`; the degree-one trace formula yields the
displayed closed function-field estimate.

:::theorem "closed_hasse_weil" (parent := "hasse_weil") (lean := "BGS.HasseWeil.finiteExtensionClosedPlaceHasseWeil") (tags := "proved-in-lean, closed-function-field") (priority := "high")
For a finite separable function field with exact finite constant field, the
degree-one place count differs from $`q+1` by at most
$`(2g+1)\sqrt q`.  The mathematical route is Stichtenoth, Chapter 5,
Theorems 5.2.1 and 5.2.3 and Proposition 5.2.6 through Proposition 5.2.8,
pages 197--206.
:::

# From a plane curve to the BGS estimate

Let $`f(x,y)` be geometrically irreducible over $`K`, with positive supplied
bidegree bounds $`d_x,d_y`.

## Function field and genus

When both coordinate derivatives are nonzero, the normalization of the plane
curve has a finite separable function field over $`K(X)`.  Geometric
irreducibility proves that its exact constant field is $`K`, and the bidegree
calculation gives

$$`g\le(d_x-1)(d_y-1).`

Thus the closed function-field theorem applies to its rational places.

## Affine normalization error

Affine points inject into rational places away from the boundary.  Fiber
counts and the two coordinate projections bound the points lost at the
normalization boundary and the finitely many exceptional fibers.  Combining
this error with the genus estimate gives the universal coefficient $`8`.

## Frobenius deflation

In positive characteristic a coordinate derivative may vanish.  Lean
iteratively deflates the corresponding Frobenius power.  Deflation preserves
the set of rational affine zeros and never increases the supplied bidegrees.
If a coordinate degree becomes zero, geometric irreducibility forces the
remaining univariate equation to be linear, so the point count is exact.
This removes both separating-coordinate hypotheses.

:::theorem "affine_hasse_weil" (parent := "hasse_weil") (uses := "closed_hasse_weil") (lean := "BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree_of_separating, BGS.HasseWeil.abs_affinePlaneCurveZeros_card_sub_card_le_eight_mul_bidegree, BGS.HasseWeil.generalBivariateAffineHasseWeilTheorem") (tags := "proved-in-lean, dependency-complete, affine-plane") (priority := "high")

There is a natural number $`c>0`—formally $`c=8`—such that every finite
field $`K` and every geometrically irreducible bivariate polynomial $`f` of
positive bidegree at most $`(d_x,d_y)` satisfy

$$`
  \left|\#\{(x,y)\in K^2:f(x,y)=0\}-|K|\right|
    \le c\sqrt{|K|}\,d_xd_y.
`

`BGS.HasseWeil.generalBivariateAffineHasseWeilTheorem` is the proved
in-repository inhabitant used by all three BGS plane-curve applications.
:::
