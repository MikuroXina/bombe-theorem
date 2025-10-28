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

abbrev Cell := Nat

variable (R : Finset Cell) (n : Nat)

/-- The proposition that there are `b` bombs in a region of cells `R`. -/
def bombs_in (R : Finset Cell) (b : Nat) : Prop :=
  ∃ f : R → Fin b, Function.Bijective f

-- Hints

def H_exact : Prop :=
  ∃ b, bombs_in R b ∧ b = n
def H_ge : Prop :=
  ∃ b, bombs_in R b ∧ b ≥ n
def H_le : Prop :=
  ∃ b, bombs_in R b ∧ b ≤ n
def H_ne : Prop :=
  ∃ b, bombs_in R b ∧ b ≠ n
def H_choice01 : Prop :=
  ∃ b, bombs_in R b ∧ (b = n ∨ b = n + 1)
def H_choice02 : Prop :=
  ∃ b, bombs_in R b ∧ (b = n ∨ b = n + 2)
def H_choice03 : Prop :=
  ∃ b, bombs_in R b ∧ (b = n ∨ b = n + 3)
def H_choice012 : Prop :=
  ∃ b, bombs_in R b ∧ (b = n ∨ b = n + 1 ∨ b = n + 2)
def H_choice024 : Prop :=
  ∃ b, bombs_in R b ∧ (b = n ∨ b = n + 3 ∨ b = n + 4)
def H_mod2 : Prop :=
  ∃ b, bombs_in R b ∧ (b - n) % 2 = 0

end Bombe
