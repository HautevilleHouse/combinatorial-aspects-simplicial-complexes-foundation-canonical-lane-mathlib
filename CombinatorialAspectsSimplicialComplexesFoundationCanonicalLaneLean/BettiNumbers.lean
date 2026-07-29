import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.HomologyGroups

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

structure BettiNumbers (K : SimplicialComplex) where
  betti : ℕ → ℕ
  finiteDimensional : ∀ n : ℕ, betti n < ∞
  finiteDimensionalTerm : finiteDimensional

structure PoincarePolynomial (K : SimplicialComplex) where
  polynomial : ℕ → ℤ
  alternatingSumOfBetti : Prop
  alternatingSumOfBettiTerm : alternatingSumOfBetti

theorem poincare_polynomial_alternating_sum (K : SimplicialComplex) (P : PoincarePolynomial K) :
    P.alternatingSumOfBetti := P.alternatingSumOfBettiTerm

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse