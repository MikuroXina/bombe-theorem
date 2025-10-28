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

inductive Cell where
  | empty
  | bomb
deriving Repr, DecidableEq

abbrev Region := Finset Cell

def area (r : Region) : Nat :=  #r
def bombs (r : Region) : Nat := #(r.filter (fun c => c = Cell.bomb))

abbrev Clean (r : Region) : Prop := area r = 0
abbrev Flag (r : Region) : Prop := area r = bombs r

variable (r : Region) (n : Nat)

-- Areas

def A_exact : Prop :=
  area r = n
def A_ge : Prop :=
  area r ≥ n
def A_le : Prop :=
  area r ≤ n
def A_ne : Prop :=
  area r ≠ n
def A_choice01 : Prop :=
  (area r = n ∨ area r = n + 1)
def A_choice02 : Prop :=
  (area r = n ∨ area r = n + 2)
def A_choice03 : Prop :=
  (area r = n ∨ area r = n + 3)
def A_choice012 : Prop :=
  (area r = n ∨ area r = n + 1 ∨ area r = n + 2)
def A_choice024 : Prop :=
  (area r = n ∨ area r = n + 3 ∨ area r = n + 4)
def A_mod2 : Prop :=
  (area r - n) % 2 = 0

-- Hints

def H_exact : Prop :=
  bombs r = n
def H_ge : Prop :=
  bombs r ≥ n
def H_le : Prop :=
  bombs r ≤ n
def H_ne : Prop :=
  bombs r ≠ n
def H_choice01 : Prop :=
  bombs r = n ∨ bombs r = n + 1
def H_choice02 : Prop :=
  bombs r = n ∨ bombs r = n + 2
def H_choice03 : Prop :=
  bombs r = n ∨ bombs r = n + 3
def H_choice012 : Prop :=
  bombs r = n ∨ bombs r = n + 1 ∨ bombs r = n + 2
def H_choice024 : Prop :=
  bombs r = n ∨ bombs r = n + 2 ∨ bombs r = n + 4
def H_mod2 : Prop :=
  (bombs r - n) % 2 = 0

end Bombe
