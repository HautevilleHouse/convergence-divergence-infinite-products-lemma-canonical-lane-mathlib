import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ComparisonTestPackage where
  seriesTerms : Type u
  comparisonSeries : Type v
  inequalityCondition : Prop
  limitComparison : Prop
  convergenceTransfer : Prop

structure ComparisonTestEvidence (C : ComparisonTestPackage) where
  inequalityConditionClosed : C.inequalityCondition
  limitComparisonClosed : C.limitComparison
  convergenceTransferClosed : C.convergenceTransfer

def ComparisonTestClosed (C : ComparisonTestPackage) : Prop :=
  C.inequalityCondition ∧ C.limitComparison ∧ C.convergenceTransfer

theorem comparison_test_closed_from_evidence (C : ComparisonTestPackage) (E : ComparisonTestEvidence C) :
    ComparisonTestClosed C := by
  exact And.intro E.inequalityConditionClosed (And.intro E.limitComparisonClosed E.convergenceTransferClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse