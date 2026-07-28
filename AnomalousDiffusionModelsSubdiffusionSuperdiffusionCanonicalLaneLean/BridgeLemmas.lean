import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnomalousWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.scaling_proved

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
