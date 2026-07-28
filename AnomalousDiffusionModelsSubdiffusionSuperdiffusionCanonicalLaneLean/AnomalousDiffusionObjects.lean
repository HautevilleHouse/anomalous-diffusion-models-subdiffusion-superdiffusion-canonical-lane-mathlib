import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure AnomalousDiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AnomalousDiffusionAdmittedObject where
  space : AnomalousDiffusionSpace
  isSubdiffusive : Prop
  isSuperdiffusive : Prop
  meanSquaredDisplacementExponent : ℝ
  exponentConclusion : meanSquaredDisplacementExponent ≠ 1

structure AnomalousDiffusionEndgameState where
  object : AnomalousDiffusionAdmittedObject

def AnomalousDiffusionWitnessClosed (O : AnomalousDiffusionAdmittedObject) : Prop :=
  O.exponentConclusion

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse