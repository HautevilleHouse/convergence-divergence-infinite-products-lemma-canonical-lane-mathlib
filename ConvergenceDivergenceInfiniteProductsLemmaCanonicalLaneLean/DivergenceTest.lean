import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure DivergenceTestPackage where
  seriesTerms : Type u
  termNonZero : Prop
  limitNotZero : Prop
  divergenceCondition : Prop

structure DivergenceTestEvidence (D : DivergenceTestPackage) where
  termNonZeroClosed : D.termNonZero
  limitNotZeroClosed : D.limitNotZero
  divergenceConditionClosed : D.divergenceCondition

def DivergenceTestClosed (D : DivergenceTestPackage) : Prop :=
  D.termNonZero ∧ D.limitNotZero ∧ D.divergenceCondition

theorem divergence_test_closed_from_evidence (D : DivergenceTestPackage) (E : DivergenceTestEvidence D) :
    DivergenceTestClosed D := by
  exact And.intro E.termNonZeroClosed (And.intro E.limitNotZeroClosed E.divergenceConditionClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse