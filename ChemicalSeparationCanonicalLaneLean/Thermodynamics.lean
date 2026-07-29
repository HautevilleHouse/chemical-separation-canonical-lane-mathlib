import ChemicalSeparationCanonicalLaneLean.MolecularOrbitalTheory

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpyChange : Prop
  entropyChange : Prop
  gibbsFreeEnergy : Prop
  temperatureDependence : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.gibbsFreeEnergy ∧ T.temperatureDependence

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.gibbsFreeEnergyClosed E.temperatureDependenceClosed))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse