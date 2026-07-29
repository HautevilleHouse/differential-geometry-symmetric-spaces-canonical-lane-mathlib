import HautevilleHouse.DifferentialGeometrySymmetricSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  symmetricSpaceConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "DifferentialGeometrySymmetricSpacesCanonicalLaneLean"

def sourceDescription : String := "Symmetric Spaces: classification and structure theorems"

def sourceTheoremBoundary : String := "unrestricted classical boundary"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  symmetricSpaceConstrainedStatement := "symmetric-space-constrained theorem certificate internalized through admissible-class closure",
  certificateLane := "symmetric_space_constrained",
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
}

end DifferentialGeometrySymmetricSpacesCanonicalLaneLean
end HautevilleHouse