import CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexSet : Set (Finset vertexSet)
  closureUnderSubsets : Prop
  finiteDimension : ℕ
  pure : Prop
  homologyGroups : Type v
  eulerCharacteristic : ℤ
  shellability : Prop
  faceRing : Type w

def SimplicialComplexClosed (C : SimplicialComplexPackage) : Prop :=
  C.closureUnderSubsets ∧ C.pure ∧ C.shellability

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse
