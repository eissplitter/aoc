in ← ⟨
"30373"
"25512"
"65332"
"33549"
"35390"
⟩
p ← -⟜'0'¨ > in

ProcessLineElement ← {l←𝕨↑𝕩, r←(𝕨+1)↓𝕩, value←𝕨⊑𝕩, l ∨○{∧´𝕩<value} r}
ProcessLine ← {ProcessLineElement⟜𝕩¨ (↕≠𝕩)}
Process ← (ProcessLine˘ ∨ ProcessLine˘⌾⍉)

+´⥊ Process p
