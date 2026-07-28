import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure SubdiffusionModel where
  alpha : ℝ
  alpha_in_0_1 : alpha > 0 ∧ alpha < 1
  fractional_derivative_type : String
  msd_scaling : Prop

structure SubdiffusionEvidence (M : SubdiffusionModel) where
  alpha_in_0_1_closed : M.alpha_in_0_1
  msd_scaling_closed : M.msd_scaling

def SubdiffusionClosed (M : SubdiffusionModel) : Prop :=
  M.alpha_in_0_1 ∧ M.msd_scaling

theorem subdiffusion_closed_from_evidence (M : SubdiffusionModel)
    (E : SubdiffusionEvidence M) : SubdiffusionClosed M := by
  exact And.intro E.alpha_in_0_1_closed E.msd_scaling_closed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
