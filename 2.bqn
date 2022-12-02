in ← ⟨"AX", "AZ", "BZ", "CY", "CX"⟩

Contains ← {∊⟜𝕨⌾⋈ 𝕩}
IsWin ← "AY"‿"BZ"‿"CX"⊸Contains
IsDraw ← "AX"‿"BY"‿"CZ"⊸Contains
ShapeScore ← {-⟜'W'1⊑𝕩}
Score ← {ShapeScore 𝕩 + (6 × IsWin 𝕩) + 3 × IsDraw 𝕩}

+´ Score ¨ in
