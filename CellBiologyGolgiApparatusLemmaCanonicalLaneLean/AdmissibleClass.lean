import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiAdmittedObject where
  golgiType : String
  functionalState : Prop
  trafficEvidence : GolgiMembraneTrafficEvidence (GolgiMembraneTrafficPackage.mk (by trivial) (by trivial) (by trivial) (by trivial) (by trivial))
  glycosylationEvidence : GolgiGlycosylationEvidence (GolgiGlycosylationPackage.mk (by trivial) (by trivial) (by trivial) (by trivial) (by trivial))
  transportEvidence : GolgiTransportRegulationEvidence (GolgiTransportRegulationPackage.mk (by trivial) (by trivial) (by trivial) (by trivial) (by trivial))
  structureEvidence : GolgiStructureDynamicsEvidence (GolgiStructureDynamicsPackage.mk (by trivial) (by trivial) (by trivial) (by trivial) (by trivial))
  conclusion : functionalState

structure AdmissibleClass where
  object : GolgiAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.functionalState) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse