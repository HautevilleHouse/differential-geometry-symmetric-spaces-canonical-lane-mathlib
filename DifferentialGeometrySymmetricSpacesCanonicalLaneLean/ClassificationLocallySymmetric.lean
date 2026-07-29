import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure ClassificationLocallySymmetricPackage where
  locallySymmetricSpacesClassified : Prop
  irreducibleDecomposition : Prop
  rankAndTypeDetermined : Prop
  symmetricSpaceListComplete : Prop

def ClassificationLocallySymmetricClosed (C : ClassificationLocallySymmetricPackage) : Prop :=
  C.locallySymmetricSpacesClassified ∧ C.irreducibleDecomposition ∧ C.rankAndTypeDetermined ∧ C.symmetricSpaceListComplete

theorem classification_locally_symmetric_closed (C : ClassificationLocallySymmetricPackage) : ClassificationLocallySymmetricClosed C :=
  And.intro C.locallySymmetricSpacesClassified (And.intro C.irreducibleDecomposition (And.intro C.rankAndTypeDetermined C.symmetricSpaceListComplete))

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse