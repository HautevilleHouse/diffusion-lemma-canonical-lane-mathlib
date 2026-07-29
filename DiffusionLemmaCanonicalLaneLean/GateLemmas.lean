import DiffusionLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse