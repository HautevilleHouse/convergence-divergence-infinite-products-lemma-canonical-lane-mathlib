import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductManipulation where
  associativeProperty : Prop
  commutativeProperty : Prop
  rearrangement : Prop
  productOfProducts : Prop
  scaling : Prop
  reindexing : Prop

structure InfiniteProductManipulationEvidence (M : InfiniteProductManipulation) where
  associativePropertyClosed : M.associativeProperty
  commutativePropertyClosed : M.commutativeProperty
  rearrangementClosed : M.rearrangement
  productOfProductsClosed : M.productOfProducts
  scalingClosed : M.scaling
  reindexingClosed : M.reindexing

def InfiniteProductManipulationClosed (M : InfiniteProductManipulation) : Prop :=
  M.associativeProperty ∧ M.commutativeProperty ∧ M.rearrangement ∧ M.productOfProducts ∧ M.scaling ∧ M.reindexing

theorem infinite_product_manipulation_closed_from_evidence (M : InfiniteProductManipulation) (E : InfiniteProductManipulationEvidence M) :
    InfiniteProductManipulationClosed M := by
  exact And.intro E.associativePropertyClosed (And.intro E.commutativePropertyClosed (And.intro E.rearrangementClosed (And.intro E.productOfProductsClosed (And.intro E.scalingClosed E.reindexingClosed))))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse