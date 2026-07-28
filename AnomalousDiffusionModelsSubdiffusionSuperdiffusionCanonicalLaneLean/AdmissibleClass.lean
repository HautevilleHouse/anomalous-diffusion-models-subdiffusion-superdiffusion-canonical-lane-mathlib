import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure DiffusionModel where
  carrier : Type
  anomalousExponent : ℝ
  isSubdiffusion : Prop
  isSuperdiffusion : Prop

structure AdmittedObject where
  model : DiffusionModel
  exponentBound : Prop
  conclusion : exponentBound

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse