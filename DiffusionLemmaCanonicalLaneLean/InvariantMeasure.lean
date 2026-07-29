import DiffusionLemmaCanonicalLaneLean.SemigroupGeneration

/-!
# Invariant Measure Package

Characterizes the stationary distribution as an invariant measure.
-/

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure InvariantMeasurePackage (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) where
  stationaryDistribution : A.object.stateSpace → ℝ
  invariantUnderSemigroup : Prop
  uniquenessUnderErgodicity : Prop

structure InvariantMeasureEvidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S) where
  invariantUnderSemigroupClosed : I.invariantUnderSemigroup
  uniquenessUnderErgodicityClosed : I.uniquenessUnderErgodicity

def InvariantMeasureClosed (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S) : Prop :=
  I.invariantUnderSemigroup ∧ I.uniquenessUnderErgodicity

theorem invariant_measure_closed_from_evidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (E : InvariantMeasureEvidence A G S I) : InvariantMeasureClosed A G S I := by
  exact And.intro E.invariantUnderSemigroupClosed E.uniquenessUnderErgodicityClosed

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse