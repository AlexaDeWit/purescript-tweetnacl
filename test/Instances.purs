module Test.Instances where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe
import Test.Assert

import Test.Util
import Crypt.NaCl

runInstanceTests :: Effect Unit
runInstanceTests = do
  log "Running typeclass instance tests"

