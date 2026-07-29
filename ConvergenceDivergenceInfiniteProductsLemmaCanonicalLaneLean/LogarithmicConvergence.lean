import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure LogarithmicConvergence where
  termLogSum : Type u
  absoluteConvergenceOfLog : Prop
  comparisonWithSeries : Prop
  convergenceRate : Prop
  errorBound : Prop

structure LogarithmicConvergenceEvidence (L : LogarithmicConvergence) where
  absoluteConvergenceOfLogClosed : L.absoluteConvergenceOfLog
  comparisonWithSeriesClosed : L.comparisonWithSeries
  convergenceRateClosed : L.convergenceRate
  errorBoundClosed : L.errorBound

def LogarithmicConvergenceClosed (L : LogarithmicConvergence) : Prop :=
  L.absoluteConvergenceOfLog ∧ L.comparisonWithSeries ∧ L.convergenceRate ∧ L.errorBound

theorem logarithmic_convergence_closed_from_evidence (L : LogarithmicConvergence) (E : LogarithmicConvergenceEvidence L) :
    LogarithmicConvergenceClosed L := by
  exact And.intro E.absoluteConvergenceOfLogClosed (And.intro E.comparisonWithSeriesClosed (And.intro E.convergenceRateClosed E.errorBoundClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse