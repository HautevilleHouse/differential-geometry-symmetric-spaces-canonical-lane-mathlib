import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpacesAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure HolonomyGroupPackage where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  holonomyRepresentation : Type w
  holonomyInvariant : Prop
  holonomyClosedUnderConnection : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  holonomyInvariantClosed : H.holonomyInvariant
  holonomyClosedUnderConnectionClosed : H.holonomyClosedUnderConnection

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.holonomyInvariant ∧ H.holonomyClosedUnderConnection

theorem holonomy_group_closed_from_evidence
    (H : HolonomyGroupPackage) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.holonomyInvariantClosed E.holonomyClosedUnderConnectionClosed

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse
