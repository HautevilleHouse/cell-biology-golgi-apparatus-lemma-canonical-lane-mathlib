import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGolgiApparatusLemmaCanonicalLaneLean.GolgiApparatusLemma

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure VesicularTransportPackage (O : GolgiAdmittedObject) where
  copiVesicles : Prop
  clathrinVesicles : Prop
  retrogradeTransport : Prop
  transportEvidence : O.vesicularTransport

structure VesicularTransportEvidence (O : GolgiAdmittedObject) (V : VesicularTransportPackage O) where
  copiVesiclesClosed : V.copiVesicles
  clathrinVesiclesClosed : V.clathrinVesicles
  retrogradeTransportClosed : V.retrogradeTransport

def VesicularTransportClosed (O : GolgiAdmittedObject) (V : VesicularTransportPackage O) : Prop :=
  V.copiVesicles \land V.clathrinVesicles \land V.retrogradeTransport \land O.vesicularTransport

theorem vesicular_transport_closed_from_evidence (O : GolgiAdmittedObject) (V : VesicularTransportPackage O) (E : VesicularTransportEvidence O V) :
    VesicularTransportClosed O V := by
  exact And.intro E.copiVesiclesClosed (And.intro E.clathrinVesiclesClosed (And.intro E.retrogradeTransportClosed V.transportEvidence))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse