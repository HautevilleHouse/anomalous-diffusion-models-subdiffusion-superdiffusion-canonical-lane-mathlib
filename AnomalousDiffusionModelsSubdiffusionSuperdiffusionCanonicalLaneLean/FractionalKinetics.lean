import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure FractionalKineticsPackage where
  fractionalFokkerPlanck : Prop
  nonFickianTransport : Prop
  memoryEffects : Prop
  longTimeAsymptotics : Prop

structure FractionalKineticsEvidence (K : FractionalKineticsPackage) where
  fractionalFokkerPlanckClosed : K.fractionalFokkerPlanck
  nonFickianTransportClosed : K.nonFickianTransport
  memoryEffectsClosed : K.memoryEffects
  longTimeAsymptoticsClosed : K.longTimeAsymptotics

def FractionalKineticsClosed (K : FractionalKineticsPackage) : Prop :=
  K.fractionalFokkerPlanck ∧ K.nonFickianTransport ∧ K.memoryEffects ∧ K.longTimeAsymptotics

theorem fractional_kinetics_closed_from_evidence
    (K : FractionalKineticsPackage) (E : FractionalKineticsEvidence K) :
    FractionalKineticsClosed K := by
  exact And.intro E.fractionalFokkerPlanckClosed
    (And.intro E.nonFickianTransportClosed
      (And.intro E.memoryEffectsClosed E.longTimeAsymptoticsClosed))

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse