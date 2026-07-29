import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure RootSystemStructurePackage where
  rootSystem : Type u
  restrictedRootSystem : Type v
  satakeDiagram : Type w
  multiplicities : Prop
  rankInvariants : Prop

structure RootSystemStructureEvidence (R : RootSystemStructurePackage) where
  multiplicitiesClosed : R.multiplicities
  rankInvariantsClosed : R.rankInvariants

def RootSystemStructureClosed (R : RootSystemStructurePackage) : Prop :=
  R.multiplicities ∧ R.rankInvariants

theorem root_system_structure_closed_from_evidence
    (R : RootSystemStructurePackage) (E : RootSystemStructureEvidence R) :
    RootSystemStructureClosed R := by
  exact And.intro E.multiplicitiesClosed E.rankInvariantsClosed

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse