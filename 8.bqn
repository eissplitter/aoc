in ← ⟨
"30373"
"25512"
"65332"
"33549"
"35390"
⟩
p ← -⟜'0'¨ > in

RemoveBorder ← {¯1↓˘1↓˘ ¯1↓1↓ 𝕩}
BorderLength ← {¯4 + 2×+´≢𝕩}
Rotate90 ← ⌽∘⍉
LeftAndRight ← {(𝕨↑𝕩) ⋈ (𝕨+1)↓𝕩}
ProcessLineElement ← { ∨´ ∧´¨ (𝕨⊑𝕩)>¨ 𝕨 LeftAndRight 𝕩 }
ProcessLine ← {ProcessLineElement⟜𝕩¨ (↕≠𝕩)}
Process ← RemoveBorder (ProcessLine˘ ∨ ProcessLine˘⌾Rotate90)

((+´∘⥊∘Process) + BorderLength) p
