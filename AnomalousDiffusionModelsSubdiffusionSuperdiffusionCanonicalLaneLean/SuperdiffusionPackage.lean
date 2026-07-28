import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure SuperdiffusionModel where
  alpha : ℝ
  alpha_in_1_2 : alpha > 1 ∧ alpha ≤ 2
  levy_exponent : ℝ
  msd_scaling : Prop

structure SuperdiffusionEvidence (M : SuperdiffusionModel) where
  alpha_in_1_2_closed : M.alpha_in_1_2
  msd_scaling_closed : M.msd_scaling

def SuperdiffusionClosed (M : SuperdiffusionModel) : Prop :=
  M.alpha_in_1_2 ∧ M.msd_scaling

theorem superdiffusion_closed_from_evidence (M : SuperdiffusionModel)
    (E : SuperdiffusionEvidence M) : SuperdiffusionClosed M := by
  exact And.intro E.alpha_in_1_2_closed E.msd_scaling_closed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
