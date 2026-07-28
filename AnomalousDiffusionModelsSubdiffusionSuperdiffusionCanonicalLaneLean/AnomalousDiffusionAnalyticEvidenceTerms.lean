import canonicalLaneMathlib.AdmissibleClass
import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionScaling

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalDerivativeEvidenceTerms {F : FractionalDerivativePackage} (C : FractionalDerivativeCertificate F) where
  fractionalOrder : C.fractionalOrder
  rieszDerivativeDefined : C.rieszDerivativeDefined
  caputoDerivativeDefined : C.caputoDerivativeDefined
  scalingCompatibility : C.scalingCompatibility
  derivativeClosed : FractionalDerivativeClosed F

structure StochasticProcessEvidenceTerms {P : StochasticProcessPackage} (C : StochasticProcessCertificate P) where
  levyFlightCharacteristic : C.levyFlightCharacteristic
  ctrwLimit : C.ctrwLimit
  ergodicityBreaking : C.ergodicityBreaking
  processClosed : StochasticProcessClosed P

structure AnomalousDiffusionAnalyticEvidenceTerms
    {F : FractionalDerivativePackage} {P : StochasticProcessPackage}
    (C : AnomalousDiffusionAnalyticCertificate F P) where
  fractionalDerivativeTerms : FractionalDerivativeEvidenceTerms C.fractionalCertificate
  stochasticProcessTerms : StochasticProcessEvidenceTerms C.stochasticCertificate
  scalingEvidence : AnomalousDiffusionScalingEvidence C.scalingPackage

def AnomalousDiffusionAnalyticCertificate.evidenceTerms
    {F : FractionalDerivativePackage} {P : StochasticProcessPackage}
    (C : AnomalousDiffusionAnalyticCertificate F P) : AnomalousDiffusionAnalyticEvidenceTerms C := {
  fractionalDerivativeTerms := {
    fractionalOrder := C.fractionalCertificate.fractionalOrderClosed
    rieszDerivativeDefined := C.fractionalCertificate.rieszDerivativeDefinedClosed
    caputoDerivativeDefined := C.fractionalCertificate.caputoDerivativeDefinedClosed
    scalingCompatibility := C.fractionalCertificate.scalingCompatibilityClosed
    derivativeClosed := fractional_derivative_closed_from_evidence F C.fractionalCertificate.derivativeEvidence
  }
  stochasticProcessTerms := {
    levyFlightCharacteristic := C.stochasticCertificate.levyFlightCharacteristicClosed
    ctrwLimit := C.stochasticCertificate.ctrwLimitClosed
    ergodicityBreaking := C.stochasticCertificate.ergodicityBreakingClosed
    processClosed := stochastic_process_closed_from_evidence P C.stochasticCertificate.processEvidence
  }
  scalingEvidence := anomalous_diffusion_scaling_closed_from_evidence C.scalingPackage C.scalingEvidence
}

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse