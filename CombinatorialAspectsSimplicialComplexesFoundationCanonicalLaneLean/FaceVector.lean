import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure FaceVectorPackage where
  fVector : List ℕ
  fVectorComputed : Prop
  dehnSommervilleRelations : Prop
  upperBoundConjecture : Prop
  gConjecture : Prop
  fVectorComputedClosed : fVectorComputed
  dehnSommervilleRelationsClosed : dehnSommervilleRelations
  upperBoundConjectureClosed : upperBoundConjecture
  gConjectureClosed : gConjecture

structure FaceVectorEvidence (F : FaceVectorPackage) where
  fVectorComputedClosed : F.fVectorComputed
  dehnSommervilleRelationsClosed : F.dehnSommervilleRelations
  upperBoundConjectureClosed : F.upperBoundConjecture
  gConjectureClosed : F.gConjecture

def FaceVectorClosed (F : FaceVectorPackage) : Prop :=
  F.fVectorComputed ∧ F.dehnSommervilleRelations ∧ F.upperBoundConjecture ∧ F.gConjecture

theorem face_vector_closed_from_evidence (F : FaceVectorPackage) (E : FaceVectorEvidence F) : FaceVectorClosed F := by
  exact And.intro E.fVectorComputedClosed (And.intro E.dehnSommervilleRelationsClosed (And.intro E.upperBoundConjectureClosed E.gConjectureClosed))

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse