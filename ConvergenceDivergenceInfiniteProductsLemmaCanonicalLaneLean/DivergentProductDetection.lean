import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure DivergentProductDetection where
  termSequence : Type u
  partialProductDiverges : Prop
  divergenceToZero : Prop
  divergenceToInfinity : Prop
  oscillation : Prop

structure DivergentProductDetectionEvidence (D : DivergentProductDetection) where
  partialProductDivergesClosed : D.partialProductDiverges
  divergenceToZeroClosed : D.divergenceToZero
  divergenceToInfinityClosed : D.divergenceToInfinity
  oscillationClosed : D.oscillation

def DivergentProductDetectionClosed (D : DivergentProductDetection) : Prop :=
  D.partialProductDiverges ∧ D.divergenceToZero ∧ D.divergenceToInfinity ∧ D.oscillation

theorem divergent_product_detection_closed_from_evidence (D : DivergentProductDetection) (E : DivergentProductDetectionEvidence D) :
    DivergentProductDetectionClosed D := by
  exact And.intro E.partialProductDivergesClosed (And.intro E.divergenceToZeroClosed (And.intro E.divergenceToInfinityClosed E.oscillationClosed))

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse