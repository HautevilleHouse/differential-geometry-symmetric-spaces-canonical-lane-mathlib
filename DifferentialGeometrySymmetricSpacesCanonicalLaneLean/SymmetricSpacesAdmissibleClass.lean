import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure SymmetricSpaceObject where
  space : Type u
  topology : TopologicalSpace space
  riemannianMetric : Type v
  symmetricStructure : Prop
  geodesicSymevaluation : Prop
  conclusion : symmetricStructure ∧ geodesicSymevaluation

structure AdmissibleClass where
  object : SymmetricSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SymmetricSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SymmetricSpaceWitnessClosed (O : SymmetricSpaceObject) : Prop :=
  O.symmetricStructure ∧ O.geodesicSymevaluation

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse
