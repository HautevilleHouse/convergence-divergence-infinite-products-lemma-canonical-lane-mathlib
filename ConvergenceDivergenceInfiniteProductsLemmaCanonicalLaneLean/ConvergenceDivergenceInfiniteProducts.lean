import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductPackage where
  productSequence : ℕ → ℝ
  partialProduct : ℕ → ℝ
  infiniteProductExists : Prop
  infiniteProductValue : ℝ
  productConverges : Prop
  productDiverges : Prop

structure InfiniteProductEvidence (P : InfiniteProductPackage) where
  infiniteProductExistsClosed : P.infiniteProductExists
  infiniteProductValueClosed : infiniteProductExistsClosed → (P.infiniteProductValue = 0 ∨ P.infiniteProductValue ≠ 0)
  productConvergesClosed : P.productConverges
  productDivergesClosed : P.productDiverges

def InfiniteProductClosed (P : InfiniteProductPackage) : Prop :=
  P.infiniteProductExists ∧ P.productConverges ∧ P.productDiverges

theorem infinite_product_closed_from_evidence (P : InfiniteProductPackage) (E : InfiniteProductEvidence P) : InfiniteProductClosed P := by
  refine And.intro E.infiniteProductExistsClosed (And.intro E.productConvergesClosed E.productDivergesClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse