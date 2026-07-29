import ChemicalSeparationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalSeparationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse