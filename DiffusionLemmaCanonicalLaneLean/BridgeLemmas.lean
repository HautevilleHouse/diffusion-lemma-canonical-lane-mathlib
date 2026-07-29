import DiffusionLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse