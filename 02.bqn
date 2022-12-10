in ← "AY"‿"BX"‿"CZ"

Contains ← {∊⟜𝕨⌾⋈ 𝕩}

part1 ← {
 IsWin ← "AY"‿"BZ"‿"CX"⊸Contains
 IsDraw ← "AX"‿"BY"‿"CZ"⊸Contains
 ShapeScore ← {-⟜'W'1⊑𝕩}
 Score ⇐ {(ShapeScore 𝕩) + (6 × IsWin 𝕩) + 3 × IsDraw 𝕩}
}

part2 ← {
 IsWin ← ≡⟜'Z'∘(1⊸⊑)
 IsDraw ← ≡⟜'Y'∘(1⊸⊑)
 ShapeScore ← {1 + ⊑/ Contains⟜𝕩 ¨ ⟨"AY"‿"BX"‿"CZ", "AZ"‿"BY"‿"CX", "AX"‿"BZ"‿"CY"⟩}
 Score ⇐ {(ShapeScore 𝕩) + (6 × IsWin 𝕩) + 3 × IsDraw 𝕩}
}

•Show +´ part1.Score ¨ in
+´ part2.Score ¨ in
