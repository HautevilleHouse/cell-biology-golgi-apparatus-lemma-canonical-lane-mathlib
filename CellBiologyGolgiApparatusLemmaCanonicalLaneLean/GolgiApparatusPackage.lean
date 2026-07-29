import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiApparatusPackage where
  cisGolgi : Prop
  medialGolgi : Prop
  transGolgi : Prop
  vesicleTrafficking : Prop
  glycosylation : Prop

def GolgiApparatusClosed (P : GolgiApparatusPackage) : Prop :=
  P.cisGolgi ∧ P.medialGolgi ∧ P.transGolgi ∧ P.vesicleTrafficking ∧ P.glycosylation

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse