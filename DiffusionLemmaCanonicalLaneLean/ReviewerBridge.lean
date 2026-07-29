import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.Formalization
import HautevilleHouse.DiffusionLemmaCanonicalLaneLean.SourceDependencies

namespace HautevilleHouse
namespace DiffusionLemmaCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
  deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true },
   { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "def456", present := true }]

end DiffusionLemmaCanonicalLaneLean
end HautevilleHouse