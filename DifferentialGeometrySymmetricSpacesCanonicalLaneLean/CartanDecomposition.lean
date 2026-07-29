import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure CartanDecompositionPackage (S : SymmetricSpaceStructure) where
  lieAlgebra : Type u
  involution : lieAlgebra → lieAlgebra
  decomposition : lieAlgebra → lieAlgebra × lieAlgebra
  decompositionProperties : Prop
  maximalAbelianSubalgebra : Prop

structure CartanDecompositionEvidence {S : SymmetricSpaceStructure} (C : CartanDecompositionPackage S) where
  decompositionPropertiesClosed : C.decompositionProperties
  maximalAbelianSubalgebraClosed : C.maximalAbelianSubalgebra

def CartanDecompositionClosed {S : SymmetricSpaceStructure} (C : CartanDecompositionPackage S) : Prop :=
  C.decompositionProperties ∧ C.maximalAbelianSubalgebra

theorem cartan_decomposition_closed_from_evidence {S : SymmetricSpaceStructure} (C : CartanDecompositionPackage S) (E : CartanDecompositionEvidence C) : CartanDecompositionClosed C :=
  And.intro E.decompositionPropertiesClosed E.maximalAbelianSubalgebraClosed

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse