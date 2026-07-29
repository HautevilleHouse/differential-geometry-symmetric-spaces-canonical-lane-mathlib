import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure CartanClassificationPackage where
  irreducibleSymmetricSpaces : Type u
  classicalFamilies : Prop
  exceptionalSpaces : Prop
  dualityCompactNoncompact : Prop

structure CartanClassificationEvidence (C : CartanClassificationPackage) where
  classicalFamiliesClosed : C.classicalFamilies
  exceptionalSpacesClosed : C.exceptionalSpaces
  dualityCompactNoncompactClosed : C.dualityCompactNoncompact

def CartanClassificationClosed (C : CartanClassificationPackage) : Prop :=
  C.classicalFamilies ∧ C.exceptionalSpaces ∧ C.dualityCompactNoncompact

theorem cartan_classification_closed_from_evidence
    (C : CartanClassificationPackage) (E : CartanClassificationEvidence C) :
    CartanClassificationClosed C := by
  exact And.intro E.classicalFamiliesClosed
    (And.intro E.exceptionalSpacesClosed E.dualityCompactNoncompactClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse