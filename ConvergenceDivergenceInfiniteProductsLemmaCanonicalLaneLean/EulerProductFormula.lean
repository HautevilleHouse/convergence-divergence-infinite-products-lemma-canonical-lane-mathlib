import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure EulerProductFormulaPackage where
  primeSequence : ℕ → ℕ
  eulerProduct : ℕ → ℂ
  analyticalContinuation : Prop
  convergenceRegion : Prop
  analyticalContinuationTerm : analyticalContinuation
  convergenceRegionTerm : convergenceRegion

structure EulerProductFormulaEvidence (E : EulerProductFormulaPackage) where
  analyticalContinuationClosed : E.analyticalContinuation
  convergenceRegionClosed : E.convergenceRegion

def EulerProductFormulaClosed (E : EulerProductFormulaPackage) : Prop :=
  E.analyticalContinuation ∧ E.convergenceRegion

theorem euler_product_formula_closed_from_evidence
    (E : EulerProductFormulaPackage) (Ev : EulerProductFormulaEvidence E) :
    EulerProductFormulaClosed E := by
  exact And.intro Ev.analyticalContinuationClosed Ev.convergenceRegionClosed

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
