import Mathlib.Data.Set.Basic
import Mathlib.Data.Finset.Card

namespace Bombe

open Set
open Finset

variable {U : Type} {region : Finset U} (b : ℕ)

-- Hints

/-- The proposition that there are exact `b` bombs in the region. -/
def hint_exact : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b

/-- The proposition that there are exact or over `b` bombs in the region. -/
def hint_exact_over : Prop :=
  ∀ bombs ⊆ region,
  bombs.card ≥ b

/-- The proposition that there are exact or less `b` bombs in the region. -/
def hint_exact_less : Prop :=
  ∀ bombs ⊆ region,
  bombs.card ≤ b

/-- The proposition that there are not `b` bombs in the region. -/
def hint_not : Prop :=
  ∀ bombs ⊆ region,
  bombs.card ≠ b

/-- The proposition that there are `b` or `b + 1` bombs in the region. -/
def hint_choice01 : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b ∨ bombs.card = (b + 1)

/-- The proposition that there are `b` or `b + 2` bombs in the region. -/
def hint_choice02 : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b ∨ bombs.card = (b + 2)

/-- The proposition that there are `b` or `b + 3` bombs in the region. -/
def hint_choice03 : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b ∨ bombs.card = (b + 3)

/-- The proposition that there are `b`, `b + 1` or `b + 2` bombs in the region. -/
def hint_choice012 : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b ∨ bombs.card = (b + 1) ∨ bombs.card = (b + 2)

/-- The proposition that there are `b`, `b + 2` or `b + 4` bombs in the region. -/
def hint_choice024 : Prop :=
  ∀ bombs ⊆ region,
  bombs.card = b ∨ bombs.card = (b + 2) ∨ bombs.card = (b + 4)

/-- The proposition that there are `b + 2n` (`n` is a natural number) bombs in the region. -/
def hint_multiple2 : Prop :=
  ∀ bombs ⊆ region,
  ∃ n : ℕ, bombs.card = b + 2 * n

-- Custom operators

postfix:100 "=" => hint_exact
postfix:100 "+" => hint_exact_over
postfix:100 "-" => hint_exact_less
postfix:100 "!" => hint_not
postfix:100 "/+1" => hint_choice01
postfix:100 "/+2" => hint_choice02
postfix:100 "/+3" => hint_choice03
postfix:100 "/+1/+2" => hint_choice012
postfix:100 "/+2/+4" => hint_choice024
postfix:100 "+2*" => hint_multiple2

end Bombe
