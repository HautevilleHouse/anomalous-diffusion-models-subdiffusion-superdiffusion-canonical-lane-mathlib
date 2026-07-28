import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure MeanSquareDisplacementPackage where
  anomalyExponent : ℝ
  subdiffusiveRange : ℝ × ℝ
  superdiffusiveRange : ℝ × ℝ
  normalDiffusionRange : ℝ × ℝ
  exponentClassification : Prop

structure MeanSquareDisplacementEvidence (M : MeanSquareDisplacementPackage) where
  exponentClassificationClosed : M.exponentClassification

def MeanSquareDisplacementClosed (M : MeanSquareDisplacementPackage) : Prop :=
  M.exponentClassification

theorem mean_square_displacement_closed_from_evidence
    (M : MeanSquareDisplacementPackage) (E : MeanSquareDisplacementEvidence M) :
    MeanSquareDisplacementClosed M := by
  exact E.exponentClassificationClosed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse