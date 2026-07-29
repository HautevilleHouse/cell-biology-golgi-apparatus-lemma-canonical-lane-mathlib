import CellBiologyGolgiApparatusLemmaCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GolgiAdmittedObject where
  space : GolgiSpace
  vesicleTransportCorrect : Prop
  cisternalMaturationCorrect : Prop
  ribbonModelConsistent : Prop
  conclusion : vesicleTransportCorrect ∧ cisternalMaturationCorrect ∧ ribbonModelConsistent

def GolgiWitnessClosed (O : GolgiAdmittedObject) : Prop :=
  O.vesicleTransportCorrect ∧ O.cisternalMaturationCorrect ∧ O.ribbonModelConsistent

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse
