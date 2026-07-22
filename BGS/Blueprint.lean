import Verso
import VersoManual
import VersoBlueprint
import VersoBlueprint.Commands.Graph
import VersoBlueprint.Commands.Summary
import BGS.Blueprint.Chapters.ProofRoute
import BGS.Blueprint.Chapters.ExplicitStrongApproximation

open Verso.Genre
open Verso.Genre.Manual
open Informal

set_option maxRecDepth 100000
set_option verso.blueprint.foldCodeBlocks true
#doc (Manual) "Strong Approximation for Markoff surface" =>

The Markoff surface is defined by

$$`
  \operatorname{Markoff}(R)
    =\{(x,y,z)\in R^3:x^2+y^2+z^2=3xyz\}
`
for a commutative semiring $`R`.
It is conjectured that the reduction map
$$`
  \operatorname{Markoff}(\mathbb N)\longrightarrow
  \operatorname{Markoff}(\mathbb F_p)
`
is surjective for any prime $`p`. This conjecture is known as the
strong approximation conjecture for the Markoff surface.

*Theorem.* If $`p` is prime and
$$`
  2^9(48^3+1)^{18}
  \left(2^9(9^9)^{2^9}\right)^8+1\le p,
`
then the above map is surjective.

To prove surjectivity, put
$`\operatorname{Markoff}^*(\mathbb F_p)=
\operatorname{Markoff}(\mathbb F_p)\setminus\{(0,0,0)\}`.  Over a
commutative ring, coordinate permutations and the three Vieta involutions act
on the Markoff surface:

$$`
\begin{aligned}
  R_1(x,y,z)&=(3yz-x,y,z),\\
  R_2(x,y,z)&=(x,3xz-y,z),\\
  R_3(x,y,z)&=(x,y,3xy-z).
\end{aligned}
`

These maps preserve the Markoff equation and generate, together with the
coordinate permutations, the Markoff group $`\Gamma`.

The proof separates the two ingredients hidden in this formulation.  Every
nonzero natural-number solution lies in the orbit of $`(1,1,1)`, by the
classical descending Vieta argument.  For primes above the displayed cutoff,
the finite-field action is transitive on
$`\operatorname{Markoff}^*(\mathbb F_p)`.  Reduction
intertwines the generators, while the natural origin reduces to the
finite-field origin.  Natural connectivity makes reduction surjectivity
equivalent to finite-field transitivity, and the explicit transitivity result
therefore gives surjectivity on the full surface.

This Blueprint explains the completed formal proof.  The primary reference is
[Bourgain--Gamburd--Sarnak](https://doi.org/10.1090/jams/1061), supplemented
by the formalized Corvaja--Zannier and Hasse--Weil arguments and
[Chen's component-divisibility theorem](https://arxiv.org/abs/2011.12940),
for which the formalization follows
[Martin's later elementary proof](https://arxiv.org/abs/2502.15960).

The chapters follow the BGS proof in order: the Markoff surface and natural
connectivity, finite-field dynamics, opening, middle game, endgame, cage, and
final assembly.  Corvaja--Zannier is expanded
between the opening and middle game because it is the central middle-game
input.  Hasse--Weil remains one chapter with mathematical subsections between
the middle game and endgame because BGS uses it only as an affine point-count
theorem.  The final chapter turns the explicit transitivity theorem into the
stated reduction-surjectivity endpoint.  The dependency graph contains this
selected route only.

{include 0 strongApproximationSetup}
{include 0 strongApproximationOpening}
{include 0 BGS.Blueprint.Chapters.CorvajaZannier}
{include 0 strongApproximationMiddleGame}
{include 0 BGS.Blueprint.Chapters.HasseWeilSummary}
{include 0 strongApproximationEndgame}
{include 0 strongApproximationCage}
{include 0 strongApproximationAssembly}
{include 0 BGS.Blueprint.Chapters.ExplicitStrongApproximation}

{blueprint_graph (direction := LR)}
{blueprint_summary}
