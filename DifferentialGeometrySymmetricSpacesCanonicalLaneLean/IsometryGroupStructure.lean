import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure IsometryGroupStructurePackage where
  isometryGroup : Type u
  isotropySubgroup : Type v
  homogeneousSpace : Prop
  symmetricPair : Prop
  reductiveDecomposition : Prop

structure IsometryGroupStructureEvidence (G : IsometryGroupStructurePackage) where
  homogeneousSpaceClosed : G.homogeneousSpace
  symmetricPairClosed : G.symmetricPair
  reductiveDecompositionClosed : G.reductiveDecomposition

def IsometryGroupStructureClosed (G : IsometryGroupStructurePackage) : Prop :=
  G.homogeneousSpace ∧ G.symmetricPair ∧ G.reductiveDecomposition

theorem isometry_group_structure_closed_from_evidence
    (G : IsometryGroupStructurePackage) (E : IsometryGroupStructureEvidence G) :
    IsometryGroupStructureClosed G := by
  exact And.intro E.homogeneousSpaceClosed
    (And.intro E.symmetricPairClosed E.reductiveDecompositionClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse