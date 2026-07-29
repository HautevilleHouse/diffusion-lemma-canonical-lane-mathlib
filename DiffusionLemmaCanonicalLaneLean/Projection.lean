import DiffusionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def diffusionProjection : Projection DiffusionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem diffusion_projection_idempotent (x : DiffusionEndgameState) :
    diffusionProjection.toFun (diffusionProjection.toFun x) = diffusionProjection.toFun x := by
  exact diffusionProjection.idempotent x

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse