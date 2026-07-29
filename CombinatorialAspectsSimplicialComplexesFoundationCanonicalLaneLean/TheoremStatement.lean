import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure SimplicialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SimplicialAdmittedObject where
  space : SimplicialSpace
  finiteSimplicialComplex : Prop
  combinatorialManifold : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def SimplicialWitnessClosed (O : SimplicialAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse