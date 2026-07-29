import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  norm : carrier -> ℝ
  complete : Prop

structure InfiniteProductAdmittedObject where
  space : InfiniteProductSpace
  sequence : ℕ -> carrier
  partialProductsConverge : Prop
  limitInSpace : carrier
  conclusion : partialProductsConverge → limitInSpace = limitInSpace

structure AdmissibleClass where
  object : InfiniteProductAdmittedObject
  endpointSatisfied : object.partialProductsConverge
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InfiniteProductWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure InfiniteProductWitnessClosed (O : InfiniteProductAdmittedObject) : Prop where
  sequenceConverges : O.partialProductsConverge
  limitInSpace : O.limitInSpace = O.limitInSpace

theorem bridge_from_admissible_class (A : AdmissibleClass) : admittedClosure A := by
  exact And.intro (InfiniteProductWitnessClosed.mpr A.endpointSatisfied) A.gateWitness

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
