import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure CurvatureHomogeneityPackage (S : SymmetricSpaceStructure) where
  riemannCurvatureInvariant : Prop
  ricciCurvatureInvariant : Prop
  scalarCurvatureInvariant : Prop
  sectionalCurvatureBounds : Prop

structure CurvatureHomogeneityEvidence {S : SymmetricSpaceStructure} (C : CurvatureHomogeneityPackage S) where
  riemannCurvatureInvariantClosed : C.riemannCurvatureInvariant
  ricciCurvatureInvariantClosed : C.ricciCurvatureInvariant
  scalarCurvatureInvariantClosed : C.scalarCurvatureInvariant
  sectionalCurvatureBoundsClosed : C.sectionalCurvatureBounds

def CurvatureHomogeneityClosed {S : SymmetricSpaceStructure} (C : CurvatureHomogeneityPackage S) : Prop :=
  C.riemannCurvatureInvariant ∧ C.ricciCurvatureInvariant ∧ C.scalarCurvatureInvariant ∧ C.sectionalCurvatureBounds

theorem curvature_homogeneity_closed_from_evidence {S : SymmetricSpaceStructure} (C : CurvatureHomogeneityPackage S) (E : CurvatureHomogeneityEvidence C) : CurvatureHomogeneityClosed C :=
  And.intro E.riemannCurvatureInvariantClosed (And.intro E.ricciCurvatureInvariantClosed (And.intro E.scalarCurvatureInvariantClosed E.sectionalCurvatureBoundsClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse