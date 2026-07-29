import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure SeparationProcessesPackage where
  distillationModel : Prop
  absorptionModel : Prop
  membraneSeparation : Prop
  chromatography : Prop
  extractionModel : Prop

structure SeparationProcessesEvidence (S : SeparationProcessesPackage) where
  distillationModelClosed : S.distillationModel
  absorptionModelClosed : S.absorptionModel
  membraneSeparationClosed : S.membraneSeparation
  chromatographyClosed : S.chromatography
  extractionModelClosed : S.extractionModel

def SeparationProcessesClosed (S : SeparationProcessesPackage) : Prop :=
  S.distillationModel ∧ S.absorptionModel ∧ S.membraneSeparation ∧
  S.chromatography ∧ S.extractionModel

theorem separation_processes_closed_from_evidence (S : SeparationProcessesPackage)
    (E : SeparationProcessesEvidence S) : SeparationProcessesClosed S := by
  exact And.intro E.distillationModelClosed
    (And.intro E.absorptionModelClosed
      (And.intro E.membraneSeparationClosed
        (And.intro E.chromatographyClosed E.extractionModelClosed)))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse