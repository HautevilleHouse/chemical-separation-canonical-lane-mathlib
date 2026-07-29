import ChemicalSeparationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  equilibriumConstant : Prop
  reactionMechanism : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  equilibriumConstantClosed : R.equilibriumConstant
  reactionMechanismClosed : R.reactionMechanism

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.equilibriumConstant ∧ R.reactionMechanism

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.equilibriumConstantClosed E.reactionMechanismClosed))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse