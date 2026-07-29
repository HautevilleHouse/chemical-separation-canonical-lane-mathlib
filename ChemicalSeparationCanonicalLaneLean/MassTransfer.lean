import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure MassTransferPackage where
  concentrationProfile : Type u
  fluxEquation : Type v
  drivingForce : Prop
  diffusionCoefficient : Prop
  filmThickness : Prop
  massTransferCoefficient : Prop
  interfacialArea : Prop
  overallRate : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  drivingForceClosed : M.drivingForce
  diffusionCoefficientClosed : M.diffusionCoefficient
  filmThicknessClosed : M.filmThickness
  massTransferCoefficientClosed : M.massTransferCoefficient
  interfacialAreaClosed : M.interfacialArea
  overallRateClosed : M.overallRate

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.drivingForce ∧ M.diffusionCoefficient ∧ M.filmThickness ∧
  M.massTransferCoefficient ∧ M.interfacialArea ∧ M.overallRate

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.drivingForceClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.filmThicknessClosed
        (And.intro E.massTransferCoefficientClosed
          (And.intro E.interfacialAreaClosed E.overallRateClosed))))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse
