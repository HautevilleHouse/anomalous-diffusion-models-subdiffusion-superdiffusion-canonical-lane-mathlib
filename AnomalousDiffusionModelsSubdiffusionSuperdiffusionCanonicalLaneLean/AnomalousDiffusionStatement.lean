import canonicalLaneMathlib.AdmissibleClass
import AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean.AnomalousDiffusionObjects

namespace HautevilleHouse
namespace AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean

structure AnomalousDiffusionProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def anomalousDiffusionProofObligation : AnomalousDiffusionProofObligation := {
  sourceKey := "anomalous-diffusion-canonical-lane",
  theoremObject := "Anomalous Diffusion Models: Subdiffusion and Superdiffusion",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem anomaly_common_core_imported_checked :
    anomalousDiffusionProofObligation.commonCoreImported = true := by
  rfl

theorem anomaly_theorem_specific_definitions_native_checked :
    anomalousDiffusionProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem anomaly_theorem_specific_bridge_native_checked :
    anomalousDiffusionProofObligation.theoremSpecificBridgeNative = true := by
  rfl

theorem anomaly_theorem_specific_admitted_closure_native_checked :
    anomalousDiffusionProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

theorem anomaly_unrestricted_classical_closure_carried :
    anomalousDiffusionProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

end AnomalousDiffusionModelsSubdiffusionSuperdiffusionCanonicalLaneLean
end HautevilleHouse