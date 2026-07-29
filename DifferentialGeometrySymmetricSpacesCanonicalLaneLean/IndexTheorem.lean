import DifferentialGeometrySymmetricSpacesCanonicalLaneLean.SymmetricSpaceDecomposition

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperatorDefined : Prop
  topologicalIndex : Prop
  analyticIndex : Prop
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  ellipticOperatorDefinedClosed : I.ellipticOperatorDefined
  topologicalIndexClosed : I.topologicalIndex
  analyticIndexClosed : I.analyticIndex
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.ellipticOperatorDefined ∧ I.topologicalIndex ∧
  I.analyticIndex ∧ I.indexEquality

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorDefinedClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.analyticIndexClosed E.indexEqualityClosed))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse
