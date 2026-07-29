import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure GeodesicStructurePackage where
  geodesicCompactness : Prop
  jacobiFieldAnalysis : Prop
  conjugateLocus : Prop
  cutLocus : Prop

structure GeodesicStructureEvidence (G : GeodesicStructurePackage) where
  geodesicCompactnessClosed : G.geodesicCompactness
  jacobiFieldAnalysisClosed : G.jacobiFieldAnalysis
  conjugateLocusClosed : G.conjugateLocus
  cutLocusClosed : G.cutLocus

def GeodesicStructureClosed (G : GeodesicStructurePackage) : Prop :=
  G.geodesicCompactness ∧ G.jacobiFieldAnalysis ∧
  G.conjugateLocus ∧ G.cutLocus

theorem geodesic_structure_closed_from_evidence
    (G : GeodesicStructurePackage) (E : GeodesicStructureEvidence G) :
    GeodesicStructureClosed G := by
  exact And.intro E.geodesicCompactnessClosed
    (And.intro E.jacobiFieldAnalysisClosed
      (And.intro E.conjugateLocusClosed E.cutLocusClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse