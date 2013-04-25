-- * Built-in types

type Undefined
type Null
type Int
type UInt32
type Number
type String
type DateTime
type Array a -- [a]
type Object a -- { String -> a }
type Function a b -- a -> b



-- Arrays

Array a :: new Number -> [a]
Array a :: new a... -> [a]

Array.isArray :: a -> Bool

data SortingRank :: Lower -1 | Equal 0 | Greater 1
  

class Array a deriving Object a
  -- * Reflection
  length :: UInt32

  -- * Manipulating elements
  push! :: a... -> Number
  pop! :: () -> Maybe a
  unshift! :: a... -> Number
  shift! :: () -> Maybe a
  splice! :: Number, Number, a... -> this

  -- * Sorting
  reverse! :: () -> [a]
  sort! :: (a, b -> SortingRank) -> [a]

  -- * Constructing
  concat :: [a]... -> [a]
  slice :: Number?, Number? -> [a]

  -- * Transforming
  join :: String -> String
  toString :: () -> String
  toSource :: () -> String -- @nonStandard

  -- * Accessing elements
  indexOf :: a -> Number
  lastIndexOf :: a -> Number

  -- * Iteration
  forEach :: (a, Number, [a] -> ()), Object? -> ()

  -- * Folds
  every :: (a, Number, [a] -> Bool), Object? -> Bool
  some :: (a, Number, [a] -> Bool), Object? -> Bool
  filter :: (a, Number, [a] -> Bool), Object? -> [a]
  map :: (a, Number, [a] -> b), Object? -> [b]
  reduce :: (b, a, Number, [a] -> b), b? -> b
  reduceRight :: (b, a, Number, [a] -> b), b? -> b

  
-- Booleans

Boolean :: new Boolean -> Boolean

class Boolean deriving Object a
  toString :: () -> String
  valueOf :: () -> Number
  toSource :: () -> String -- @nonStandard

-- Date

Date :: new -> Date
Date :: new Number -> Date
Date :: new String -> Date
Date :: new y:Number, m:Number, d:Number, h:Number?, m:Number, s:Number, ms:Number -> Date

Date.now :: () -> Number
Date.parse :: String -> Number
Date.UTC :: y:Number, m:Number, d:Number?, h:Number, m:Number, s:Number, ms:Number -> Number

class Date deriving Object a
  getDate :: () -> Number
  getDay :: () -> Number
  getFullYear :: () -> Number
  getHours :: () -> Number
  getMilliseconds :: () -> Number
  getMinutes :: () -> Number
  getMonth :: () -> Number
  getSeconds :: () -> Number
  getTime :: () -> Number
  getTimezoneOffset :: () -> Number
  getUTCDate :: () -> Number
  getUTCDay :: () -> Number
  getUTCFullYear :: () -> Number
  getUTCHours :: () -> Number
  getUTCMilliseconds :: () -> Number
  getUTCMinutes :: () -> Number
  getUTCMonth :: () -> Number
  getUTCSeconds :: () -> Number
  getYear :: () -> Number -- @deprecated
  setDate :: Number -> Number
  setFullYear :: Number -> Number
  setHours :: Number -> Number
  setMilliseconds :: Number -> Number
  setMinutes :: Number -> Number
  setMonth :: Number -> Number
  setSeconds :: Number -> Number
  setTime :: Number -> Number
  setUTCDate :: Number -> Number
  setUTCFullYear :: Number -> Number
  setUTCHours :: Number -> Number
  setUTCMilliseconds :: Number -> Number
  setUTCMinutes :: Number -> Number
  setUTCMonth :: Number -> Number
  setUTCSeconds :: Number -> Number
  setYear :: Number -> Number -- @deprecated
  toDateString :: () -> String
  toISOString :: () -> String
  toJSON :: () -> String
  toGMTString :: () -> String
  toLocaleDateString :: () -> String
  toLocaleString :: () -> String
  toLocaleTimeString :: () -> String
  toString :: () -> String
  toTimeString :: () -> String
  toUTCString :: () -> String
  valueOf :: () -> Number

  toLocaleFormat :: () -> String -- @nonStandard
  toSource :: () -> String -- @nonStandard
  

-- Functions

Function :: new String -> Function
Function :: new args:String..., String -> String

class Function a b deriving Object a
  arguments :: [a] -- @deprecated
  arity :: Number -- @obsolete
  caller :: Function -- @nonStandard
  length :: Number
  name :: String -- @nonStandard

  apply :: Object, [a] -> b
  bind :: Object, a... -> Function a b
  call :: Object, a... -> b
  isGenerator :: () -> Boolean
  toSource :: () -> String -- @nonStandard
  toString :: () -> String


-- Numbers

Number :: new Number -> Number

Number.MAX_VALUE :: Number
Number.MIN_VALUE :: Number
Number.NaN :: Number
Number.NEGATIVE_INFINITY :: Number
Number.POSITIVE_INFINITY :: Number

Number.isNaN :: Number -> Bool -- @experimental, ES6
Number.isFinite :: Number -> Bool -- @experimental, ES6
Number.isInteger :: Number -> Bool -- @experimental, ES6
Number.toInteger :: Number -> Int32 -- @experimental, ES6


-- Object

Object a :: new b -> b -- (as object)

Object.create :: c:Object, PropertyDescriptors -> c <| Object
Object.defineProperty :: c:Object, String, PropertyDescriptor -> c
Object.defineProperties :: c:Object, String, PropertyDescriptors -> c
Object.getOwnPropertyDescriptor :: Object, String -> Maybe a
Object.keys :: Object -> [String]
Object.getOwnPropertyNames :: Object -> [String]
Object.getPrototypeOf :: a <| Object -> a
Object.preventExtensions :: Object -> Object
Object.isExtensible :: Object -> Bool
Object.seal :: Object -> Object
Object.is :: a, b -> Bool -- @experimental, ES6
Object.isSealed :: Object -> Bool
Object.freeze :: Object -> Object
Object.isFrozen :: Object -> Object

class Object a deriving Object a
  __count__ :: Number -- @obsolete
  __parent__ :: Number -- @obsolete
  __proto__ :: Object -- @nonStandard
  __defineGetter__ :: String, Function -> Object -- @nonStandard
  __defineSetter__ :: String, Function -> Object -- @nonStandard
  eval :: String -> a -- @obsolete
  hasOwnProperty :: String -> Bool
  isPrototypeOf :: Object -> Bool
  __lookupGetter__ :: String -> Function -- @nonStandard
  __lookupSetter__ :: String -> Function -- @nonStandard
  __noSuchMethod__ :: (String, [a] -> b) -- @nonStandard
  propertyIsEnumerable :: String -> Bool
  toSource :: () -> String -- @nonStandard
  toLocaleString :: () -> String
  toString :: () -> String
  unwatch :: String -> ? -- @nonStandard
  valueOf :: () -> ?
  watch :: String -> (String, a, b -> ()) -> ? -- @nonStandard


-- String

String :: new a -> String

String.fromCharCode :: Number -> String

class String deriving Object a
  length :: UInt32
  

