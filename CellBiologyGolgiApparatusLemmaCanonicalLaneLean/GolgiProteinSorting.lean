import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiProteinSortingPackage where
  cargoReceptors : Type u
  sortingSignals : Type v
  coatProteins : Type w
  adaptorProteins : Type x
  signalRecognition : Prop
  cargoLoading : Prop
  vesicleFormation : Prop
  qualityControl : Prop
  retentionMechanisms : Prop

def GolgiProteinSortingClosed (S : GolgiProteinSortingPackage) : Prop :=
  S.signalRecognition ∧ S.cargoLoading ∧
  S.vesicleFormation ∧ S.qualityControl ∧ S.retentionMechanisms

theorem golgi_protein_sorting_closed (S : GolgiProteinSortingPackage) :
    GolgiProteinSortingClosed S := by
  exact And.intro S.signalRecognition
    (And.intro S.cargoLoading
      (And.intro S.vesicleFormation
        (And.intro S.qualityControl S.retentionMechanisms)))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse