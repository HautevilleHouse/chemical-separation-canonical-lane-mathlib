import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure AdmissibleClass where
  object : ChemicalSeparationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse