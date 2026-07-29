import DiffusionLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Generator Domain Package

Defines the generator of the diffusion process and its spectral properties.
-/

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure GeneratorDomainPackage (A : AdmissibleClass) where
  generator : A.object.stateSpace → A.object.stateSpace
  domainDense : Prop
  dissipative : Prop
  closable : Prop
  closedExtension : Prop

structure GeneratorDomainEvidence (A : AdmissibleClass) (G : GeneratorDomainPackage A) where
  domainDenseClosed : G.domainDense
  dissipativeClosed : G.dissipative
  closableClosed : G.closable
  closedExtensionClosed : G.closedExtension

def GeneratorDomainClosed (A : AdmissibleClass) (G : GeneratorDomainPackage A) : Prop :=
  G.domainDense ∧ G.dissipative ∧ G.closable ∧ G.closedExtension

theorem generator_domain_closed_from_evidence (A : AdmissibleClass) (G : GeneratorDomainPackage A)
    (E : GeneratorDomainEvidence A G) : GeneratorDomainClosed A G := by
  exact And.intro E.domainDenseClosed
    (And.intro E.dissipativeClosed
      (And.intro E.closableClosed E.closedExtensionClosed))

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse