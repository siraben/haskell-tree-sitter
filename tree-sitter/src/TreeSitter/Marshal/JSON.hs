{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE FlexibleContexts #-}

module TreeSitter.Marshal.JSON where

import Data.Aeson as Aeson
import GHC.Generics

-- Typeclass to generically marshal ASTs into JSON
class MarshalJSON t where
  marshal :: t a -> Value