in ← ⟨"R 4", "U 4", "L 3", "D 1","R 4","D 1","L 5","R 2"⟩
#in ← ⟨"R 5", "U 8", "L 8", "D 3", "R 17", "D 10", "L 25", "U 20"⟩

ParseInt ← {F ← 10⊸×⊸+˜´∘⌽-⟜'0' ⋄ ('-'=⊑𝕩)◶F‿(-∘F∘(1⊸↓)) 𝕩}
in ↩ { (⊑𝕩) ⋈ ParseInt 2↓𝕩 }¨ in

ApplyMotion ← {
 direction‿count𝕊state:
 v ← {'R': 1‿0; 'L': ¯1‿0; 'U': 0‿1; 'D': 0‿¯1} direction

 AdjustNext ← {
  dx‿dy ← 𝕨 - tx‿ty ← 𝕩
  (1<|dx) ∨ 1<|dy ? ⟨tx + ×dx, ty + ×dy⟩; 𝕩
 }

 {
  𝕊rope‿visitedPositions:
  newRope ← AdjustNext` +⟜v⌾⊑ rope
  newRope‿(visitedPositions ∾ ¯1↑newRope)
 }⍟count state
}

ApplyMotions ← { 𝕩 ApplyMotion´ ⌽𝕨 }

•Show ≠⍷ 1⊑ in ApplyMotions ⟨2 ⥊ <0‿0,⟨⟩⟩
≠⍷ 1⊑ in ApplyMotions ⟨10 ⥊ <0‿0,⟨⟩⟩
