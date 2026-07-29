import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure DiffusionAdmittedObject where
  mixingTime : ℝ
  spectralGapValue : ℝ
  equilibriumReached : Prop

structure DiffusionEndgameState where
  object : DiffusionAdmittedObject
  bridgeClosed : object.equilibriumReached

def DiffusionWitnessClosed (O : DiffusionAdmittedObject) : Prop :=
  O.equilibriumReached

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed (A.object : DiffusionAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse