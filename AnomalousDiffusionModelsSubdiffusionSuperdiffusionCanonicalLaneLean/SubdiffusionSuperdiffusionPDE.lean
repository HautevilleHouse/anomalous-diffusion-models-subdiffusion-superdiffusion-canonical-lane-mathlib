import canonicalLaneMathlib.AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionAdmissibleObject
import Mathlib.Analysis.PDEs.FractionalLaplacian

/-!
# Fractional PDE Package for Subdiffusion and Superdiffusion
-/

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalPDEPackage (O : AnomalousDiffusionAdmissibleObject) where
  fractionalLaplacianOrder : Float
  pdeFormulated : Prop
  initialCondition : Prop
  solutionExists : Prop

def FractionalPDEPackageClosed (O : AnomalousDiffusionAdmissibleObject) (P : FractionalPDEPackage O) : Prop :=
  P.pdeFormulated ∧ P.initialCondition ∧ P.solutionExists

structure FractionalPDEEvidence (O : AnomalousDiffusionAdmissibleObject) (P : FractionalPDEPackage O) where
  pdeFormulatedClosed : P.pdeFormulated
  initialConditionClosed : P.initialCondition
  solutionExistsClosed : P.solutionExists

theorem fractional_pde_closed_from_evidence (O : AnomalousDiffusionAdmissibleObject)
    (P : FractionalPDEPackage O) (E : FractionalPDEEvidence O P) :
    FractionalPDEPackageClosed O P := by
  exact And.intro E.pdeFormulatedClosed (And.intro E.initialConditionClosed E.solutionExistsClosed)

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
