---
synopsis: Generate haddock-project documentation directly in its output directory
packages: [cabal-install]
prs: [12491]
---

`cabal haddock-project` now documents the local packages directly into its
output directory, instead of documenting them in their build directories and
copying the documentation. It no longer replaces the documentation of a build,
for example with `documentation: True`, with documentation that links to the
contents and index of its output directory.

The documentation of dependencies is copied to the output directory before the
local packages are documented, so that their hyperlinked sources link to the
copies there, like their documentation does.
