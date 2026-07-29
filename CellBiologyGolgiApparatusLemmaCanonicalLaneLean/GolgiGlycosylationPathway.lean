import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiGlycosylationPathway where
  nglycan : Prop
  oglycan : Prop
  glycolipid : Prop
  proteoglycan : Prop
  pathwayClosed : nglycan ∧ oglycan ∧ glycolipid ∧ proteoglycan

theorem glycosylation_pathway_closed (P : GolgiGlycosylationPathway) :
    P.pathwayClosed := by
  exact P.pathwayClosed

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse