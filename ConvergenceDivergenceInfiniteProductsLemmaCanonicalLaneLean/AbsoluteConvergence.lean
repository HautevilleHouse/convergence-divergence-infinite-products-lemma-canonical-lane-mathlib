import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure AbsoluteConvergencePackage where
  termBound : ℝ
  positiveTerms : ℕ → ℝ
  absoluteProductDefined : Prop
  absoluteConvergence : Prop
  rearrangementInvariance : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  absoluteProductDefinedClosed : A.absoluteProductDefined
  absoluteConvergenceClosed : A.absoluteConvergence
  rearrangementInvarianceClosed : A.rearrangementInvariance

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.absoluteProductDefined ∧ A.absoluteConvergence ∧ A.rearrangementInvariance

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage) (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteProductDefinedClosed (And.intro E.absoluteConvergenceClosed E.rearrangementInvarianceClosed)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse