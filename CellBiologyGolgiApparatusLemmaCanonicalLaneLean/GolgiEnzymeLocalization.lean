import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiEnzymeLocalization where
  mannosidaseII : Prop
  nacetylglucosaminyltransferase : Prop
  galactosyltransferase : Prop
  sialyltransferase : Prop
  localizationClosed : mannosidaseII ∧ nacetylglucosaminyltransferase ∧ galactosyltransferase ∧ sialyltransferase

theorem enzyme_localization_closed (L : GolgiEnzymeLocalization) :
    L.localizationClosed := by
  exact L.localizationClosed

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse