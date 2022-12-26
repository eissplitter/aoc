in ← 1‿2‿¯3‿3‿¯2‿0‿4

SlideTo ← {
from‿to‿count𝕊array:
 from‿to |˜↩ ≠array
 distance ← to-from
 startOfRotationRange ← from⌊to
 lengthOfRotationRange ← count+|distance
 rotationAmount ← count××distance
 rotationAmount⊸⌽⌾(lengthOfRotationRange↑ startOfRotationRange⊸↓) array
}

pairs ← (↕≠in) ⋈¨ in

mixedPairs ← pairs {
 IndexOfId ← {⊑ (⊑¨𝕨) ⊐ ⋈𝕩}
 NumberAtIndex ← {1⊑𝕩⊑𝕨}
 Move ← {
  from‿offset𝕊array:
  newIndex ← {𝕩≥≠array ? 𝕩+1; 𝕩≤0 ? 𝕩-1; 𝕩} from+offset
  from‿newIndex‿1 SlideTo array
 }
 index ← 𝕩 IndexOfId 𝕨
 number ← 𝕩 NumberAtIndex index
 index‿number Move 𝕩
}´ ⌽(↕≠in)

resultList ← 1⊑¨mixedPairs

+´ (≠ | {(1000×1+↕3) + ⊑𝕩⊐0})⊸⊏ resultList
