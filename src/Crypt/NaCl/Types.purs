module Crypt.NaCl.Types where

import Prelude
import Data.ArrayBuffer.Types (Uint8Array)
import Unsafe.Coerce (unsafeCoerce)

-- | A general equality comparison for `Uint8Array`s
foreign import equalUint8Arrays :: Uint8Array -> Uint8Array -> Boolean

-- | A NaCl SHA-512 Hash
foreign import data HashSha512 :: Type

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

-- | A NaCl BoxPublicKey
foreign import data BoxPublicKey :: Type

-- | A NaCl BoxSecretKey
foreign import data BoxSecretKey :: Type

-- | A NaCl BoxSharedKey
foreign import data BoxSharedKey :: Type


-- | a NaCL SecretBox
foreign import data SecretBox :: Type

-- | a NaCL SecretBoxKey
foreign import data SecretBoxKey :: Type


-- | A NaCl Signature
foreign import data Signature :: Type

-- | A NaCl `SignKeyPair` containing a `SignPublicKey` and a `SignSecretKey`
newtype SignKeyPair = SignKeyPair { publicKey :: SignPublicKey, secretKey :: SignSecretKey }

-- | A NaCl SignPublicKey
foreign import data SignPublicKey :: Type

-- | A NaCl SignSecretKey
foreign import data SignSecretKey :: Type

-- | A NaCl SignedMessage, which is represented as a Uint8Array in JS
foreign import data SignedMessage :: Type
