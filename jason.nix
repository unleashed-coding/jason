{ mkDerivation, base, containers, hspec, megaparsec, raw-strings-qq, scientific, stdenv }:
mkDerivation {
  pname = "jason";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base containers megaparsec scientific ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec megaparsec raw-strings-qq ];
  doHaddock = false;
  homepage = "https://github.com/appositum/jason#readme";
  license = stdenv.lib.licenses.asl20;
}
