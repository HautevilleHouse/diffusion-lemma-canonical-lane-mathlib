import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.DiffusionGateLemmas

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

def ConstrainedDiffusionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffusion_endgame (A : AdmissibleClass) :
    ConstrainedDiffusionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse