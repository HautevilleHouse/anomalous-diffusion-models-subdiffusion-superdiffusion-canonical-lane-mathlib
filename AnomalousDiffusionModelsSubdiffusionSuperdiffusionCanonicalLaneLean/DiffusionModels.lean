import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure SubdiffusionPackage where
  fractionalDerivativeOrder : ℝ
  waitingTimeDistribution : Type
  meanFirstPassageTime : Prop

structure SubdiffusionEvidence (S : SubdiffusionPackage) where
  fractionalDerivativeOrderClosed : S.fractionalDerivativeOrder > 0
  meanFirstPassageTimeClosed : S.meanFirstPassageTime

def SubdiffusionClosed (S : SubdiffusionPackage) : Prop :=
  S.fractionalDerivativeOrder > 0 ∧ S.meanFirstPassageTime

theorem subdiffusion_closed_from_evidence (S : SubdiffusionPackage) (E : SubdiffusionEvidence S) : SubdiffusionClosed S := by
  exact And.intro E.fractionalDerivativeOrderClosed E.meanFirstPassageTimeClosed

structure SuperdiffusionPackage where
  alpha : ℝ
  levyFlightParameter : Type
  ballisticScaling : Prop

structure SuperdiffusionEvidence (S : SuperdiffusionPackage) where
  alphaClosed : S.alpha > 1
  ballisticScalingClosed : S.ballisticScaling

def SuperdiffusionClosed (S : SuperdiffusionPackage) : Prop :=
  S.alpha > 1 ∧ S.ballisticScaling

theorem superdiffusion_closed_from_evidence (S : SuperdiffusionPackage) (E : SuperdiffusionEvidence S) : SuperdiffusionClosed S := by
  exact And.intro E.alphaClosed E.ballisticScalingClosed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse