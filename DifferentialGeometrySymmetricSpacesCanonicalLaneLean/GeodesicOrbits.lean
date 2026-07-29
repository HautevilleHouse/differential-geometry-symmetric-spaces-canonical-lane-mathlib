import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure GeodesicOrbitsPackage (S : SymmetricSpaceStructure) where
  maximalFlatSubmanifolds : Prop
  totallyGeodesicSubmanifolds : Prop
  orbitStructure : Prop
  intersectionProperties : Prop

structure GeodesicOrbitsEvidence {S : SymmetricSpaceStructure} (G : GeodesicOrbitsPackage S) where
  maximalFlatSubmanifoldsClosed : G.maximalFlatSubmanifolds
  totallyGeodesicSubmanifoldsClosed : G.totallyGeodesicSubmanifolds
  orbitStructureClosed : G.orbitStructure
  intersectionPropertiesClosed : G.intersectionProperties

def GeodesicOrbitsClosed {S : SymmetricSpaceStructure} (G : GeodesicOrbitsPackage S) : Prop :=
  G.maximalFlatSubmanifolds ∧ G.totallyGeodesicSubmanifolds ∧ G.orbitStructure ∧ G.intersectionProperties

theorem geodesic_orbits_closed_from_evidence {S : SymmetricSpaceStructure} (G : GeodesicOrbitsPackage S) (E : GeodesicOrbitsEvidence G) : GeodesicOrbitsClosed G :=
  And.intro E.maximalFlatSubmanifoldsClosed (And.intro E.totallyGeodesicSubmanifoldsClosed (And.intro E.orbitStructureClosed E.intersectionPropertiesClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse