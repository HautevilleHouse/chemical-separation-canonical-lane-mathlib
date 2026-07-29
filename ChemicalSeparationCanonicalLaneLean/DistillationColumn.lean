import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

structure DistillationColumnPackage where
  feedComposition : Type u
  vaporLiquidEquilibrium : Type v
  operatingLines : Prop
  stageEfficiency : Prop
  refluxRatio : Prop
  numberOfStages : Prop
  productSpecifications : Prop

structure DistillationColumnEvidence (D : DistillationColumnPackage) where
  vaporLiquidEquilibriumClosed : D.vaporLiquidEquilibrium
  operatingLinesClosed : D.operatingLines
  stageEfficiencyClosed : D.stageEfficiency
  refluxRatioClosed : D.refluxRatio
  numberOfStagesClosed : D.numberOfStages
  productSpecificationsClosed : D.productSpecifications

def DistillationColumnClosed (D : DistillationColumnPackage) : Prop :=
  D.vaporLiquidEquilibrium ∧ D.operatingLines ∧ D.stageEfficiency ∧
  D.refluxRatio ∧ D.numberOfStages ∧ D.productSpecifications

theorem distillation_column_closed_from_evidence (D : DistillationColumnPackage) (E : DistillationColumnEvidence D) :
    DistillationColumnClosed D := by
  exact And.intro E.vaporLiquidEquilibriumClosed
    (And.intro E.operatingLinesClosed
      (And.intro E.stageEfficiencyClosed
        (And.intro E.refluxRatioClosed
          (And.intro E.numberOfStagesClosed E.productSpecificationsClosed))))

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse
