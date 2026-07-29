import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.IndexTheorem

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure HolonomyPackage {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D} where
  holonomyGroupCarrier : Type u
  holonomyLieAlgebra : Type v
  deRhamDecomposition : Prop
  irreducibleComponents : Prop
  symmetricSpaceFactorization : Prop

structure HolonomyEvidence {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    (H : HolonomyPackage I) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  irreducibleComponentsClosed : H.irreducibleComponents
  symmetricSpaceFactorizationClosed : H.symmetricSpaceFactorization

def HolonomyClosed {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    (H : HolonomyPackage I) : Prop :=
  H.deRhamDecomposition ∧ H.irreducibleComponents ∧ H.symmetricSpaceFactorization

theorem holonomy_closed_from_evidence {C : CurvatureInvariantsPackage}
    {D : ConnectionTheoryPackage C} {I : IndexTheoremPackage D}
    (H : HolonomyPackage I) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.deRhamDecompositionClosed
    (And.intro E.irreducibleComponentsClosed
      E.symmetricSpaceFactorizationClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse