crateStacks ← ⟨"ZN", "MCD", "P"⟩
movements ← ⟨1‿2‿1,3‿1‿3,2‿2‿1,1‿1‿2⟩

ApplyMovement ← {
 moveCount‿fromIndex‿toIndex ← 𝕨
 fromIndex‿toIndex -↩1

 movedCrates ← ⌽ (-moveCount)↑ fromIndex⊸⊑ 𝕩

 stackWithCratesRemoved ← (-moveCount)⊸↓⌾(fromIndex⊸⊑) 𝕩
 ∾⟜movedCrates⌾(toIndex⊸⊑) stackWithCratesRemoved
}

¯1⊸⊑¨ crateStacks ApplyMovement´ ⌽movements # The initial value which is the left argument of the fold is passed as the right argument to 𝔽
