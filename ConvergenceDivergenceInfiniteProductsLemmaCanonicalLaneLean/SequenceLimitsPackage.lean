import ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean.InfiniteProductsAnalyticFoundation

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure SequenceLimitsPackage where
  limitExistence : Prop
  limitUniqueness : Prop
  limitProperties : Prop
  cauchyCriterion : Prop
  monotoneConvergence : Prop

structure SequenceLimitsEvidence (S : SequenceLimitsPackage) where
  limitExistenceClosed : S.limitExistence
  limitUniquenessClosed : S.limitUniqueness
  limitPropertiesClosed : S.limitProperties
  cauchyCriterionClosed : S.cauchyCriterion
  monotoneConvergenceClosed : S.monotoneConvergence

def SequenceLimitsClosed (S : SequenceLimitsPackage) : Prop :=
  S.limitExistence ∧ S.limitUniqueness ∧ S.limitProperties ∧ S.cauchyCriterion ∧ S.monotoneConvergence

theorem sequence_limits_closed_from_evidence (S : SequenceLimitsPackage) (E : SequenceLimitsEvidence S) :
    SequenceLimitsClosed S := by
  exact And.intro E.limitExistenceClosed
    (And.intro E.limitUniquenessClosed
      (And.intro E.limitPropertiesClosed
        (And.intro E.cauchyCriterionClosed E.monotoneConvergenceClosed)))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse