import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure ProductToSeriesPackage where
  termLog : ℕ → ℝ
  productCorrespondence : Prop
  convergenceTransfer : Prop
  divergenceTransfer : Prop

structure ProductToSeriesEvidence (P : ProductToSeriesPackage) where
  productCorrespondenceClosed : P.productCorrespondence
  convergenceTransferClosed : P.convergenceTransfer
  divergenceTransferClosed : P.divergenceTransfer

def ProductToSeriesClosed (P : ProductToSeriesPackage) : Prop :=
  P.productCorrespondence ∧ P.convergenceTransfer ∧ P.divergenceTransfer

theorem product_to_series_closed_from_evidence (P : ProductToSeriesPackage) (E : ProductToSeriesEvidence P) : ProductToSeriesClosed P := by
  exact And.intro E.productCorrespondenceClosed (And.intro E.convergenceTransferClosed E.divergenceTransferClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse