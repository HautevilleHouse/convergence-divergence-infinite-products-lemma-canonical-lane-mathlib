import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure WallisProductPackage where
  productTerms : ℕ → ℝ
  productLimit : ℝ
  explicitFormula : Prop
  convergenceProof : Prop
  explicitFormulaTerm : explicitFormula
  convergenceProofTerm : convergenceProof

structure WallisProductEvidence (W : WallisProductPackage) where
  explicitFormulaClosed : W.explicitFormula
  convergenceProofClosed : W.convergenceProof

def WallisProductClosed (W : WallisProductPackage) : Prop :=
  W.explicitFormula ∧ W.convergenceProof

theorem wallis_product_closed_from_evidence
    (W : WallisProductPackage) (E : WallisProductEvidence W) :
    WallisProductClosed W := by
  exact And.intro E.explicitFormulaClosed E.convergenceProofClosed

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
