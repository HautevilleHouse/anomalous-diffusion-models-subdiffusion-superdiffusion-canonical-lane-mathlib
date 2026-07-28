import canonicalLaneMathlib.AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.ScalingExponents
import Mathlib.Analysis.Calculus.MeanInequalities

/-!
# Mean Squared Displacement Package
-/

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure MeanSquaredDisplacementPackage {O : AnomalousDiffusionAdmissibleObject}
    (S : ScalingExponentsPackage O) where
  msdFormula : Prop
  powerLawScaling : Prop
  anomalousExponent : Float

def MeanSquaredDisplacementPackageClosed {O : AnomalousDiffusionAdmissibleObject}
    (S : ScalingExponentsPackage O) (M : MeanSquaredDisplacementPackage S) : Prop :=
  M.msdFormula ∧ M.powerLawScaling

structure MeanSquaredDisplacementEvidence {O : AnomalousDiffusionAdmissibleObject}
    (S : ScalingExponentsPackage O) (M : MeanSquaredDisplacementPackage S) where
  msdFormulaClosed : M.msdFormula
  powerLawScalingClosed : M.powerLawScaling

theorem msd_closed_from_evidence {O : AnomalousDiffusionAdmissibleObject}
    (S : ScalingExponentsPackage O) (M : MeanSquaredDisplacementPackage S)
    (E : MeanSquaredDisplacementEvidence S M) :
    MeanSquaredDisplacementPackageClosed S M := by
  exact And.intro E.msdFormulaClosed E.powerLawScalingClosed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
