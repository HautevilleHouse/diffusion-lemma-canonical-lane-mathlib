import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure DiffusionPackage (A : AdmissibleClass) where
  sourceMeasure : Type u
  targetMeasure : Type v
  transitionKernel : Type w
  diffusiveMixing : Prop
  spectralGap : Prop
  equilibriumExistence : A.endpointSatisfied

structure DiffusionEvidence {A : AdmissibleClass} (D : DiffusionPackage A) where
  diffusiveMixingClosed : D.diffusiveMixing
  spectralGapClosed : D.spectralGap
  equilibriumExistenceClosed : D.equilibriumExistence

def DiffusionClosed {A : AdmissibleClass} (D : DiffusionPackage A) : Prop :=
  D.diffusiveMixing ∧ D.spectralGap ∧ D.equilibriumExistence

theorem diffusion_closed_from_evidence {A : AdmissibleClass}
    (D : DiffusionPackage A) (E : DiffusionEvidence D) :
    DiffusionClosed D := by
  exact And.intro E.diffusiveMixingClosed
    (And.intro E.spectralGapClosed E.equilibriumExistenceClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse