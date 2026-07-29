import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure SpectralGapPackage where
  operator : Type u
  spectrum : ℝ → Prop
  gap : ℝ
  positivity : Prop
  eigenfunctionExistence : Prop

structure SpectralGapEvidence (S : SpectralGapPackage) where
  positivityClosed : S.positivity
  eigenfunctionExistenceClosed : S.eigenfunctionExistence

def SpectralGapClosed (S : SpectralGapPackage) : Prop :=
  S.positivity ∧ S.eigenfunctionExistence

theorem spectral_gap_closed_from_evidence (S : SpectralGapPackage)
    (E : SpectralGapEvidence S) : SpectralGapClosed S :=
  And.intro E.positivityClosed E.eigenfunctionExistenceClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse