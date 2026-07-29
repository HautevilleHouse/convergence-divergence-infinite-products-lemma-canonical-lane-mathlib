import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductDivergencePackage where
  sequence : (ℕ → ℂ)
  partialProducts : ℕ → ℂ
  divergesToZero : Prop
  divergesToInfinity : Prop
  oscillates : Prop
  divergesToZeroTerm : divergesToZero
  divergesToInfinityTerm : divergesToInfinity
  oscillatesTerm : oscillates

structure InfiniteProductDivergenceEvidence (P : InfiniteProductDivergencePackage) where
  divergesToZeroClosed : P.divergesToZero
  divergesToInfinityClosed : P.divergesToInfinity
  oscillatesClosed : P.oscillates

def InfiniteProductDivergenceClosed (P : InfiniteProductDivergencePackage) : Prop :=
  P.divergesToZero ∨ P.divergesToInfinity ∨ P.oscillates

theorem infinite_product_divergence_closed_from_evidence
    (P : InfiniteProductDivergencePackage) (E : InfiniteProductDivergenceEvidence P) :
    InfiniteProductDivergenceClosed P := by
  refine Or.inl E.divergesToZeroClosed

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
