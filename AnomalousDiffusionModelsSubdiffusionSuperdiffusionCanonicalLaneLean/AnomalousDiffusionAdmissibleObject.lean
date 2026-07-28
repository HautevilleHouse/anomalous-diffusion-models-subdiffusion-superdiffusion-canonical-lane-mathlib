import canonicalLaneMathlib.AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities

/-!
# Anomalous Diffusion Admissible Object Package
-/

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure AnomalousDiffusionAdmissibleObject where
  diffusionExponent : Float
  scalingRelation : Prop
  conclusion : scalingRelation

def AnomalousDiffusionWitnessClosed (O : AnomalousDiffusionAdmissibleObject) : Prop :=
  O.conclusion

structure AnomalousDiffusionAdmissibleObjectEvidence (O : AnomalousDiffusionAdmissibleObject) where
  scalingRelationClosed : O.scalingRelation

def AnomalousDiffusionAdmissibleObjectClosed (O : AnomalousDiffusionAdmissibleObject) : Prop :=
  O.scalingRelation

theorem anomalous_diffusion_admissible_object_closed_from_evidence
    (O : AnomalousDiffusionAdmissibleObject) (E : AnomalousDiffusionAdmissibleObjectEvidence O) :
    AnomalousDiffusionAdmissibleObjectClosed O := by
  exact E.scalingRelationClosed

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse
