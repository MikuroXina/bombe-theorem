import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Order.Lemmas
import Mathlib.Data.Finset.Basic
import BombeTheorem.Basic

open Finset
open Bombe

/-- 0! は 1+ に等しい. -/
theorem zero_not_eq_is_one_ge (A : Finset Cell) : H_ne A 0 ↔ H_ge A 1 := by
  unfold H_ne H_ge
  constructor
  · intro h
    rcases h with ⟨B, ⟨B_subset_A, card_B_ne_zero⟩⟩
    use B
    constructor
    · assumption
    apply Nat.pos_of_ne_zero
    assumption
  · intro h
    rcases h with ⟨B, ⟨B_subset_A, card_B_ge_1⟩⟩
    use B
    constructor
    · assumption
    apply Nat.ne_of_gt
    assumption
