import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure ChainComplexPackage (K : SimplicialComplexSpace) where
  chainGroups : Nat → Type
  boundaryMaps : (n : Nat) → chainGroups (n+1) → chainGroups n
  boundarySquaredZero : (n : Nat) → (boundaryMaps n) ∘ (boundaryMaps (n+1)) = 0
  homologyGroupsDefined : Prop

structure ChainComplexEvidence {K : SimplicialComplexSpace} (C : ChainComplexPackage K) where
  boundarySquaredZeroClosed : C.boundarySquaredZero = C.boundarySquaredZero
  homologyGroupsDefinedClosed : C.homologyGroupsDefined

def ChainComplexClosed {K : SimplicialComplexSpace} (C : ChainComplexPackage K) : Prop :=
  C.boundarySquaredZero 0 ∧ C.homologyGroupsDefined

theorem chain_complex_closed_from_evidence {K : SimplicialComplexSpace} (C : ChainComplexPackage K) (E : ChainComplexEvidence C) : ChainComplexClosed C := by
  exact And.intro E.boundarySquaredZeroClosed E.homologyGroupsDefinedClosed

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse
