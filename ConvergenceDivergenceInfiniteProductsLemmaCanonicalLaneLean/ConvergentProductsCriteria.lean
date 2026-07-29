import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ConvergentProductsCriteria where
  termSequence : Type u
  partialProductSequence : Type v
  limitExists : Prop
  cauchyCriterionSatisfied : Prop
  logarithmConvergence : Prop
  absoluteConvergence : Prop

structure ConvergentProductsCriteriaEvidence (C : ConvergentProductsCriteria) where
  limitExistsClosed : C.limitExists
  cauchyCriterionSatisfiedClosed : C.cauchyCriterionSatisfied
  logarithmConvergenceClosed : C.logarithmConvergence
  absoluteConvergenceClosed : C.absoluteConvergence

def ConvergentProductsCriteriaClosed (C : ConvergentProductsCriteria) : Prop :=
  C.limitExists ∧ C.cauchyCriterionSatisfied ∧ C.logarithmConvergence ∧ C.absoluteConvergence

theorem convergent_products_criteria_closed_from_evidence (C : ConvergentProductsCriteria) (E : ConvergentProductsCriteriaEvidence C) :
    ConvergentProductsCriteriaClosed C := by
  exact And.intro E.limitExistsClosed (And.intro E.cauchyCriterionSatisfiedClosed (And.intro E.logarithmConvergenceClosed E.absoluteConvergenceClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse