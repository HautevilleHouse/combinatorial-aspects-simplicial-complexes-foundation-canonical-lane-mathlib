import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure SimplicialComplexPackage where
  verts : Type u
  simplices : List (List (Nat))
  faceDeletion : Prop
  starOperator : Prop
  linkOperator : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  faceDeletionClosed : S.faceDeletion
  starOperatorClosed : S.starOperator
  linkOperatorClosed : S.linkOperator

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.faceDeletion ∧ S.starOperator ∧ S.linkOperator

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage)
    (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.faceDeletionClosed (And.intro E.starOperatorClosed E.linkOperatorClosed)

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse