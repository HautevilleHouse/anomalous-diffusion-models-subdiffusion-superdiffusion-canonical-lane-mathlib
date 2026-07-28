import canonicalLaneMathlib.AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionAdmissibleObject
import Mathlib.Analysis.SpecialFunctions.Pow

/-!
# Scaling Exponents Package
-/

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure ScalingExponentsPackage (O : AnomalousDiffusionAdmissibleObject) where
  waitingTimeExponent : Float
  jumpLengthExponent : Float
  scalingRelationHolds : Prop

def ScalingExponentsPackageClosed (O : AnomalousDiffusionAdmissibleObject) (S : ScalingExponentsPackage O) : Prop :=
  S.scalingRelationHolds

structure ScalingExponentsEvidence (O : AnomalousDiffusionAdmissibleObject) (S : ScalingExponentsPackage O) where
  scalingRelationClosed : S.scalingRelationHolds

theorem scaling_exponents_closed_from_evidence (O : AnomalousDiffusionAdmissibleObject)
    (S : ScalingExponentsPackage O) (E : ScalingExponentsEvidence O S) :
    ScalingExponentsPackageClosed O S := by
  exact E.scalingRelationClosed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
