import ChemicalSeparationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalSeparationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalAdmittedObject where
  space : ChemicalSpace
  reactionSystemDefined : Prop
  equilibriumReached : Prop
  separationAchievable : Prop
  conclusion : separationAchievable

structure ChemicalEndgameState where
  object : ChemicalAdmittedObject

def ChemicalWitnessClosed (O : ChemicalAdmittedObject) : Prop :=
  O.separationAchievable

end ChemicalSeparationCanonicalLaneLean
end HautevilleHouse