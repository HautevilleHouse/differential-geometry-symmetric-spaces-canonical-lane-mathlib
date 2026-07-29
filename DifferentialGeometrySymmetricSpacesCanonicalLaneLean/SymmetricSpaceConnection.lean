import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure SymmetricSpaceConnectionPackage where
  involution : Type u
  fixedPointSet : Type v
  connectionCompatible : Prop
  parallelCurvature : Prop
  geodesicSymmetry : Prop
  torsionFree : Prop

structure SymmetricSpaceConnectionEvidence (C : SymmetricSpaceConnectionPackage) where
  connectionCompatibleClosed : C.connectionCompatible
  parallelCurvatureClosed : C.parallelCurvature
  geodesicSymmetryClosed : C.geodesicSymmetry
  torsionFreeClosed : C.torsionFree

def SymmetricSpaceConnectionClosed (C : SymmetricSpaceConnectionPackage) : Prop :=
  C.connectionCompatible ∧ C.parallelCurvature ∧ C.geodesicSymmetry ∧ C.torsionFree

theorem symmetric_space_connection_closed_from_evidence
    (C : SymmetricSpaceConnectionPackage) (E : SymmetricSpaceConnectionEvidence C) :
    SymmetricSpaceConnectionClosed C := by
  exact And.intro E.connectionCompatibleClosed
    (And.intro E.parallelCurvatureClosed
      (And.intro E.geodesicSymmetryClosed E.torsionFreeClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse