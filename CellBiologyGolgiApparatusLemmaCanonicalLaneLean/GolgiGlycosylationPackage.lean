import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiGlycosylationPackage where
  glycanSynthesis : Prop
  glycosyltransferaseLocalization : Prop
  nucleotideSugarTransport : Prop
  glycanRemodeling : Prop
  secretionMaturation : Prop

structure GolgiGlycosylationEvidence (P : GolgiGlycosylationPackage) where
  glycanSynthesisClosed : P.glycanSynthesis
  glycosyltransferaseLocalizationClosed : P.glycosyltransferaseLocalization
  nucleotideSugarTransportClosed : P.nucleotideSugarTransport
  glycanRemodelingClosed : P.glycanRemodeling
  secretionMaturationClosed : P.secretionMaturation

def GolgiGlycosylationClosed (P : GolgiGlycosylationPackage) : Prop :=
  P.glycanSynthesis ∧ P.glycosyltransferaseLocalization ∧ P.nucleotideSugarTransport ∧ P.glycanRemodeling ∧ P.secretionMaturation

theorem golgi_glycosylation_closed_from_evidence (P : GolgiGlycosylationPackage) (E : GolgiGlycosylationEvidence P) : GolgiGlycosylationClosed P := by
  exact And.intro E.glycanSynthesisClosed (And.intro E.glycosyltransferaseLocalizationClosed (And.intro E.nucleotideSugarTransportClosed (And.intro E.glycanRemodelingClosed E.secretionMaturationClosed)))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse