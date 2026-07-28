import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure CTRWModelPackage where
  waitingTimeDistribution : Type u
  jumpLengthDistribution : Type v
  renewalProcess : Prop
  scalingLimit : Prop
  heavyTails : Prop

structure CTRWModelEvidence (C : CTRWModelPackage) where
  renewalProcessClosed : C.renewalProcess
  scalingLimitClosed : C.scalingLimit
  heavyTailsClosed : C.heavyTails

def CTRWModelClosed (C : CTRWModelPackage) : Prop :=
  C.renewalProcess ∧ C.scalingLimit ∧ C.heavyTails

theorem ctrw_model_closed_from_evidence
    (C : CTRWModelPackage) (E : CTRWModelEvidence C) : CTRWModelClosed C := by
  exact And.intro E.renewalProcessClosed (And.intro E.scalingLimitClosed E.heavyTailsClosed)

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse