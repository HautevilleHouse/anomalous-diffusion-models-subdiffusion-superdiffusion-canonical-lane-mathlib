import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure SuperdiffusionModel where
  levyFlightParameter : ℝ
  jumpLengthDistribution : Type u
  meanSquaredDisplacementSuper : ℝ → ℝ
  fractionalKineticEquationValid : Prop

structure SuperdiffusionModelEvidence (S : SuperdiffusionModel) where
  levyFlightParameterClosed : 1 < S.levyFlightParameter ∧ S.levyFlightParameter < 2
  jumpLengthDistributionClosed : S.jumpLengthDistribution = InfiniteVarianceDistribution
  meanSquaredDisplacementSuperClosed : ∀ t, S.meanSquaredDisplacementSuper t = t^(2 / S.levyFlightParameter)
  fractionalKineticEquationValidClosed : S.fractionalKineticEquationValid

-- Placeholder
inductive JumpDistributionType
| InfiniteVarianceDistribution
| FiniteVarianceDistribution

def InfiniteVarianceDistribution : JumpDistributionType := JumpDistributionType.InfiniteVarianceDistribution

def SuperdiffusionModelClosed (S : SuperdiffusionModel) : Prop :=
  (1 < S.levyFlightParameter ∧ S.levyFlightParameter < 2) ∧
  S.jumpLengthDistribution = InfiniteVarianceDistribution ∧
  (∀ t, S.meanSquaredDisplacementSuper t = t^(2 / S.levyFlightParameter)) ∧
  S.fractionalKineticEquationValid

theorem superdiffusion_model_closed_from_evidence
    (S : SuperdiffusionModel) (E : SuperdiffusionModelEvidence S) :
    SuperdiffusionModelClosed S := by
  exact And.intro E.levyFlightParameterClosed
    (And.intro E.jumpLengthDistributionClosed
      (And.intro E.meanSquaredDisplacementSuperClosed E.fractionalKineticEquationValidClosed))

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse