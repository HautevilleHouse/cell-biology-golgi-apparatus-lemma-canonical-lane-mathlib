import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGolgiApparatusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure GolgiMaturationPackage where
  cisternalProgression : Prop
  enzymeRetention : Prop
  residentProteins : Prop
  maturationTimeline : Prop

structure GolgiMaturationEvidence (M : GolgiMaturationPackage) where
  cisternalProgressionClosed : M.cisternalProgression
  enzymeRetentionClosed : M.enzymeRetention
  residentProteinsClosed : M.residentProteins
  maturationTimelineClosed : M.maturationTimeline

def GolgiMaturationClosed (M : GolgiMaturationPackage) : Prop :=
  M.cisternalProgression ∧ M.enzymeRetention ∧ M.residentProteins ∧ M.maturationTimeline

theorem golgi_maturation_closed_from_evidence (M : GolgiMaturationPackage) (E : GolgiMaturationEvidence M) : GolgiMaturationClosed M := by
  exact And.intro E.cisternalProgressionClosed (And.intro E.enzymeRetentionClosed (And.intro E.residentProteinsClosed E.maturationTimelineClosed))

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse