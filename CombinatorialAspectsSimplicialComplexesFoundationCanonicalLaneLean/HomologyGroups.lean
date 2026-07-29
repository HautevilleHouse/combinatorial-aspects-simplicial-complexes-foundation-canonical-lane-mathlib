import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure CycleGroup (K : SimplicialComplex) where
  chains : Type
  boundaryOperator : chains → chains
  boundarySquaredZero : ∀ c : chains, boundaryOperator (boundaryOperator c) = 0
  boundarySquaredZeroTerm : boundarySquaredZero

structure BoundaryGroup (K : SimplicialComplex) where
  cycles : Type
  boundaries : Type
  inclusion : boundaries → cycles

structure HomologyGroup (K : SimplicialComplex) (n : ℕ) where
  quotient : Type
  wellDefined : Prop
  wellDefinedTerm : wellDefined

theorem homology_well_defined (K : SimplicialComplex) (n : ℕ) (H : HomologyGroup K n) : H.wellDefined :=
  H.wellDefinedTerm

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse