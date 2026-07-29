import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure RatioTestPackage where
  seriesTerms : Type u
  limitRatio : Prop
  lessThanOne : Prop
  greaterThanOne : Prop
  equalToOne : Prop

structure RatioTestEvidence (R : RatioTestPackage) where
  limitRatioClosed : R.limitRatio
  lessThanOneClosed : R.lessThanOne
  greaterThanOneClosed : R.greaterThanOne
  equalToOneClosed : R.equalToOne

def RatioTestClosed (R : RatioTestPackage) : Prop :=
  R.limitRatio ∧ R.lessThanOne ∧ R.greaterThanOne ∧ R.equalToOne

theorem ratio_test_closed_from_evidence (R : RatioTestPackage) (E : RatioTestEvidence R) :
    RatioTestClosed R := by
  exact And.intro E.limitRatioClosed (And.intro E.lessThanOneClosed (And.intro E.greaterThanOneClosed E.equalToOneClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse