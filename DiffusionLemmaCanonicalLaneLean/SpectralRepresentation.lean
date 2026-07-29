import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.ResolventEstimates

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure SpectralRepresentationPackage {D : DiffusingObject}
    {R : ResolventEstimatePackage D} where
  spectralMeasure : Set ℝ → (space → ℝ) → (space → ℝ)
  spectralTheoremHolds : Prop
  functionalCalculusDefined : Prop

structure SpectralRepresentationEvidence {D : DiffusingObject}
    {R : ResolventEstimatePackage D}
    (S : SpectralRepresentationPackage D R) where
  spectralTheoremHoldsClosed : S.spectralTheoremHolds
  functionalCalculusDefinedClosed : S.functionalCalculusDefined

def SpectralRepresentationClosed {D : DiffusingObject}
    {R : ResolventEstimatePackage D}
    (S : SpectralRepresentationPackage D R) : Prop :=
  S.spectralTheoremHolds ∧ S.functionalCalculusDefined

theorem spectral_representation_closed_from_evidence
    {D : DiffusingObject} {R : ResolventEstimatePackage D}
    (S : SpectralRepresentationPackage D R)
    (E : SpectralRepresentationEvidence S) :
    SpectralRepresentationClosed S := by
  exact And.intro E.spectralTheoremHoldsClosed
    E.functionalCalculusDefinedClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse