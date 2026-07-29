import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiMembrane where
  cisternae : Nat
  polarized : Prop
  lipidComposition : Prop

structure VesicleTransport where
  COPII : Prop
  COPI : Prop
  clathrin : Prop

structure GolgiAdmittedObject where
  membrane : GolgiMembrane
  transport : VesicleTransport
  glycosylationEnzymesDistributed : Prop
  cisternalMaturationModel : Prop
  ribbonModel : Prop
  conclusion : cisternalMaturationModel ∨ ribbonModel

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse