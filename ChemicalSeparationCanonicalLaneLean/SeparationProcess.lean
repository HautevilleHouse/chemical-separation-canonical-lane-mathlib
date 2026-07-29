import ChemicalSeparationCanonicalLaneLean.ChemicalEquilibrium

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure SeparationProcessPackage {P : ReactionKineticsPackage} {M : MolecularOrbitalPackage P} {T : ThermodynamicsPackage M} {E : ChemicalEquilibriumPackage T} where
  drivingForce : Prop
  massTransferModel : Prop
  stageEfficiency : Prop
  productPurity : Prop

structure SeparationProcessEvidence {P : ReactionKineticsPackage} {M : MolecularOrbitalPackage P} {T : ThermodynamicsPackage M} {E : ChemicalEquilibriumPackage T} (S : SeparationProcessPackage E) where
  drivingForceClosed : S.drivingForce
  massTransferModelClosed : S.massTransferModel
  stageEfficiencyClosed : S.stageEfficiency
  productPurityClosed : S.productPurity

def SeparationProcessClosed {P : ReactionKineticsPackage} {M : MolecularOrbitalPackage P} {T : ThermodynamicsPackage M} {E : ChemicalEquilibriumPackage T} (S : SeparationProcessPackage E) : Prop :=
  S.drivingForce ∧ S.massTransferModel ∧ S.stageEfficiency ∧ S.productPurity

theorem separation_process_closed_from_evidence {P : ReactionKineticsPackage} {M : MolecularOrbitalPackage P} {T : ThermodynamicsPackage M} {E : ChemicalEquilibriumPackage T} (S : SeparationProcessPackage E) (Ev : SeparationProcessEvidence S) :
    SeparationProcessClosed S := by
  exact And.intro Ev.drivingForceClosed (And.intro Ev.massTransferModelClosed (And.intro Ev.stageEfficiencyClosed Ev.productPurityClosed))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse