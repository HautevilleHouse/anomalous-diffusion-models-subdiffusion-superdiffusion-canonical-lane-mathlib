import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  diffusionConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "anomalous-diffusion-models-subdiffusion-superdiffusion-canonical-lane"
    theoremName := "AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean"
    theoremObject := "Anomalous Diffusion Models: Subdiffusion and Superdiffusion"
    classicalBoundary := "open boundary: source conjecture closure not claimed"
    diffusionConstrainedStatement := "diffusion-constrained theorem certificate internalized through bridge and gate closure"
    certificateLane := "diffusion_constrained"
    carriedRemainder := "classical source boundary remains outside the constrained closure"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "anomalous-diffusion-models-subdiffusion-superdiffusion-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "diffusion_constrained" := by
  rfl

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse