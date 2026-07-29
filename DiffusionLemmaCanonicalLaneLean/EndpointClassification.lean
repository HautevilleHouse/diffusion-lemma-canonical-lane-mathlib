import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure EndpointClassificationPackage where
  targetFunction : Type u
  domain : Type v
  boundaryCondition : Prop
  uniqueSolution : Prop
  diffusionLemmaStatement : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  uniqueSolutionClosed : E.uniqueSolution
  diffusionLemmaStatementClosed : E.diffusionLemmaStatement

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.uniqueSolution ∧ E.diffusionLemmaStatement

theorem endpoint_classification_closed_from_evidence (E : EndpointClassificationPackage)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E :=
  And.intro Ev.uniqueSolutionClosed Ev.diffusionLemmaStatementClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse