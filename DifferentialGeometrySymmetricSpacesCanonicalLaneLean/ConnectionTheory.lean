import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure ConnectionTheoryPackage {C : CurvatureInvariantsPackage} where
  leviCivitaConnection : Type u
  parallelTransport : Prop
  holonomyGroup : Type v
  holonomyLieAlgebra : Type w
  homogeneousConnection : Prop
  torsionFree : Prop
  metricCompatible : Prop

structure ConnectionTheoryEvidence {C : CurvatureInvariantsPackage}
    (D : ConnectionTheoryPackage C) where
  parallelTransportClosed : D.parallelTransport
  homogeneousConnectionClosed : D.homogeneousConnection
  torsionFreeClosed : D.torsionFree
  metricCompatibleClosed : D.metricCompatible

def ConnectionTheoryClosed {C : CurvatureInvariantsPackage}
    (D : ConnectionTheoryPackage C) : Prop :=
  D.parallelTransport ∧ D.homogeneousConnection ∧ D.torsionFree ∧ D.metricCompatible

theorem connection_theory_closed_from_evidence {C : CurvatureInvariantsPackage}
    (D : ConnectionTheoryPackage C) (E : ConnectionTheoryEvidence D) :
    ConnectionTheoryClosed D := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.homogeneousConnectionClosed
      (And.intro E.torsionFreeClosed E.metricCompatibleClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse