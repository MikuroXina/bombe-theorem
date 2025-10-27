import Mathlib.Data.Set.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Order.Lemmas
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Sets
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import BombeTheorem.Basic

open Set
open Finset
open Bombe

/-- 0! は 1+ に等しい. -/
theorem zero_not_eq_is_one_ge (k : Nat) : H_ne 0 k ↔ H_ge 1 k := by
  unfold H_ne H_ge
  constructor
  · exact Nat.pos_of_ne_zero
  · exact Nat.ne_of_gt
