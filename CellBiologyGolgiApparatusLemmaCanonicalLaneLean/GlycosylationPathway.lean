import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGolgiApparatusLemmaCanonicalLaneLean.GolgiStructures

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GlycosylationStep where
  enzyme : String
  substrate : String
  product : String
  golgiLocalization : String

structure GlycosylationPathway where
  steps : List GlycosylationStep
  sequentialProcessing : Prop
  branchSpecificity : Prop

def GlycosylationPathwayClosed (P : GlycosylationPathway) : Prop :=
  P.sequentialProcessing ∧ P.branchSpecificity

theorem glycosylation_pathway_closed (P : GlycosylationPathway) (h : GlycosylationPathwayClosed P) : GlycosylationPathwayClosed P :=
  h

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse