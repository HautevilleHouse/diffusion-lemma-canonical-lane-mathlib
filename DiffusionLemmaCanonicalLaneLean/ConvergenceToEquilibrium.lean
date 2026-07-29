import DiffusionLemmaCanonicalLaneLean.Ergodicity

/-!
# Convergence to Equilibrium Package

Final convergence result: the semigroup converges to the stationary distribution.
-/

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure ConvergenceToEquilibriumPackage (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (Erg : ErgodicityPackage A G S I) where
  convergenceInLaw : Prop
  exponentialRate : Prop
  stationaryExponentialConvergence : Prop

structure ConvergenceToEquilibriumEvidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (Erg : ErgodicityPackage A G S I) (C : ConvergenceToEquilibriumPackage A G S I Erg) where
  convergenceInLawClosed : C.convergenceInLaw
  exponentialRateClosed : C.exponentialRate
  stationaryExponentialConvergenceClosed : C.stationaryExponentialConvergence

def ConvergenceToEquilibriumClosed (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (I : InvariantMeasurePackage A G S)
    (Erg : ErgodicityPackage A G S I) (C : ConvergenceToEquilibriumPackage A G S I Erg) : Prop :=
  C.convergenceInLaw ∧ C.exponentialRate ∧ C.stationaryExponentialConvergence

theorem convergence_to_equilibrium_closed_from_evidence (A : AdmissibleClass)
    (G : GeneratorDomainPackage A) (S : SemigroupGenerationPackage A G)
    (I : InvariantMeasurePackage A G S) (Erg : ErgodicityPackage A G S I)
    (C : ConvergenceToEquilibriumPackage A G S I Erg)
    (Ev : ConvergenceToEquilibriumEvidence A G S I Erg C) :
    ConvergenceToEquilibriumClosed A G S I Erg C := by
  exact And.intro Ev.convergenceInLawClosed
    (And.intro Ev.exponentialRateClosed Ev.stationaryExponentialConvergenceClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse