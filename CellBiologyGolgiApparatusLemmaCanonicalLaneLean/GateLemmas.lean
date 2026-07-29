import ..CellBiologyGolgiApparatusLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse