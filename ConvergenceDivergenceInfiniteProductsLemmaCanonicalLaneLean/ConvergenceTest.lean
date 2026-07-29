import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ConvergenceTestPackage where
  seriesTerms : Type u
  partialSums : Type v
  limitComparison : Prop
  monotoneCondition : Prop
  boundComparison : Prop

structure ConvergenceTestEvidence (C : ConvergenceTestPackage) where
  limitComparisonClosed : C.limitComparison
  monotoneConditionClosed : C.monotoneCondition
  boundComparisonClosed : C.boundComparison

def ConvergenceTestClosed (C : ConvergenceTestPackage) : Prop :=
  C.limitComparison ∧ C.monotoneCondition ∧ C.boundComparison

theorem convergence_test_closed_from_evidence (C : ConvergenceTestPackage) (E : ConvergenceTestEvidence C) :
    ConvergenceTestClosed C := by
  exact And.intro E.limitComparisonClosed (And.intro E.monotoneConditionClosed E.boundComparisonClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse