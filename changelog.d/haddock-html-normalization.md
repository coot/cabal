---
synopsis: Normalize implicit HTML output in dependency hashes
packages: [cabal-install]
prs: []
---

When documentation is enabled without Hoogle output, implicit HTML output and
explicit `haddock-html: True` now produce the same dependency hash. This avoids
rebuilding dependencies solely because `haddock-project` explicitly enables
HTML. Hoogle-only output remains distinct from combined HTML and Hoogle output,
and hashes for packages built without documentation are unchanged.
