import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductPackage where
  productTerms : Type u
  partialProducts : Type v
  limitProduct : Prop
  absoluteConvergence : Prop
  conditionallyConvergent : Prop

structure InfiniteProductEvidence (P : InfiniteProductPackage) where
  limitProductClosed : P.limitProduct
  absoluteConvergenceClosed : P.absoluteConvergence
  conditionallyConvergentClosed : P.conditionallyConvergent

def InfiniteProductConvergenceClosed (P : InfiniteProductPackage) : Prop :=
  P.limitProduct ∧ P.absoluteConvergence ∧ P.conditionallyConvergent

theorem infinite_product_convergence_closed_from_evidence (P : InfiniteProductPackage) (E : InfiniteProductEvidence P) :
    InfiniteProductConvergenceClosed P := by
  exact And.intro E.limitProductClosed (And.intro E.absoluteConvergenceClosed E.conditionallyConvergentClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse