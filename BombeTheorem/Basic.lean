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

open Finset

abbrev Cell := Nat

variable (R : Finset Cell) (n : Nat)

/-- The proposition that there are `b` bombs in a region of cells `R`. -/
def bombs_in : Prop := #R = n

-- Hints

def H_exact : Prop :=
  #R = n
def H_ge : Prop :=
  #R ≥ n
def H_le : Prop :=
  #R ≤ n
def H_ne : Prop :=
  #R ≠ n
def H_choice01 : Prop :=
  (#R = n ∨ #R = n + 1)
def H_choice02 : Prop :=
  (#R = n ∨ #R = n + 2)
def H_choice03 : Prop :=
  (#R = n ∨ #R = n + 3)
def H_choice012 : Prop :=
  (#R = n ∨ #R = n + 1 ∨ #R = n + 2)
def H_choice024 : Prop :=
  (#R = n ∨ #R = n + 3 ∨ #R = n + 4)
def H_mod2 : Prop :=
  (#R - n) % 2 = 0

end Bombe
