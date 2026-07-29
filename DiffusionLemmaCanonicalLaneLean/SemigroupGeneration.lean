import DiffusionLemmaCanonicalLaneLean.GeneratorDomain

/-!
# Semigroup Generation Package

Relates the generator to a strongly continuous contraction semigroup.
-/

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure SemigroupGenerationPackage (A : AdmissibleClass) (G : GeneratorDomainPackage A) where
  semigroup : ℝ → A.object.stateSpace → A.object.stateSpace
  contractionProperty : Prop
  strongContinuity : Prop
  generatorAgreement : Prop

structure SemigroupGenerationEvidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) where
  contractionPropertyClosed : S.contractionProperty
  strongContinuityClosed : S.strongContinuity
  generatorAgreementClosed : S.generatorAgreement

def SemigroupGenerationClosed (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) : Prop :=
  S.contractionProperty ∧ S.strongContinuity ∧ S.generatorAgreement

theorem semigroup_generation_closed_from_evidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (S : SemigroupGenerationPackage A G) (E : SemigroupGenerationEvidence A G S) :
    SemigroupGenerationClosed A G S := by
  exact And.intro E.contractionPropertyClosed
    (And.intro E.strongContinuityClosed E.generatorAgreementClosed)

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse