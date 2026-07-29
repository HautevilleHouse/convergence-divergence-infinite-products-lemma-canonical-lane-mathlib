import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure AbelDiniTestPackage where
  seriesTerms : (ℕ → ℝ)
  partialSums : ℕ → ℝ
  monotonicallyDecreasing : Prop
  convergenceCondition : Prop
  monotonicallyDecreasingTerm : monotonicallyDecreasing
  convergenceConditionTerm : convergenceCondition

structure AbelDiniTestEvidence (A : AbelDiniTestPackage) where
  monotonicallyDecreasingClosed : A.monotonicallyDecreasing
  convergenceConditionClosed : A.convergenceCondition

def AbelDiniTestClosed (A : AbelDiniTestPackage) : Prop :=
  A.monotonicallyDecreasing ∧ A.convergenceCondition

theorem abel_dini_test_closed_from_evidence
    (A : AbelDiniTestPackage) (E : AbelDiniTestEvidence A) :
    AbelDiniTestClosed A := by
  exact And.intro E.monotonicallyDecreasingClosed E.convergenceConditionClosed

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
