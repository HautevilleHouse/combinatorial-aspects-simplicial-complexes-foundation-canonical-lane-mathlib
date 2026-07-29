import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure FaceNumbersPackage (S : SimplicialComplexPackage) where
  fVector : List (Nat)
  hVectorDerived : List (Nat)
  dehnSommervilleRelations : Prop
  upperBoundConjecture : Prop

structure FaceNumbersEvidence {S : SimplicialComplexPackage}
    (F : FaceNumbersPackage S) where
  dehnSommervilleRelationsClosed : F.dehnSommervilleRelations
  upperBoundConjectureClosed : F.upperBoundConjecture

def FaceNumbersClosed {S : SimplicialComplexPackage}
    (F : FaceNumbersPackage S) : Prop :=
  F.dehnSommervilleRelations ∧ F.upperBoundConjecture

theorem face_numbers_closed_from_evidence {S : SimplicialComplexPackage}
    (F : FaceNumbersPackage S) (Ev : FaceNumbersEvidence F) :
    FaceNumbersClosed F := by
  exact And.intro Ev.dehnSommervilleRelationsClosed Ev.upperBoundConjectureClosed

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse