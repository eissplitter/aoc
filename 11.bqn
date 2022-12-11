DivisibleBy ← {0=𝕩|𝕨}

in ← [
⟨⟨79,98⟩       ⋄ ×⟜19 ⋄ DivisibleBy⟜23◶3‿2 ⋄ 0⟩
⟨⟨54,65,75,74⟩ ⋄ +⟜6  ⋄ DivisibleBy⟜19◶0‿2 ⋄ 0⟩
⟨⟨79,60,97⟩    ⋄ ×˜   ⋄ DivisibleBy⟜13◶3‿1 ⋄ 0⟩
⟨⟨74⟩          ⋄ +⟜3  ⋄ DivisibleBy⟜17◶1‿0 ⋄ 0⟩
]

UpdateMonkey ← {
monkeyIndex‿newMonkey 𝕊 state:
 newMonkey⌾(monkeyIndex⊸⊏) state
}

Throw ← {
monkeyIndex‿worryLevel 𝕊 state:
 targetMonkey ← monkeyIndex⊏state
 newTargetMonkey ← ∾⟜worryLevel⌾(0⊸⊑) targetMonkey
 monkeyIndex‿newTargetMonkey UpdateMonkey state
}

DoTurn ← {
monkeyIndex 𝕊 state:
 sourceMonkey ← monkeyIndex⊏state
 worryLevels‿operation‿test‿counter ← sourceMonkey
 newWorryLevels ← ⌊ ÷⟜3 Operation¨ worryLevels
 newState ← state {⟨Test 𝕨, 𝕨⟩ Throw 𝕩}´ ⌽newWorryLevels
 newSourceMonkey ← ⟨⟩⌾(0⊸⊑) sourceMonkey
 newSourceMonkey ↩ (counter+≠worryLevels)⌾(3⊸⊑) newSourceMonkey
 monkeyIndex‿newSourceMonkey UpdateMonkey newState
}

DoRound ← {𝕩 DoTurn´ ⌽(↕≠in)}

×´ 2↑ ∨ 3⊏ ⍉ DoRound⍟20 in
