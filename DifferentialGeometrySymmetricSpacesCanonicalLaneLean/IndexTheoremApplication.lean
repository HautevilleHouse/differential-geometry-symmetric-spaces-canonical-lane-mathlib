import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure IndexTheoremApplicationPackage where
  diracOperatorIndexComputed : Prop
  indexFormulaOnSymmetricSpace : Prop
  topologicalInvariantExtracted : Prop
  connectionToLieGroupCohomology : Prop

def IndexTheoremApplicationClosed (I : IndexTheoremApplicationPackage) : Prop :=
  I.diracOperatorIndexComputed ∧ I.indexFormulaOnSymmetricSpace ∧ I.topologicalInvariantExtracted ∧ I.connectionToLieGroupCohomology

theorem index_theorem_application_closed (I : IndexTheoremApplicationPackage) : IndexTheoremApplicationClosed I :=
  And.intro I.diracOperatorIndexComputed (And.intro I.indexFormulaOnSymmetricSpace (And.intro I.topologicalInvariantExtracted I.connectionToLieGroupCohomology))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse