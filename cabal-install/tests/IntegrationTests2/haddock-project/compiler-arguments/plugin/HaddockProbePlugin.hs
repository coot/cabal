-- | A plugin whose initialization is observable even when interfaces are reused.
module HaddockProbePlugin (plugin) where

import GHC.Plugins (Plugin (..), defaultPlugin, purePlugin)

-- | Record that the compiler session loaded the configured plugin.
plugin :: Plugin
plugin =
  defaultPlugin
    { driverPlugin = \_ env -> putStrLn "haddock-probe-plugin-active" >> return env
    , pluginRecompile = purePlugin
    }
