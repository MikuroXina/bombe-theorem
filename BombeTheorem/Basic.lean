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

namespace Bombe

variable (Cell : Type)

/-- The proposition that there are `n` bombs. `R` is a region of cells, `B` is a bomb assignment. -/
def bombs_in (R : Finset Cell) (B : Finset Cell) (n : Nat) : Prop :=
  B ⊆ R ∧ ∃ f : B → Fin n, Function.Bijective f

-- Hints

def HintConstraint := Nat → Prop

def H_exact (n : Nat) : HintConstraint := fun k => k = n
def H_ge (n : Nat) : HintConstraint := fun k => k ≥ n
def H_le (n : Nat) : HintConstraint := fun k => k ≤ n
def H_ne (n : Nat) : HintConstraint := fun k => k ≠ n
def H_choice01 (n : Nat) : HintConstraint := fun k => k = n ∨ k = n + 1
def H_choice02 (n : Nat) : HintConstraint := fun k => k = n ∨ k = n + 2
def H_choice03 (n : Nat) : HintConstraint := fun k => k = n ∨ k = n + 3
def H_choice012 (n : Nat) : HintConstraint := fun k => k = n ∨ k = n + 1 ∨ k = n + 2
def H_choice024 (n : Nat) : HintConstraint := fun k => k = n ∨ k = n + 3 ∨ k = n + 4
def H_mod2 (n : Nat) : HintConstraint := fun k => (k - n) % 2 = 0

end Bombe
