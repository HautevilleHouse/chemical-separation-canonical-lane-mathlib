import ChemicalSeparationCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  homoEnergy : Prop
  lumoEnergy : Prop
  gapEnergy : Prop
  orbitalSymmetry : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  homoEnergyClosed : M.homoEnergy
  lumoEnergyClosed : M.lumoEnergy
  gapEnergyClosed : M.gapEnergy
  orbitalSymmetryClosed : M.orbitalSymmetry

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.homoEnergy ∧ M.lumoEnergy ∧ M.gapEnergy ∧ M.orbitalSymmetry

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.homoEnergyClosed
    (And.intro E.lumoEnergyClosed
      (And.intro E.gapEnergyClosed E.orbitalSymmetryClosed))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse