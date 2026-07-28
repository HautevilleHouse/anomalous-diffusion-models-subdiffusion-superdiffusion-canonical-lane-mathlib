import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalDiffusionPDEPackage where
  fractionalOrder : ℝ
  diffusionCoefficient : ℝ
  equationForm : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure FractionalDiffusionPDEEvidence (F : FractionalDiffusionPDEPackage) where
  fractionalOrderClosed : F.fractionalOrder > 0 ∧ F.fractionalOrder < 2
  diffusionCoefficientClosed : F.diffusionCoefficient > 0
  equationFormClosed : F.equationForm
  initialConditionClosed : F.initialCondition
  boundaryConditionClosed : F.boundaryCondition

def FractionalDiffusionPDEClosed (F : FractionalDiffusionPDEPackage) : Prop :=
  F.fractionalOrder > 0 ∧ F.fractionalOrder < 2 ∧
  F.diffusionCoefficient > 0 ∧
  F.equationForm ∧ F.initialCondition ∧ F.boundaryCondition

theorem fractional_diffusion_pde_closed_from_evidence
    (F : FractionalDiffusionPDEPackage)
    (E : FractionalDiffusionPDEEvidence F) : FractionalDiffusionPDEClosed F := by
  exact And.intro E.fractionalOrderClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.equationFormClosed
        (And.intro E.initialConditionClosed E.boundaryConditionClosed)))

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse