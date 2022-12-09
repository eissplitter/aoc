in ← ⟨
"30373"
"25512"
"65332"
"33549"
"35390"
⟩
p ← -⟜'0'¨ > in

LeftAndRight ← {(𝕨↑𝕩) ⋈ (𝕨+1)↓𝕩}
ProcessLineElement ← { ∨´ ∧´¨ (𝕨⊑𝕩)>¨ 𝕨 LeftAndRight 𝕩 }
ProcessLine ← {ProcessLineElement⟜𝕩¨ (↕≠𝕩)}
Process ← ProcessLine˘ ∨ ProcessLine˘⌾⍉

+´⥊ Process p
