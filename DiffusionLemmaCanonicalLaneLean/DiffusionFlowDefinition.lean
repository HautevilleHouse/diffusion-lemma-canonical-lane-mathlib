import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure DiffusionFlowPackage where
  type : Type u
  time : Type v
  position : type → time → Type w
  generator : (type → time → Type w) → (type → time → Type w)
  smoothness : Prop
  parabolicCondition : Prop
  uniqueSolution : Prop

structure DiffusionFlowEvidence (D : DiffusionFlowPackage) where
  smoothnessClosed : D.smoothness
  parabolicConditionClosed : D.parabolicCondition
  uniqueSolutionClosed : D.uniqueSolution

def DiffusionFlowClosed (D : DiffusionFlowPackage) : Prop :=
  D.smoothness ∧ D.parabolicCondition ∧ D.uniqueSolution

theorem diffusion_flow_closed_from_evidence (D : DiffusionFlowPackage)
    (E : DiffusionFlowEvidence D) : DiffusionFlowClosed D :=
  And.intro E.smoothnessClosed (And.intro E.parabolicConditionClosed E.uniqueSolutionClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse