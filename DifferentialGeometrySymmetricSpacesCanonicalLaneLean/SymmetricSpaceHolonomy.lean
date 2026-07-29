import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure SymmetricSpaceHolonomyPackage where
  manifoldType : Type u
  holonomyGroup : Type v
  symmetricSpaceCondition : Prop
  deRhamDecomposition : Prop
  holonomyReducibility : Prop

structure SymmetricSpaceHolonomyEvidence (H : SymmetricSpaceHolonomyPackage) where
  symmetricSpaceConditionClosed : H.symmetricSpaceCondition
  deRhamDecompositionClosed : H.deRhamDecomposition
  holonomyReducibilityClosed : H.holonomyReducibility

def SymmetricSpaceHolonomyClosed (H : SymmetricSpaceHolonomyPackage) : Prop :=
  H.symmetricSpaceCondition ∧ H.deRhamDecomposition ∧ H.holonomyReducibility

theorem symmetric_space_holonomy_closed_from_evidence
    (H : SymmetricSpaceHolonomyPackage) (E : SymmetricSpaceHolonomyEvidence H) :
    SymmetricSpaceHolonomyClosed H := by
  exact And.intro E.symmetricSpaceConditionClosed
    (And.intro E.deRhamDecompositionClosed E.holonomyReducibilityClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse