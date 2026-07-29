import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGolgiApparatusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiStackPolarityPackage where
  cisGolgiNetwork : Prop
  medialGolgi : Prop
  transGolgiNetwork : Prop
  cisToTransProgression : Prop

structure GolgiStackPolarityEvidence (S : GolgiStackPolarityPackage) where
  cisGolgiNetworkClosed : S.cisGolgiNetwork
  medialGolgiClosed : S.medialGolgi
  transGolgiNetworkClosed : S.transGolgiNetwork
  cisToTransProgressionClosed : S.cisToTransProgression

def GolgiStackPolarityClosed (S : GolgiStackPolarityPackage) : Prop :=
  S.cisGolgiNetwork ∧ S.medialGolgi ∧ S.transGolgiNetwork ∧ S.cisToTransProgression

theorem golgi_stack_polarity_closed_from_evidence (S : GolgiStackPolarityPackage) (E : GolgiStackPolarityEvidence S) : GolgiStackPolarityClosed S := by
  exact And.intro E.cisGolgiNetworkClosed (And.intro E.medialGolgiClosed (And.intro E.transGolgiNetworkClosed E.cisToTransProgressionClosed))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse