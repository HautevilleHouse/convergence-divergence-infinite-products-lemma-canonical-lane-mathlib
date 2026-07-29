import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure IntegralTestPackage where
  functionField : Type u
  decreasingCondition : Prop
  integralConverges : Prop
  seriesConverges : Prop

structure IntegralTestEvidence (I : IntegralTestPackage) where
  decreasingConditionClosed : I.decreasingCondition
  integralConvergesClosed : I.integralConverges
  seriesConvergesClosed : I.seriesConverges

def IntegralTestClosed (I : IntegralTestPackage) : Prop :=
  I.decreasingCondition ∧ I.integralConverges ∧ I.seriesConverges

theorem integral_test_closed_from_evidence (I : IntegralTestPackage) (E : IntegralTestEvidence I) :
    IntegralTestClosed I := by
  exact And.intro E.decreasingConditionClosed (And.intro E.integralConvergesClosed E.seriesConvergesClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse