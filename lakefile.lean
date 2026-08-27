import Lake

open Lake DSL

-- Keep Mathlib synchronized with the stable Lean 4.32.0 toolchain used by
-- this submission.
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
    "81a5d257c8e410db227a6665ed08f64fea08e997"

package BGS where
  precompileModules := false

lean_lib RiemannRoch where
  globs := #[`RiemannRoch.+]

@[default_target]
lean_lib BGS where

-- The Comparator specification intentionally contains one proof placeholder.
-- Keep them outside the production library while still making the challenge
-- and solution modules available to the independent CI audit.
lean_lib BGSComparator where
  roots := #[`Challenge, `Solution]
