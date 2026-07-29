import ChemicalSeparationCanonicalLaneLean.Thermodynamics

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantExpression : Prop
  leChateliersPrinciple : Prop
  reactionQuotient : Prop
  equilibriumComposition : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantExpressionClosed : C.equilibriumConstantExpression
  leChateliersPrincipleClosed : C.leChateliersPrinciple
  reactionQuotientClosed : C.reactionQuotient
  equilibriumCompositionClosed : C.equilibriumComposition

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantExpression ∧ C.leChateliersPrinciple ∧
  C.reactionQuotient ∧ C.equilibriumComposition

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantExpressionClosed
    (And.intro E.leChateliersPrincipleClosed
      (And.intro E.reactionQuotientClosed E.equilibriumCompositionClosed))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse