import canonicalLaneMathlib.AdmissibleClass
import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionAnalyticEvidenceTerms

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalDerivativePackage where
  fractionalOrder : ℝ
  rieszDerivativeDefined : Prop
  caputoDerivativeDefined : Prop
  scalingCompatibility : Prop

structure FractionalDerivativeCertificate (F : FractionalDerivativePackage) where
  fractionalOrder : Prop
  rieszDerivativeDefined : Prop
  caputoDerivativeDefined : Prop
  scalingCompatibility : Prop
  fractionalOrderClosed : fractionalOrder
  rieszDerivativeDefinedClosed : rieszDerivativeDefined
  caputoDerivativeDefinedClosed : caputoDerivativeDefined
  scalingCompatibilityClosed : scalingCompatibility
  derivativeEvidence : FractionalDerivativeEvidence F

def FractionalDerivativeClosed (F : FractionalDerivativePackage) : Prop :=
  F.rieszDerivativeDefined ∧ F.caputoDerivativeDefined ∧ F.scalingCompatibility

theorem fractional_derivative_closed_from_evidence
    (F : FractionalDerivativePackage) (E : FractionalDerivativeEvidence F) : FractionalDerivativeClosed F := by
  exact And.intro E.rieszDerivativeDefinedClosed
    (And.intro E.caputoDerivativeDefinedClosed E.scalingCompatibilityClosed)

structure StochasticProcessPackage where
  levyFlightStableIndex : ℝ
  ctrwWaitingTime : ℝ → ℝ
  ergodicityBreakingParameter : ℝ

structure StochasticProcessCertificate (P : StochasticProcessPackage) where
  levyFlightCharacteristic : Prop
  ctrwLimit : Prop
  ergodicityBreaking : Prop
  levyFlightCharacteristicClosed : levyFlightCharacteristic
  ctrwLimitClosed : ctrwLimit
  ergodicityBreakingClosed : ergodicityBreaking
  processEvidence : StochasticProcessEvidence P

def StochasticProcessClosed (P : StochasticProcessPackage) : Prop :=
  P.levyFlightStableIndex > 0 ∧ P.ctrwWaitingTime 1 > 0

theorem stochastic_process_closed_from_evidence
    (P : StochasticProcessPackage) (E : StochasticProcessEvidence P) : StochasticProcessClosed P := by
  exact And.intro E.levyFlightCharacteristicClosed
    (And.intro E.ctrwLimitClosed E.ergodicityBreakingClosed)

structure AnomalousDiffusionAnalyticCertificate
    (F : FractionalDerivativePackage) (P : StochasticProcessPackage) where
  fractionalCertificate : FractionalDerivativeCertificate F
  stochasticCertificate : StochasticProcessCertificate P
  scalingPackage : AnomalousDiffusionScalingPackage
  scalingEvidence : AnomalousDiffusionScalingEvidence scalingPackage

def AnomalousDiffusionAnalyticCertificateClosed
    {F : FractionalDerivativePackage} {P : StochasticProcessPackage}
    (C : AnomalousDiffusionAnalyticCertificate F P) : Prop :=
  FractionalDerivativeClosed F ∧ StochasticProcessClosed P ∧ AnomalousDiffusionScalingClosed C.scalingPackage

theorem anomalous_diffusion_analytic_certificate_closed
    {F : FractionalDerivativePackage} {P : StochasticProcessPackage}
    (C : AnomalousDiffusionAnalyticCertificate F P) : AnomalousDiffusionAnalyticCertificateClosed C := by
  exact And.intro (fractional_derivative_closed_from_evidence F C.fractionalCertificate.derivativeEvidence)
    (And.intro (stochastic_process_closed_from_evidence P C.stochasticCertificate.processEvidence)
      (anomalous_diffusion_scaling_closed_from_evidence C.scalingPackage C.scalingEvidence))

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse