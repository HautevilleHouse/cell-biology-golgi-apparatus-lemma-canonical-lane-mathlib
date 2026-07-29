import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGolgiApparatusLemmaCanonicalLaneLean.GolgiApparatusLemma

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure EnzymeLocalizationPackage (O : GolgiAdmittedObject) where
  glycosylationEnzymes : Prop
  sulfationEnzymes : Prop
  localizationSignals : Prop
  localizationEvidence : O.golgiEnzymeLocalization

structure EnzymeLocalizationEvidence (O : GolgiAdmittedObject) (E : EnzymeLocalizationPackage O) where
  glycosylationEnzymesClosed : E.glycosylationEnzymes
  sulfationEnzymesClosed : E.sulfationEnzymes
  localizationSignalsClosed : E.localizationSignals

def EnzymeLocalizationClosed (O : GolgiAdmittedObject) (E : EnzymeLocalizationPackage O) : Prop :=
  E.glycosylationEnzymes \land E.sulfationEnzymes \land E.localizationSignals \land O.golgiEnzymeLocalization

theorem enzyme_localization_closed_from_evidence (O : GolgiAdmittedObject) (E : EnzymeLocalizationPackage O) (Ev : EnzymeLocalizationEvidence O E) :
    EnzymeLocalizationClosed O E := by
  exact And.intro Ev.glycosylationEnzymesClosed (And.intro Ev.sulfationEnzymesClosed (And.intro Ev.localizationSignalsClosed E.localizationEvidence))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse