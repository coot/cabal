---
synopsis: Do not rewrite unchanged cache files
packages: [cabal-install]
prs: [12491]
---

Cache files are no longer rewritten when their contents are unchanged.
Previously, the builds that `cabal haddock` and `cabal haddock-project` run for
dependencies rewrote their build caches, so the next build rebuilt dependents,
reporting that a dependency's `cache/build` file changed.
