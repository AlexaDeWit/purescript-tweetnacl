module Crypt.NaCl.Types where

import Data.ArrayBuffer.Types (Uint8Array)
import Effect
import Prelude
import Unsafe.Coerce (unsafeCoerce)

foreign import data NACL_RANDOM :: Type

-- | A NaCl SHA-512 Hash
foreign import data HashSha512 :: Type

instance eqHashSha512 :: Eq HashSha512 where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl Nonce
foreign import data Nonce :: Type

instance eqNonce :: Eq Nonce where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl Message, which is represented as a Uint8Array in JS
foreign import data Message :: Type

instance eqMessage :: Eq Message where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl Box, which is an encrypted, authenticated message
foreign import data Box :: Type

instance eqBox :: Eq Box where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl `BoxKeyPair` containing a `BoxPublicKey` and a `BoxSecretKey`
newtype BoxKeyPair = BoxKeyPair { publicKey :: BoxPublicKey, secretKey :: BoxSecretKey }

derive instance eqBoxKeyPair :: Eq BoxKeyPair

-- | A NaCl BoxPublicKey
foreign import data BoxPublicKey :: Type

instance eqBoxPublicKey :: Eq BoxPublicKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl BoxSecretKey
foreign import data BoxSecretKey :: Type

instance eqBoxSecretKey :: Eq BoxSecretKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl BoxSharedKey
foreign import data BoxSharedKey :: Type

instance eqBoxSharedKey :: Eq BoxSharedKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | a NaCL SecretBox
foreign import data SecretBox :: Type

instance eqSecretBox :: Eq SecretBox where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | a NaCL SecretBoxKey
foreign import data SecretBoxKey :: Type

instance eqSecretBoxKey :: Eq SecretBoxKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl Signature
foreign import data Signature :: Type

-- | A NaCl `SignKeyPair` containing a `SignPublicKey` and a `SignSecretKey`
newtype SignKeyPair = SignKeyPair { publicKey :: SignPublicKey, secretKey :: SignSecretKey }

derive instance eqSignKeyPair :: Eq SignKeyPair

-- | A NaCl SignPublicKey
foreign import data SignPublicKey :: Type

instance eqSignPublicKey :: Eq SignPublicKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl SignSecretKey
foreign import data SignSecretKey :: Type

instance eqSignSecretKey :: Eq SignSecretKey where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

-- | A NaCl SignSeed (a 32 byte seed can be used to generate a 64 byte SignSecretKey)
foreign import data SignSeed :: Type

-- | A NaCl SignedMessage, which is represented as a Uint8Array in JS
foreign import data SignedMessage :: Type

instance eqSignedMessage :: Eq SignedMessage where
  eq a b = equalUint8Arrays (unsafeCoerce a) (unsafeCoerce b)

