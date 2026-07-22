#!/usr/bin/env python3
"""Remove the builder's absolute workspace prefix from Blueprint text assets."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from urllib.parse import quote


TEXT_SUFFIXES = {".html", ".js", ".json"}


def workspace_prefixes(workspace: Path) -> list[str]:
    native = str(workspace.resolve())
    posix = workspace.resolve().as_posix()
    prefixes = {
        native + "\\",
        native + "/",
        posix + "/",
        json.dumps(native + "\\")[1:-1],
        json.dumps(native + "/")[1:-1],
        json.dumps(posix + "/")[1:-1],
        quote(native + "\\", safe=""),
        quote(native + "/", safe=""),
        quote(posix + "/", safe=""),
    }
    return sorted(prefixes, key=len, reverse=True)


def sanitize_tree(site: Path, workspace: Path) -> tuple[int, int]:
    prefixes = workspace_prefixes(workspace)
    changed_files = 0
    replacements = 0
    for path in site.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        text = path.read_text(encoding="utf-8")
        updated = text
        for prefix in prefixes:
            pattern = re.compile(re.escape(prefix), re.IGNORECASE)
            updated, count = pattern.subn("", updated)
            if count:
                replacements += count
        if updated != text:
            path.write_text(updated, encoding="utf-8", newline="")
            changed_files += 1
    return changed_files, replacements


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("site", type=Path)
    parser.add_argument("--workspace", type=Path, default=Path.cwd())
    args = parser.parse_args()

    changed_files, replacements = sanitize_tree(args.site, args.workspace)
    print(
        f"Normalized {replacements} absolute Blueprint source paths "
        f"across {changed_files} files."
    )


if __name__ == "__main__":
    main()
