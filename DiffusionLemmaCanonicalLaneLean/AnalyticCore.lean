import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.SpectralRepresentation

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure AnalyticCorePackage {D : DiffusingObject}
    {R : ResolventEstimatePackage D}
    {S : SpectralRepresentationPackage D R} where
  contractionSemigroup : ℝ → (space → ℝ) → (space → ℝ)
  strongContinuity : Prop
  generatorIsOperator : Prop
  domainCharacterization : Prop

structure AnalyticCoreEvidence {D : DiffusingObject}
    {R : ResolventEstimatePackage D}
    {S : SpectralRepresentationPackage D R}
    (C : AnalyticCorePackage D R S) where
  strongContinuityClosed : C.strongContinuity
  generatorIsOperatorClosed : C.generatorIsOperator
  domainCharacterizationClosed : C.domainCharacterization

def AnalyticCoreClosed {D : DiffusingObject}
    {R : ResolventEstimatePackage D}
    {S : SpectralRepresentationPackage D R}
    (C : AnalyticCorePackage D R S) : Prop :=
  C.strongContinuity ∧ C.generatorIsOperator ∧ C.domainCharacterization

theorem analytic_core_closed_from_evidence
    {D : DiffusingObject} {R : ResolventEstimatePackage D}
    {S : SpectralRepresentationPackage D R}
    (C : AnalyticCorePackage D R S)
    (E : AnalyticCoreEvidence C) :
    AnalyticCoreClosed C := by
  exact And.intro E.strongContinuityClosed
    (And.intro E.generatorIsOperatorClosed
      E.domainCharacterizationClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse