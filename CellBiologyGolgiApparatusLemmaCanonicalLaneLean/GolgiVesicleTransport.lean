import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiVesicleTransportPackage where
  cisGolgiNetwork : Type u
  medialCisternae : Type v
  transGolgiNetwork : Type w
  vesiclePopulation : Type x
  copiiCoatedVesicles : Prop
  retrogradeTransport : Prop
  anterogradeTransport : Prop
  vesicleBudding : Prop
  vesicleFusion : Prop
  transportEfficiency : Prop

structure GolgiVesicleTransportEvidence (P : GolgiVesicleTransportPackage) where
  copiiCoatedVesiclesClosed : P.copiiCoatedVesicles
  retrogradeTransportClosed : P.retrogradeTransport
  anterogradeTransportClosed : P.anterogradeTransport
  vesicleBuddingClosed : P.vesicleBudding
  vesicleFusionClosed : P.vesicleFusion
  transportEfficiencyClosed : P.transportEfficiency

def GolgiVesicleTransportClosed (P : GolgiVesicleTransportPackage) : Prop :=
  P.copiiCoatedVesicles ∧ P.retrogradeTransport ∧
  P.anterogradeTransport ∧ P.vesicleBudding ∧
  P.vesicleFusion ∧ P.transportEfficiency

theorem golgi_vesicle_transport_closed_from_evidence
    (P : GolgiVesicleTransportPackage) (E : GolgiVesicleTransportEvidence P) :
    GolgiVesicleTransportClosed P := by
  exact And.intro E.copiiCoatedVesiclesClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.anterogradeTransportClosed
        (And.intro E.vesicleBuddingClosed
          (And.intro E.vesicleFusionClosed E.transportEfficiencyClosed))))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse