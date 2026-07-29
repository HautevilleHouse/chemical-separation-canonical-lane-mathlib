import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure AdsorptionPackage where
  surfaceArea : Type u
  bindingSites : Type v
  isothermModel : Prop
  langmuirAssumptions : Prop
  adsorptionKinetics : Prop
  coverageExpression : Prop
  equilibriumBinding : Prop

structure AdsorptionEvidence (A : AdsorptionPackage) where
  isothermModelClosed : A.isothermModel
  langmuirAssumptionsClosed : A.langmuirAssumptions
  adsorptionKineticsClosed : A.adsorptionKinetics
  coverageExpressionClosed : A.coverageExpression
  equilibriumBindingClosed : A.equilibriumBinding

def AdsorptionClosed (A : AdsorptionPackage) : Prop :=
  A.isothermModel ∧ A.langmuirAssumptions ∧ A.adsorptionKinetics ∧
  A.coverageExpression ∧ A.equilibriumBinding

theorem adsorption_closed_from_evidence (A : AdsorptionPackage) (E : AdsorptionEvidence A) :
    AdsorptionClosed A := by
  exact And.intro E.isothermModelClosed
    (And.intro E.langmuirAssumptionsClosed
      (And.intro E.adsorptionKineticsClosed
        (And.intro E.coverageExpressionClosed E.equilibriumBindingClosed)))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse
