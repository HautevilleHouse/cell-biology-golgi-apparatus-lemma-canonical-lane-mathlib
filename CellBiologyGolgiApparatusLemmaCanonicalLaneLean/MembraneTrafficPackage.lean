import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure MembraneTrafficPackage where
  vesicleFormation : Prop
  vesicleFusion : Prop
  cargoSorting : Prop
  retrogradeFlow : Prop
  golgiStackIntegrity : Prop

structure MembraneTrafficEvidence (M : MembraneTrafficPackage) where
  vesicleFormationClosed : M.vesicleFormation
  vesicleFusionClosed : M.vesicleFusion
  cargoSortingClosed : M.cargoSorting
  retrogradeFlowClosed : M.retrogradeFlow
  golgiStackIntegrityClosed : M.golgiStackIntegrity

def MembraneTrafficClosed (M : MembraneTrafficPackage) : Prop :=
  M.vesicleFormation ∧ M.vesicleFusion ∧ M.cargoSorting ∧ M.retrogradeFlow ∧ M.golgiStackIntegrity

theorem membrane_traffic_closed_from_evidence
    (M : MembraneTrafficPackage) (E : MembraneTrafficEvidence M) :
    MembraneTrafficClosed M := by
  exact And.intro E.vesicleFormationClosed
    (And.intro E.vesicleFusionClosed
      (And.intro E.cargoSortingClosed
        (And.intro E.retrogradeFlowClosed E.golgiStackIntegrityClosed)))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse