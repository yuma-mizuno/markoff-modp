#!/usr/bin/env python3
"""Falsify the auxiliary-point claims over small prime fields.

This is not a proof.  It checks the exact admissibility and point-existence predicates used by
``BGS.Markoff.Incidence.Fibers`` and reports the first counterexample in each prime field.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass


def is_prime(n: int) -> bool:
    if n < 2:
        return False
    divisor = 2
    while divisor * divisor <= n:
        if n % divisor == 0:
            return False
        divisor += 1
    return True


def admissible(p: int, value: int) -> bool:
    return value % p != 0 and (9 * value * value - 4) % p != 0


def square_roots(p: int) -> dict[int, int]:
    return {(root * root) % p: root for root in range(p)}


def diagonal_witness(p: int, a: int, roots: dict[int, int]) -> tuple[int, int] | None:
    coefficient = (9 * a * a - 4) % p
    target = (4 * a * a) % p
    for y in range(p):
        if not admissible(p, y):
            continue
        lambda_squared = (coefficient * y * y - target) % p
        if lambda_squared in roots:
            return y, roots[lambda_squared]
    return None


def off_diagonal_witness(
    p: int, a: int, b: int, roots: dict[int, int]
) -> tuple[int, int, int] | None:
    coefficient_a = (9 * a * a - 4) % p
    coefficient_b = (9 * b * b - 4) % p
    target_a = (4 * a * a) % p
    target_b = (4 * b * b) % p
    for y in range(p):
        if not admissible(p, y):
            continue
        lambda_squared = (coefficient_a * y * y - target_a) % p
        mu_squared = (coefficient_b * y * y - target_b) % p
        if lambda_squared in roots and mu_squared in roots:
            return y, roots[lambda_squared], roots[mu_squared]
    return None


def admissible_witness_mask(p: int, a: int, roots: dict[int, int]) -> int:
    coefficient = (9 * a * a - 4) % p
    target = (4 * a * a) % p
    mask = 0
    for y in range(p):
        if admissible(p, y) and (coefficient * y * y - target) % p in roots:
            mask |= 1 << y
    return mask


@dataclass(frozen=True)
class PrimeCheck:
    prime: int
    diagonal_failure: int | None
    off_diagonal_failure: tuple[int, int] | None


def check_prime(p: int) -> PrimeCheck:
    roots = square_roots(p)
    coordinates = [value for value in range(p) if admissible(p, value)]
    witness_masks = {
        value: admissible_witness_mask(p, value, roots) for value in coordinates
    }
    diagonal_failure = next(
        (a for a in coordinates if witness_masks[a] == 0), None
    )
    off_diagonal_failure = next(
        (
            (a, b)
            for a in coordinates
            for b in coordinates
            if (a * a - b * b) % p != 0
            and witness_masks[a] & witness_masks[b] == 0
        ),
        None,
    )
    return PrimeCheck(p, diagonal_failure, off_diagonal_failure)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=200)
    args = parser.parse_args()

    checks = [check_prime(p) for p in range(2, args.limit + 1) if is_prime(p)]
    for check in checks:
        print(
            f"p={check.prime:3d} "
            f"diagonal={check.diagonal_failure!s:>4} "
            f"off_diagonal={check.off_diagonal_failure}"
        )

    diagonal_bad = [check.prime for check in checks if check.diagonal_failure is not None]
    off_diagonal_bad = [
        check.prime for check in checks if check.off_diagonal_failure is not None
    ]
    print(f"diagonal failing primes: {diagonal_bad}")
    print(f"off-diagonal failing primes: {off_diagonal_bad}")


if __name__ == "__main__":
    main()
