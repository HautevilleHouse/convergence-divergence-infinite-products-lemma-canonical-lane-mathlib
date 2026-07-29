import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ConditionalConvergencePackage where
  baseProduct : AbsoluteConvergencePackage
  alternatingTerms : ℕ → ℝ
  conditionalConvergence : Prop
  reorderingDiverges : Prop
  limitPointSet : Prop

structure ConditionalConvergenceEvidence (C : ConditionalConvergencePackage) where
  conditionalConvergenceClosed : C.conditionalConvergence
  reorderingDivergesClosed : C.reorderingDiverges
  limitPointSetClosed : C.limitPointSet

def ConditionalConvergenceClosed (C : ConditionalConvergencePackage) : Prop :=
  C.conditionalConvergence ∧ C.reorderingDiverges ∧ C.limitPointSet

theorem conditional_convergence_closed_from_evidence (C : ConditionalConvergencePackage) (E : ConditionalConvergenceEvidence C) : ConditionalConvergenceClosed C := by
  exact And.intro E.conditionalConvergenceClosed (And.intro E.reorderingDivergesClosed E.limitPointSetClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse