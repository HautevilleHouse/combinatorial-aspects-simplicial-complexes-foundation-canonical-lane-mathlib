import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure CohenMacaulayPackage where
  ringAssociated : Type u
  cohenMacaulayProperty : Prop
  homologyVanishing : Prop
  linearResolution : Prop
  cohenMacaulayPropertyClosed : cohenMacaulayProperty
  homologyVanishingClosed : homologyVanishing
  linearResolutionClosed : linearResolution

structure CohenMacaulayEvidence (C : CohenMacaulayPackage) where
  cohenMacaulayPropertyClosed : C.cohenMacaulayProperty
  homologyVanishingClosed : C.homologyVanishing
  linearResolutionClosed : C.linearResolution

def CohenMacaulayClosed (C : CohenMacaulayPackage) : Prop :=
  C.cohenMacaulayProperty ∧ C.homologyVanishing ∧ C.linearResolution

theorem cohen_macaulay_closed_from_evidence (C : CohenMacaulayPackage) (E : CohenMacaulayEvidence C) : CohenMacaulayClosed C := by
  exact And.intro E.cohenMacaulayPropertyClosed (And.intro E.homologyVanishingClosed E.linearResolutionClosed)

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse