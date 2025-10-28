import BombeTheorem.Basic

open Bombe

/-- 0! は 1+ に等しい. -/
theorem zero_not_eq_is_one_ge (A : Region) : H_ne A 0 ↔ H_ge A 1 := by
  unfold H_ne H_ge
  constructor
  · intro h
    apply Nat.pos_of_ne_zero
    assumption
  · intro h
    apply Nat.ne_of_gt
    assumption
