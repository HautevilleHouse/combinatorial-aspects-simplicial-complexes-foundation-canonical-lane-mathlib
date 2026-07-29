import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

open SimplicialComplexPackage

structure FaceRingPackage {S : SimplicialComplexPackage} where
  coefficientRing : Type u
  faceRing : Type u
  stanleyReisnerIdeal : Typ u
  faceRingConstructed : Prop
  faceRingConstructedTerm : faceRingConstructed

structure FaceRingEvidence {S : SimplicialComplexPackage}
    (F : FaceRingPackage S) where
  faceRingConstructedClosed : F.faceRingConstructed

def FaceRingClosed {S : SimplicialComplexPackage} (F : FaceRingPackage S) : Prop :=
  F.faceRingConstructed

theorem face_ring_closed_from_evidence {S : SimplicialComplexPackage}
    (F : FaceRingPackage S) (E : FaceRingEvidence F) : FaceRingClosed F := by
  exact E.faceRingConstructedClosed

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse