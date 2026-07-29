import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGolgiApparatusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GlycosylationEnzymeLocalizationPackage where
  enzymeSet : Type u
  compartmentSpecificity : Prop
  sequentialModification : Prop
  productFormation : Prop

structure GlycosylationEnzymeLocalizationEvidence (G : GlycosylationEnzymeLocalizationPackage) where
  compartmentSpecificityClosed : G.compartmentSpecificity
  sequentialModificationClosed : G.sequentialModification
  productFormationClosed : G.productFormation

def GlycosylationEnzymeLocalizationClosed (G : GlycosylationEnzymeLocalizationPackage) : Prop :=
  G.compartmentSpecificity ∧ G.sequentialModification ∧ G.productFormation

theorem glycosylation_enzyme_localization_closed_from_evidence (G : GlycosylationEnzymeLocalizationPackage) (E : GlycosylationEnzymeLocalizationEvidence G) : GlycosylationEnzymeLocalizationClosed G := by
  exact And.intro E.compartmentSpecificityClosed (And.intro E.sequentialModificationClosed E.productFormationClosed)

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse