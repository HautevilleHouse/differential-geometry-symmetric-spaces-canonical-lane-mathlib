import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure SymmetricSpaceStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  symmetryPoint : manifold
  geodesicSymmetry : manifold → manifold
  isInvolution : (fun x : manifold => geodesicSymmetry (geodesicSymmetry x)) = id
  symmetryIsIsometry : Prop
  curvatureInvariantUnderSymmetry : Prop

structure SymmetricSpaceEvidence (S : SymmetricSpaceStructure) where
  smoothStructureClosed : S.smoothStructure
  symmetryIsIsometryClosed : S.symmetryIsIsometry
  curvatureInvariantUnderSymmetryClosed : S.curvatureInvariantUnderSymmetry

def SymmetricSpaceClosed (S : SymmetricSpaceStructure) : Prop :=
  S.smoothStructure ∧ S.symmetryIsIsometry ∧ S.curvatureInvariantUnderSymmetry

theorem symmetric_space_closed_from_evidence (S : SymmetricSpaceStructure) (E : SymmetricSpaceEvidence S) : SymmetricSpaceClosed S :=
  And.intro E.smoothStructureClosed (And.intro E.symmetryIsIsometryClosed E.curvatureInvariantUnderSymmetryClosed)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse