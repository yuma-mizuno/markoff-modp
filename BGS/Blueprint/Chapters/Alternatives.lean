import BGS.Blueprint.Chapters.Assembly
import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Optional Stepanov route" =>

:::group "stepanov_appendix"
Stepanov alternative
:::

The appendix's auxiliary-polynomial alternative. It is intentionally not on
the selected proof path.

:::proposition "stepanov_rational_function_bound" (parent := "stepanov_appendix") (tags := "alternative, reconstruction-needed") (effort := "large")
%%%
source := {
  document := "bgs-published"
  spans := #[
    {
      page := "29--32, Proposition 20"
      text := some {
        path := "source/MarkoffDiophantine.tex"
        startLine := 1523
        endLine := 1628
      }
      pdf := some { path := "source/MarkoffDiophantine.pdf" }
    }
  ]
}
%%%

Reconstruct a correct version of the rational-function common-root bound with
all hypotheses on splitting, squarefreeness, disjoint divisors, degree,
characteristic, and derivative order made explicit.
:::

:::lemma_ "stepanov_linear_independence" (parent := "stepanov_appendix") (uses := "stepanov_rational_function_bound") (tags := "alternative, imported-lemma")
The generalized monomial linear-independence lemma (published Lemma 23), with
unambiguous indices and inequalities.
:::

:::lemma_ "stepanov_auxiliary_polynomial" (parent := "stepanov_appendix") (uses := "stepanov_linear_independence")
Construct a nonzero auxiliary rational function with controlled degree and
high-order vanishing, preferably using Hasse derivatives in characteristic
$`p`.
:::

:::proposition "stepanov_trace_bound" (parent := "stepanov_appendix") (uses := "stepanov_auxiliary_polynomial")
Derive a power-saving bound for the Markoff trace equation. Before this can
replace the selected Corvaja--Zannier route, the published parameter choice
and the inconsistent exponents in the corollaries must be repaired.
:::
