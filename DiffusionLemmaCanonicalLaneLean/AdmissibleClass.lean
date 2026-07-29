import DiffusionLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiffusionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse