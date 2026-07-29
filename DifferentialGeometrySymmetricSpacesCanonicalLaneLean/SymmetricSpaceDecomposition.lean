import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.GeodesicSymmetry
import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.CurvatureInvariants
import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.HolonomyGroup

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure SymmetricSpaceDecompositionPackage where
  tangentSpaceDecomposition : Prop
  symmetricPair : Prop
  curvatureHolonomyRelation : Prop
  deRhamDecompositionApplied : Prop

structure SymmetricSpaceDecompositionEvidence (D : SymmetricSpaceDecompositionPackage) where
  tangentSpaceDecompositionClosed : D.tangentSpaceDecomposition
  symmetricPairClosed : D.symmetricPair
  curvatureHolonomyRelationClosed : D.curvatureHolonomyRelation
  deRhamDecompositionAppliedClosed : D.deRhamDecompositionApplied

def SymmetricSpaceDecompositionClosed (D : SymmetricSpaceDecompositionPackage) : Prop :=
  D.tangentSpaceDecomposition ∧ D.symmetricPair ∧
  D.curvatureHolonomyRelation ∧ D.deRhamDecompositionApplied

theorem symmetric_space_decomposition_closed_from_evidence
    (D : SymmetricSpaceDecompositionPackage) (E : SymmetricSpaceDecompositionEvidence D) :
    SymmetricSpaceDecompositionClosed D := by
  exact And.intro E.tangentSpaceDecompositionClosed
    (And.intro E.symmetricPairClosed
      (And.intro E.curvatureHolonomyRelationClosed E.deRhamDecompositionAppliedClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse
