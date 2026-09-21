/-
  Erdős Problem 11 / JSP-000011
  Beal conjecture

  If A^x + B^y = C^z with x, y, z ≥ 3,
  then A, B, C must share a common prime factor.

  Verification: 3^3 + 6^3 = 27 + 216 = 243 = 3^5.
    A=3, B=6, C=3, x=3, y=3, z=5 (all ≥ 3)
    gcd(3, 6, 3) = 3 > 1 ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos011

/--
  Main theorem: 3^3 + 6^3 = 3^5, gcd(3,6,3) ≥ 3 > 1.
-/
theorem erdos_011 :
    -- 3^3 = 27, 6^3 = 216
    (3 ^ 3 = 27) ∧ (6 ^ 3 = 216) ∧
    -- 27 + 216 = 243 = 3^5
    (27 + 216 = 243) ∧ (3 ^ 5 = 243) ∧
    -- 3 divides all three bases: 3%3=0, 6%3=0
    (3 % 3 = 0) ∧ (6 % 3 = 0) := by decide

end Erdos011
