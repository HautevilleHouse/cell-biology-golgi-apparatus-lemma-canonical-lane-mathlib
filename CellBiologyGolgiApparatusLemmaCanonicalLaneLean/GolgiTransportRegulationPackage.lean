import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiTransportRegulationPackage where
  copiVesicleBudding : Prop
  copiiVesicleBudding : Prop
  arfGtpaseCycle : Prop
  coatAssembly : Prop
  tetheringFusion : Prop

structure GolgiTransportRegulationEvidence (P : GolgiTransportRegulationPackage) where
  copiVesicleBuddingClosed : P.copiVesicleBudding
  copiiVesicleBuddingClosed : P.copiiVesicleBudding
  arfGtpaseCycleClosed : P.arfGtpaseCycle
  coatAssemblyClosed : P.coatAssembly
  tetheringFusionClosed : P.tetheringFusion

def GolgiTransportRegulationClosed (P : GolgiTransportRegulationPackage) : Prop :=
  P.copiVesicleBudding ∧ P.copiiVesicleBudding ∧ P.arfGtpaseCycle ∧ P.coatAssembly ∧ P.tetheringFusion

theorem golgi_transport_regulation_closed_from_evidence (P : GolgiTransportRegulationPackage) (E : GolgiTransportRegulationEvidence P) : GolgiTransportRegulationClosed P := by
  exact And.intro E.copiVesicleBuddingClosed (And.intro E.copiiVesicleBuddingClosed (And.intro E.arfGtpaseCycleClosed (And.intro E.coatAssemblyClosed E.tetheringFusionClosed)))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse