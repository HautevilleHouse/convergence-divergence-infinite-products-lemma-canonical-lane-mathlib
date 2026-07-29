import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductTestsPackage where
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  comparisonTest : Prop

structure InfiniteProductTestsEvidence (T : InfiniteProductTestsPackage) where
  ratioTestClosed : T.ratioTest
  rootTestClosed : T.rootTest
  integralTestClosed : T.integralTest
  comparisonTestClosed : T.comparisonTest

def InfiniteProductTestsClosed (T : InfiniteProductTestsPackage) : Prop :=
  T.ratioTest ∧ T.rootTest ∧ T.integralTest ∧ T.comparisonTest

theorem infinite_product_tests_closed_from_evidence (T : InfiniteProductTestsPackage) (E : InfiniteProductTestsEvidence T) : InfiniteProductTestsClosed T := by
  exact And.intro E.ratioTestClosed (And.intro E.rootTestClosed (And.intro E.integralTestClosed E.comparisonTestClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse