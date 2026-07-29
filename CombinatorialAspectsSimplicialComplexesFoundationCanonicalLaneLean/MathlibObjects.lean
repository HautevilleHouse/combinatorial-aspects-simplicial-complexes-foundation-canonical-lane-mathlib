import CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure SimplicialSphere where
  carrier : Type
  topology : TopologicalSpace carrier

structure SimplicialAdmittedObject where
  space : SimplicialSphere
  closedTriangulatedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def SimplicialWitnessClosed (O : SimplicialAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse
