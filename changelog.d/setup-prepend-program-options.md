---
synopsis: Add `--PROG-prepend-option` to `Setup build` and `Setup haddock`
packages: [Cabal]
prs: [12491]
---

`Setup build` and `Setup haddock` accept `--PROG-prepend-option` to supply
invocation-only defaults for a program. Unlike `--PROG-option` arguments,
which follow the configured program arguments, these precede them, so that
explicitly configured options take precedence.
