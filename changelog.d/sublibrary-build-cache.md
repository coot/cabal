---
synopsis: Record sublibraries under their own names in the build cache
packages: [cabal-install]
prs: [12491]
---

After `cabal haddock` or `cabal haddock-project`, a sublibrary used by another
package is no longer rebuilt as "additional components to build", together with
the packages that depend on it.
