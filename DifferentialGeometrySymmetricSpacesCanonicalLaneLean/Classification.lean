import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.Holonomy

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure ClassificationPackage {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    {H : HolonomyPackage I} where
  classificationComplete : Prop
  compactTypesListed : Prop
  nonCompactTypesListed : Prop
  exceptionalCasesEnumerated : Prop
  symmetricSpaceModelConstructed : Prop

structure ClassificationEvidence {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    {H : HolonomyPackage I} (CL : ClassificationPackage H) where
  classificationCompleteClosed : CL.classificationComplete
  compactTypesListedClosed : CL.compactTypesListed
  nonCompactTypesListedClosed : CL.nonCompactTypesListed
  exceptionalCasesEnumeratedClosed : CL.exceptionalCasesEnumerated
  symmetricSpaceModelConstructedClosed : CL.symmetricSpaceModelConstructed

def ClassificationClosed {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    {H : HolonomyPackage I} (CL : ClassificationPackage H) : Prop :=
  CL.classificationComplete ∧ CL.compactTypesListed ∧
  CL.nonCompactTypesListed ∧ CL.exceptionalCasesEnumerated ∧
  CL.symmetricSpaceModelConstructed

theorem classification_closed_from_evidence {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    {H : HolonomyPackage I} (CL : ClassificationPackage H)
    (E : ClassificationEvidence CL) : ClassificationClosed CL := by
  exact And.intro E.classificationCompleteClosed
    (And.intro E.compactTypesListedClosed
      (And.intro E.nonCompactTypesListedClosed
        (And.intro E.exceptionalCasesEnumeratedClosed
          E.symmetricSpaceModelConstructedClosed)))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse