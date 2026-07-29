import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean

open SimplicialComplexPackage

structure ShellabilityPackage {S : SimplicialComplexPackage} where
  shellingOrder : List (Finset (VertexSet S))
  pureShellable : Prop
  shellingOrderTerm : shellingOrder
  pureShellableTerm : pureShellable

structure ShellabilityEvidence {S : SimplicialComplexPackage}
    (Sh : ShellabilityPackage S) where
  pureShellableClosed : Sh.pureShellable

def ShellabilityClosed {S : SimplicialComplexPackage} (Sh : ShellabilityPackage S) : Prop :=
  Sh.pureShellable

theorem shellability_closed_from_evidence {S : SimplicialComplexPackage}
    (Sh : ShellabilityPackage S) (E : ShellabilityEvidence Sh) : ShellabilityClosed Sh := by
  exact E.pureShellableClosed

end CombinatorialAspectsSimplicialComplexesFoundationCanonicalLaneLean
end HautevilleHouse