import ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean.ConvergenceCriteria

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductsAnalyticFoundation where
  convergenceCriteria : ConvergenceCriteriaPackage
  convergenceCriteriaEvidence : ConvergenceCriteriaEvidence convergenceCriteria
  infiniteSeries : Type
  termSequence : Type
  analyticTools : Prop
  analyticToolsEvidence : analyticTools

def InfiniteProductsAnalyticFoundationClosed (A : InfiniteProductsAnalyticFoundation) : Prop :=
  ConvergenceCriteriaClosed A.convergenceCriteria ∧ A.analyticTools

theorem infinite_products_analytic_foundation_closed_from_evidence
    (A : InfiniteProductsAnalyticFoundation) :
    InfiniteProductsAnalyticFoundationClosed A := by
  exact And.intro
    (convergence_criteria_closed_from_evidence A.convergenceCriteria A.convergenceCriteriaEvidence)
    A.analyticToolsEvidence

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse