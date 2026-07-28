import canonicalLaneMathlib.AdmissibleClass
import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionObjects

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure AnomalousDiffusionScalingPackage where
  exponentRange : ℝ × ℝ
  meanSquaredDisplacementLaw : Prop
  momentBound : Prop
  scalingRelation : Prop

structure AnomalousDiffusionScalingEvidence (S : AnomalousDiffusionScalingPackage) where
  exponentRangeClosed : S.exponentRange.1 < S.exponentRange.2
  meanSquaredDisplacementLawClosed : S.meanSquaredDisplacementLaw
  momentBoundClosed : S.momentBound
  scalingRelationClosed : S.scalingRelation

def AnomalousDiffusionScalingClosed (S : AnomalousDiffusionScalingPackage) : Prop :=
  (S.exponentRange.1 < S.exponentRange.2) ∧ S.meanSquaredDisplacementLaw ∧ S.momentBound ∧ S.scalingRelation

theorem anomalous_diffusion_scaling_closed_from_evidence
    (S : AnomalousDiffusionScalingPackage) (E : AnomalousDiffusionScalingEvidence S) :
    AnomalousDiffusionScalingClosed S := by
  exact And.intro E.exponentRangeClosed
    (And.intro E.meanSquaredDisplacementLawClosed
      (And.intro E.momentBoundClosed E.scalingRelationClosed))

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse