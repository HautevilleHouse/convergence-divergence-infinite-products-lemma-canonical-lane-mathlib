import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean.ConvergenceTests

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InfiniteProductWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact InfiniteProductWitnessClosed.mpr A.endpointSatisfied

end ConvergenceDivergenceInfiniteProductsLemmaCanonicalLaneLean
end HautevilleHouse
