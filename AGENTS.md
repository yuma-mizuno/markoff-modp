# Project guidance

- Treat `Papers/MarkoffDiophantine.pdf` as the primary source of record.
- Use `Papers/MarkoffDiophantine/MarkoffDiophantine.tex` for exact line-level
  navigation, while recording that it is a checked semantic reconstruction of
  the published PDF rather than author-supplied source.
- Retain `Papers/arXiv-1607.01530v1/PAPER1W.tex` only for historical comparison
  and for diagnosing changes made before publication.
- Preserve exact published-page and reconstructed-source-line provenance in
  declaration documentation and formalization metadata.
- Keep original Markoff coordinates and normalized trace coordinates
  type-distinct in names and statements.
- Define rotation order with `orderOf`; never copy the paper's quotient by an
  exponent without the required gcd.
- Do not hide missing curve geometry, incidence estimates, or rare-prime
  results behind axioms or vague helper lemmas.
- The selected middle-game path uses the Corvaja--Zannier bound. Keep the
  projective Szemeredi--Trotter and Stepanov routes optional until repaired.
- If a named argument seems necessary, reconsider explicit and implicit
  parameters at the definition site first.
- Keep `formalization.yaml` aligned with the corresponding Lean proof path,
  proof status, scope, and known limitations.
- Validate formal code with `lake build BGS` and keep the Comparator challenge,
  solution, and configuration aligned with the public endpoint.
