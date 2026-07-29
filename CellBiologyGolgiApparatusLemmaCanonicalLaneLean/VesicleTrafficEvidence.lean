import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGolgiApparatusLemmaCanonicalLaneLean.GolgiStructures

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure VesicleTrafficEvidence where
  copIIBudding : Prop
  copIRetrieval : Prop
  clathrinMediated : Prop
  trafficDirection : String
  evidence : copIIBudding ∨ copIRetrieval ∨ clathrinMediated

def VesicleTrafficClosed (V : VesicleTrafficEvidence) : Prop :=
  V.copIIBudding ∨ V.copIRetrieval ∨ V.clathrinMediated

theorem vesicle_traffic_closed (V : VesicleTrafficEvidence) : VesicleTrafficClosed V :=
  V.evidence

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse