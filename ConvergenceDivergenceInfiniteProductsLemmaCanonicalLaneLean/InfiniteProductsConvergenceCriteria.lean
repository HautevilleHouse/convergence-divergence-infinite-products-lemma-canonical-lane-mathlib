import ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  partialSumTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  comparisonTest : Prop
  absoluteConvergenceTest : Prop

structure ConvergenceCriteriaEvidence (C : ConvergenceCriteriaPackage) where
  partialSumTestClosed : C.partialSumTest
  ratioTestClosed : C.ratioTest
  rootTestClosed : C.rootTest
  integralTestClosed : C.integralTest
  comparisonTestClosed : C.comparisonTest
  absoluteConvergenceTestClosed : C.absoluteConvergenceTest

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.partialSumTest ∧ C.ratioTest ∧ C.rootTest ∧ C.integralTest ∧ C.comparisonTest ∧ C.absoluteConvergenceTest

theorem convergence_criteria_closed_from_evidence (C : ConvergenceCriteriaPackage) (E : ConvergenceCriteriaEvidence C) :
    ConvergenceCriteriaClosed C := by
  exact And.intro E.partialSumTestClosed
    (And.intro E.ratioTestClosed
      (And.intro E.rootTestClosed
        (And.intro E.integralTestClosed
          (And.intro E.comparisonTestClosed E.absoluteConvergenceTestClosed))))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse