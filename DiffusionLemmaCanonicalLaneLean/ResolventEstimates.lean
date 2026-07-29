import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure ResolventEstimatePackage {D : DiffusingObject} where
  resolventSet : Set ℂ
  resolventBound : ℂ → ℝ
  sectorContains : Prop
  resolventEstimateHolds : Prop

structure ResolventEstimateEvidence {D : DiffusingObject}
    (R : ResolventEstimatePackage D) where
  sectorContainsClosed : R.sectorContains
  resolventEstimateHoldsClosed : R.resolventEstimateHolds

def ResolventEstimateClosed {D : DiffusingObject}
    (R : ResolventEstimatePackage D) : Prop :=
  R.sectorContains ∧ R.resolventEstimateHolds

theorem resolvent_estimate_closed_from_evidence
    {D : DiffusingObject} (R : ResolventEstimatePackage D)
    (E : ResolventEstimateEvidence R) : ResolventEstimateClosed R := by
  exact And.intro E.sectorContainsClosed E.resolventEstimateHoldsClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse