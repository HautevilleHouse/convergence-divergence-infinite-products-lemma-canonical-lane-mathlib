import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean.InfiniteProductConvergence

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure CauchyCondensationTestPackage where
  originalSequence : (ℕ → ℂ)
  condensedSequence : (ℕ → ℂ)
  condensationCondition : Prop
  convergenceEquivalence : Prop
  condensationConditionTerm : condensationCondition
  convergenceEquivalenceTerm : convergenceEquivalence

structure CauchyCondensationTestEvidence (C : CauchyCondensationTestPackage) where
  condensationConditionClosed : C.condensationCondition
  convergenceEquivalenceClosed : C.convergenceEquivalence

def CauchyCondensationTestClosed (C : CauchyCondensationTestPackage) : Prop :=
  C.condensationCondition ∧ C.convergenceEquivalence

theorem cauchy_condensation_test_closed_from_evidence
    (C : CauchyCondensationTestPackage) (E : CauchyCondensationTestEvidence C) :
    CauchyCondensationTestClosed C := by
  exact And.intro E.condensationConditionClosed E.convergenceEquivalenceClosed

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
