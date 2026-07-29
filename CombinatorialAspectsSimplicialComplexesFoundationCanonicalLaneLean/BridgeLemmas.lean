import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SimplicialComplexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse
