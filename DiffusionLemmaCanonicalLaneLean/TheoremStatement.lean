import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "diffusion-lemma-canonical-lane",
  theoremName := "diffusion-lemma-canonical-lane",
  theoremObject := "Diffusion Lemma",
  classicalBoundary := "classical boundary carried by formalizationCertificate.theoremBoundaryOpen",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse