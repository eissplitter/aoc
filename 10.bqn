in ← ⟨ ... ⟩

ParseInt ← {F ← 10⊸×⊸+˜´∘⌽-⟜'0' ⋄ ('-'=⊑𝕩)◶F‿(-∘F∘(1⊸↓)) 𝕩}
RemoveSpaces ← ' '⊸≠⊸/

register ← 1
cycles ← ⟨1⟩
F ← {
 instruction‿argument ← (4↑𝕩)⋈4↓𝕩
 instruction ≡ "addx" ? {
  cycles∾↩register‿register
  register+↩ ParseInt RemoveSpaces argument
 };
 cycles∾↩register
}

F¨in
cycleIndices ← 20+40×↕6
+´ ⊏⟜cycles⊸× cycleIndices
