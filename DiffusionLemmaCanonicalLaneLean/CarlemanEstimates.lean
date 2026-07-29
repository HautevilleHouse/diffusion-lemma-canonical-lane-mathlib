import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure CarlemanPackage where
  operator : Type u
  weightFunction : Type v
  estimateInequality : Prop
  spectralParameter : ℝ
  resolventBound : Prop

structure CarlemanEvidence (C : CarlemanPackage) where
  estimateInequalityClosed : C.estimateInequality
  resolventBoundClosed : C.resolventBound

def CarlemanClosed (C : CarlemanPackage) : Prop :=
  C.estimateInequality ∧ C.resolventBound

theorem carleman_closed_from_evidence (C : CarlemanPackage)
    (E : CarlemanEvidence C) : CarlemanClosed C :=
  And.intro E.estimateInequalityClosed E.resolventBoundClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse