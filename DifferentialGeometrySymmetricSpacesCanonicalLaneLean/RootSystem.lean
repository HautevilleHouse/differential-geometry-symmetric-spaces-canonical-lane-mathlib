import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure RootSystemPackage (S : SymmetricSpaceStructure) where
  restrictedRootSystem : Type u
  rank : ℕ
  rootLattice : Type u
  weylGroup : Type u
  rootSystemProperties : Prop
  classificationType : Prop

structure RootSystemEvidence {S : SymmetricSpaceStructure} (R : RootSystemPackage S) where
  rootSystemPropertiesClosed : R.rootSystemProperties
  classificationTypeClosed : R.classificationType

def RootSystemClosed {S : SymmetricSpaceStructure} (R : RootSystemPackage S) : Prop :=
  R.rootSystemProperties ∧ R.classificationType

theorem root_system_closed_from_evidence {S : SymmetricSpaceStructure} (R : RootSystemPackage S) (E : RootSystemEvidence R) : RootSystemClosed R :=
  And.intro E.rootSystemPropertiesClosed E.classificationTypeClosed

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse