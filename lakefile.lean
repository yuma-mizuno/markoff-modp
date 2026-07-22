import Lake

open Lake DSL

-- Match the official current Verso Blueprint template and Lean toolchain.
require VersoBlueprint from git
  "https://github.com/leanprover/verso-blueprint"@"v4.32.0"

-- Follow current mathlib. Keep this direct requirement last so mathlib's
-- transitive dependency revisions take precedence. The checked-in manifest
-- makes the exact resolved revision reproducible.
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

lean_lib BGSBlueprint where
  roots := #[`BGS.Blueprint]

lean_exe «blueprint-gen» where
  root := `BGSBlueprintMain
