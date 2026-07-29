import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure HolonomyReductionPackage where
  holonomyGroup : Type u
  restrictedHolonomy : Type v
  deRhamDecomposition : Prop
  irreducibility : Prop
  symmetricSpaceClassification : Prop

structure HolonomyReductionEvidence (H : HolonomyReductionPackage) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  irreducibilityClosed : H.irreducibility
  symmetricSpaceClassificationClosed : H.symmetricSpaceClassification

def HolonomyReductionClosed (H : HolonomyReductionPackage) : Prop :=
  H.deRhamDecomposition ∧ H.irreducibility ∧ H.symmetricSpaceClassification

theorem holonomy_reduction_closed_from_evidence
    (H : HolonomyReductionPackage) (E : HolonomyReductionEvidence H) :
    HolonomyReductionClosed H := by
  exact And.intro E.deRhamDecompositionClosed
    (And.intro E.irreducibilityClosed E.symmetricSpaceClassificationClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse