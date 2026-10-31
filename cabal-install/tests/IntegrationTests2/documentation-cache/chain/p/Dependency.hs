module Dependency (dependency) where

import P (value)

-- | This sublibrary depends on the main library, and is a dependency of q.
dependency :: Int
dependency = value + 2
