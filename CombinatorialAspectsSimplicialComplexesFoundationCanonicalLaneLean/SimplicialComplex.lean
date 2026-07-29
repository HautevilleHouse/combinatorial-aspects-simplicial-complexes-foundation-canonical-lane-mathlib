import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexSet : Set (Finset vertexSet)
  closedUnderSubsets : Prop
  finiteType : Prop
  pure : Prop
  dimensionNat : ℕ
  closedUnderSubsetsTerm : closedUnderSubsets
  finiteTypeTerm : finiteType
  pureTerm : pure

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  closedUnderSubsetsClosed : S.closedUnderSubsets
  finiteTypeClosed : S.finiteType
  pureClosed : S.pure

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.closedUnderSubsets ∧ S.finiteType ∧ S.pure

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage)
    (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.closedUnderSubsetsClosed (And.intro E.finiteTypeClosed E.pureClosed)

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse