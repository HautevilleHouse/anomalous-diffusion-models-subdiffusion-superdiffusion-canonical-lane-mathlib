import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalDiffusionEquationPackage where
  equation : Type u
  fractionalOrder : ℝ
  initialCondition : Prop
  solutionExistence : Prop
  uniqueness : Prop

structure FractionalDiffusionEquationEvidence (F : FractionalDiffusionEquationPackage) where
  initialConditionClosed : F.initialCondition
  solutionExistenceClosed : F.solutionExistence
  uniquenessClosed : F.uniqueness

def FractionalDiffusionEquationClosed (F : FractionalDiffusionEquationPackage) : Prop :=
  F.initialCondition ∧ F.solutionExistence ∧ F.uniqueness

theorem fractional_diffusion_equation_closed_from_evidence
    (F : FractionalDiffusionEquationPackage) (E : FractionalDiffusionEquationEvidence F) :
    FractionalDiffusionEquationClosed F := by
  exact And.intro E.initialConditionClosed (And.intro E.solutionExistenceClosed E.uniquenessClosed)

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse