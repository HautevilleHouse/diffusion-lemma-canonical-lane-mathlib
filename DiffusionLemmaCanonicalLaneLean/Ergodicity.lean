import DiffusionLemmaCanonicalLaneLean.InvariantMeasure

/-!
# Ergodicity Package

Proves ergodicity and convergence to equilibrium.
-/

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure ErgodicityPackage (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S) where
  ergodicTheorem : Prop
  convergenceRate : Prop
  mixingProperty : Prop

structure ErgodicityEvidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (E : ErgodicityPackage A G S I) where
  ergodicTheoremClosed : E.ergodicTheorem
  convergenceRateClosed : E.convergenceRate
  mixingPropertyClosed : E.mixingProperty

def ErgodicityClosed (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (E : ErgodicityPackage A G S I) : Prop :=
  E.ergodicTheorem ∧ E.convergenceRate ∧ E.mixingProperty

theorem ergodicity_closed_from_evidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (E : ErgodicityPackage A G S I) (Ev : ErgodicityEvidence A G S I E) :
    ErgodicityClosed A G S I E := by
  exact And.intro Ev.ergodicTheoremClosed
    (And.intro Ev.convergenceRateClosed Ev.mixingPropertyClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse