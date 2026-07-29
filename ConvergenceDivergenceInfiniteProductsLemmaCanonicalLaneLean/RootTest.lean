import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure RootTestPackage where
  seriesTerms : Type u
  rootLimit : Prop
  lessThanOne : Prop
  greaterThanOne : Prop
  equalToOne : Prop

structure RootTestEvidence (R : RootTestPackage) where
  rootLimitClosed : R.rootLimit
  lessThanOneClosed : R.lessThanOne
  greaterThanOneClosed : R.greaterThanOne
  equalToOneClosed : R.equalToOne

def RootTestClosed (R : RootTestPackage) : Prop :=
  R.rootLimit ∧ R.lessThanOne ∧ R.greaterThanOne ∧ R.equalToOne

theorem root_test_closed_from_evidence (R : RootTestPackage) (E : RootTestEvidence R) :
    RootTestClosed R := by
  exact And.intro E.rootLimitClosed (And.intro E.lessThanOneClosed (And.intro E.greaterThanOneClosed E.equalToOneClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse