in ← ⟨2‿2‿2,1‿2‿2,3‿2‿2,2‿1‿2,2‿3‿2,2‿2‿1,2‿2‿3,2‿2‿4,2‿2‿6,1‿2‿5,3‿2‿5,2‿1‿5,2‿3‿5⟩

SetTrue ← {1⌾(𝕨⊸⊑) 𝕩}
Rotate90 ← ⍉∘⌽

maxValue ← ⌈´⌈´ in
grid ← ((3⥊1+maxValue)⥊0) SetTrue´ in

F ← Rotate90˘ 1‿2‿0⊸⍉

offsetGrids ← ⟨»˘grid, «˘grid, »⎉¯2 grid, «⎉¯2 grid, »⎉¯2⌾F grid, «⎉¯2⌾F grid⟩

+´ ⥊ +´ grid⊸(∧⟜¬)¨ offsetGrids
