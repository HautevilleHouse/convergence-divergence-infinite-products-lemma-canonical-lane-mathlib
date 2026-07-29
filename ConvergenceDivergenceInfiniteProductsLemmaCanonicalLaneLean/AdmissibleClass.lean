import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

structure InfiniteProductSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure InfiniteProductAdmittedObject where
  space : InfiniteProductSpace
  sequence : ℕ → carrier space
  partialProductsConverge : Prop
  limitValue : carrier space
  conclusion : partialProductsConverge

structure AdmissibleClass where
  object : InfiniteProductAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InfiniteProductWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse