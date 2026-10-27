{-# LANGUAGE CPP #-}

-- | Documentation requires the same component and configured compiler options.
module PluginClient (value) where

#if !defined(COMPONENT_OPTION_PRESENT)
#error Component compiler options were lost.
#endif
#if !defined(PROGRAM_OPTION_VALUE) || PROGRAM_OPTION_VALUE == 0
#error Configured compiler options did not override the component options.
#endif
#if EXPECT_SHARED && !defined(SHARED_OPTION_PRESENT)
#error Shared compiler options were lost.
#endif

-- | The value supplied through the configured compiler arguments.
value :: Int
value = PROGRAM_OPTION_VALUE
