import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure BoundaryHarnackPackage where
  domain : Type u
  boundary : domain → Prop
  operator : (domain → ℝ) → (domain → ℝ)
  harnackInequality : Prop
  boundaryDecay : Prop
  comparisonConstant : ℝ

structure BoundaryHarnackEvidence (B : BoundaryHarnackPackage) where
  harnackInequalityClosed : B.harnackInequality
  boundaryDecayClosed : B.boundaryDecay

def BoundaryHarnackClosed (B : BoundaryHarnackPackage) : Prop :=
  B.harnackInequality ∧ B.boundaryDecay

theorem boundary_harnack_closed_from_evidence (B : BoundaryHarnackPackage)
    (E : BoundaryHarnackEvidence B) : BoundaryHarnackClosed B :=
  And.intro E.harnackInequalityClosed E.boundaryDecayClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse