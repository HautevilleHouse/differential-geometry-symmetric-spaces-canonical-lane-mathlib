import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure CurvatureInvariantsPackage where
  sectionalCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  curvatureTensor : Type x
  constantCurvatureCondition : Prop
  einsteinCondition : Prop
  locallySymmetricCondition : Prop

structure CurvatureInvariantsEvidence (I : CurvatureInvariantsPackage) where
  constantCurvatureConditionClosed : I.constantCurvatureCondition
  einsteinConditionClosed : I.einsteinCondition
  locallySymmetricConditionClosed : I.locallySymmetricCondition

def CurvatureInvariantsClosed (I : CurvatureInvariantsPackage) : Prop :=
  I.constantCurvatureCondition ∧ I.einsteinCondition ∧ I.locallySymmetricCondition

theorem curvature_invariants_closed_from_evidence
    (I : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence I) :
    CurvatureInvariantsClosed I := by
  exact And.intro E.constantCurvatureConditionClosed
    (And.intro E.einsteinConditionClosed E.locallySymmetricConditionClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse