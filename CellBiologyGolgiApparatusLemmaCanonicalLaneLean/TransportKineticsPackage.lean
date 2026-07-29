import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusLemmaCanonicalLaneLean

structure TransportKineticsPackage where
  anterogradeRate : ℝ
  retrogradeRate : ℝ
  diffusionCoefficient : ℝ
  bindingAffinity : ℝ
  steadyStateFlux : Prop

structure TransportKineticsEvidence (T : TransportKineticsPackage) where
  steadyStateFluxClosed : T.steadyStateFlux
  positiveRates : T.anterogradeRate > 0 ∧ T.retrogradeRate > 0 ∧ T.diffusionCoefficient > 0

def TransportKineticsClosed (T : TransportKineticsPackage) : Prop :=
  T.steadyStateFlux ∧ T.anterogradeRate > 0 ∧ T.retrogradeRate > 0 ∧ T.diffusionCoefficient > 0

theorem transport_kinetics_closed_from_evidence
    (T : TransportKineticsPackage) (E : TransportKineticsEvidence T) :
    TransportKineticsClosed T := by
  exact And.intro E.steadyStateFluxClosed E.positiveRates

end CellBiologyGolgiApparatusLemmaCanonicalLaneLean
end HautevilleHouse