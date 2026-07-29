import CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.SimplicialComplexes

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure FVectorPackage {V : Type u} (C : SimplicialComplexPackage V) where
  fvector : ℕ → ℕ
  kthFaceCount : (k : ℕ) → fvector k = (Finset.filter (λ s => s.card = k) C.simplexSet).card
  hVector : ℕ → ℕ
  hFromF : (k : ℕ) → hVector k = ∑_{i=0}^{k} (-1)^{k-i} * (Nat.choose (C.finiteDimension - i) (k - i)) * fvector i
  unimodalityConjecture : Prop

def FVectorClosed {V : Type u} {C : SimplicialComplexPackage V} (F : FVectorPackage C) : Prop :=
  (∀ k, F.kthFaceCount k) ∧ F.unimodalityConjecture

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse
