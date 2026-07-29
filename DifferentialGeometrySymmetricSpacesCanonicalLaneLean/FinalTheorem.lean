import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

def ConstrainedSymmetricSpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_symmetric_space_endgame (A : AdmissibleClass) :
    ConstrainedSymmetricSpaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse