import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGolgiApparatusLemmaCanonicalLaneLean.GolgiApparatusLemma

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure CisternalMaturationPackage (O : GolgiAdmittedObject) where
  progressionModel : Prop
  enzymeRetrieval : Prop
  cargoTransport : Prop
  maturationEvidence : O.cisternalMaturation

structure CisternalMaturationEvidence (O : GolgiAdmittedObject) (C : CisternalMaturationPackage O) where
  progressionModelClosed : C.progressionModel
  enzymeRetrievalClosed : C.enzymeRetrieval
  cargoTransportClosed : C.cargoTransport

def CisternalMaturationClosed (O : GolgiAdmittedObject) (C : CisternalMaturationPackage O) : Prop :=
  C.progressionModel \land C.enzymeRetrieval \land C.cargoTransport \land O.cisternalMaturation

theorem cisternal_maturation_closed_from_evidence (O : GolgiAdmittedObject) (C : CisternalMaturationPackage O) (E : CisternalMaturationEvidence O C) :
    CisternalMaturationClosed O C := by
  exact And.intro E.progressionModelClosed (And.intro E.enzymeRetrievalClosed (And.intro E.cargoTransportClosed C.maturationEvidence))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse