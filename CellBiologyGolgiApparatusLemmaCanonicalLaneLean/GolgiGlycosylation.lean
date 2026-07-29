import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiGlycosylationPackage where
  glycosyltransferaseEnzymes : Type u
  nucleotideSugarTransporters : Type v
  glycosylationReactions : Prop
  mannoseTrimming : Prop
  complexGlycanSynthesis : Prop
  glycanMaturation : Prop

def GolgiGlycosylationClosed (G : GolgiGlycosylationPackage) : Prop :=
  G.glycosylationReactions ∧ G.mannoseTrimming ∧
  G.complexGlycanSynthesis ∧ G.glycanMaturation

theorem golgi_glycosylation_closed (G : GolgiGlycosylationPackage) :
    GolgiGlycosylationClosed G := by
  exact And.intro G.glycosylationReactions
    (And.intro G.mannoseTrimming
      (And.intro G.complexGlycanSynthesis G.glycanMaturation))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse