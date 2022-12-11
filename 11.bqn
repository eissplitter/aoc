DivisibleBy ← {0=𝕩|𝕨}

in ← [
⟨⟨79,98⟩       ⋄ ×⟜19 ⋄ DivisibleBy⟜23◶3‿2 ⋄ 0⟩
⟨⟨54,65,75,74⟩ ⋄ +⟜6  ⋄ DivisibleBy⟜19◶0‿2 ⋄ 0⟩
⟨⟨79,60,97⟩    ⋄ ×˜   ⋄ DivisibleBy⟜13◶3‿1 ⋄ 0⟩
⟨⟨74⟩          ⋄ +⟜3  ⋄ DivisibleBy⟜17◶1‿0 ⋄ 0⟩
]

UpdateMonkey ← {
monkeyIndex𝕊newMonkey:
 in ↩ newMonkey⌾(monkeyIndex⊸⊏) in
}

Throw ← {
worryLevel𝕊monkeyIndex:
 targetMonkey ← monkeyIndex⊏in
 newTargetMonkey ← ∾⟜worryLevel⌾(0⊸⊑) targetMonkey
 monkeyIndex UpdateMonkey newTargetMonkey
}

DoTurn ← {
𝕊monkeyIndex:
 sourceMonkey ← monkeyIndex⊏in
 worryLevels‿operation‿test‿counter ← sourceMonkey
 newWorryLevels ← ⌊ ÷⟜3 Operation¨ worryLevels
 Throw⟜Test¨ newWorryLevels
 newSourceMonkey ← ⟨⟩⌾(0⊸⊑) sourceMonkey
 newSourceMonkey ↩ (counter+≠worryLevels)⌾(3⊸⊑) newSourceMonkey
 monkeyIndex UpdateMonkey newSourceMonkey
}

DoRound ← {𝕊: DoTurn¨ ↕≠in ⋄ @}

DoRound⍟20 @

×´ 2↑ ∨ 3⊏⍉in
