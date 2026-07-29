import ChemicalSeparationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

def ConstrainedChemicalSeparationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_separation_endgame (A : AdmissibleClass) :
    ConstrainedChemicalSeparationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse