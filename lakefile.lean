import Lake

open Lake DSL

-- Follow current mathlib. The checked-in manifest makes the exact resolved
-- revision reproducible.
require "leanprover-community" / "mathlib"

package BGS where
  precompileModules := false
  leanOptions := #[⟨`experimental.module, true⟩]

lean_lib RiemannRoch where
  globs := #[`RiemannRoch.+]

@[default_target]
lean_lib BGS where

-- The Comparator specification intentionally contains one proof placeholder.
-- Keep it outside the production library while still making the challenge and
-- solution modules available to the independent CI audit.
lean_lib BGSComparator where
  globs := #[`Comparator.+]
