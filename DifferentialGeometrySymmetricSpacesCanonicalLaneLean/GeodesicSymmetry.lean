import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpacesAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure GeodesicSymmetryPackage where
  geodesicInvolutiveProperty : Prop
  fixedPointIsolated : Prop
  symmetricActionCompat : Prop
  localSymmetricStructure : Prop

structure GeodesicSymmetryEvidence (G : GeodesicSymmetryPackage) where
  geodesicInvolutivePropertyClosed : G.geodesicInvolutiveProperty
  fixedPointIsolatedClosed : G.fixedPointIsolated
  symmetricActionCompatClosed : G.symmetricActionCompat
  localSymmetricStructureClosed : G.localSymmetricStructure

def GeodesicSymmetryClosed (G : GeodesicSymmetryPackage) : Prop :=
  G.geodesicInvolutiveProperty ∧ G.fixedPointIsolated ∧
  G.symmetricActionCompat ∧ G.localSymmetricStructure

theorem geodesic_symmetry_closed_from_evidence
    (G : GeodesicSymmetryPackage) (E : GeodesicSymmetryEvidence G) :
    GeodesicSymmetryClosed G := by
  exact And.intro E.geodesicInvolutivePropertyClosed
    (And.intro E.fixedPointIsolatedClosed
      (And.intro E.symmetricActionCompatClosed E.localSymmetricStructureClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse
