import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure HarmonicAnalysisPackage where
  sphericalFunctions : Type u
  plancherelFormula : Prop
  helgasonFourierTransform : Type v
  poissonTransforms : Prop

structure HarmonicAnalysisEvidence (H : HarmonicAnalysisPackage) where
  plancherelFormulaClosed : H.plancherelFormula
  poissonTransformsClosed : H.poissonTransforms

def HarmonicAnalysisClosed (H : HarmonicAnalysisPackage) : Prop :=
  H.plancherelFormula ∧ H.poissonTransforms

theorem harmonic_analysis_closed_from_evidence
    (H : HarmonicAnalysisPackage) (E : HarmonicAnalysisEvidence H) :
    HarmonicAnalysisClosed H := by
  exact And.intro E.plancherelFormulaClosed E.poissonTransformsClosed

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse