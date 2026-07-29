import DiffusionLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiffusionAdmittedObject where
  space : DiffusionSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure DiffusionEndgameState where
  object : DiffusionAdmittedObject

def DiffusionWitnessClosed (O : DiffusionAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse