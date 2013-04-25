/// type Array-like
//
// Defines the common structural type of objects that "look like arrays".
//
// :: { "length": UInt32 }


/// function Array
//
// Constructs `Array` objects, which are sparse list/vector-like data
// structures.
//
// :: new (Number) -> [a]
// :: new (a...) -> [a]
//
// Arrays provide a way to manage ordered collections of values, like a
// List or Vector would in another language. Arrays in JavaScript are
// slightly different from most other languages in that they are sparse
// (that is, not necessarily all of the keys in an Array will be
// associated with a value).
//
// The Array function and its prototype provide several functions to
// manipulate both actual Arrays and `Array-like` objects.
function Array(length) { }
function Array(n1, n2 /*, ... */) { }



//// -- Predicates -----------------------------------------------------

///// function isArray
//
// Verifies if the given object is an actual Array (not an Array-like).
//
// :: a -> Bool
Array.isArray = function(a) { }


//// -- Instances ------------------------------------------------------

///// {} prototype
//
// Properties shared by instances of Array.
//
// :: Object.prototype <| Array.prototype



///// -- Reflection ----------------------------------------------------

////// data length
//
// The size of the Array.
//
// :: @Array-like => UInt32
//
// **Warning**
// > Note that due to Arrays being sparse in JavaScript, this **does not**
// > reflect the number of actual elements in the array. Its value can be
// > tought as the largest index defined in the array + 1.



///// -- Modifying array elements --------------------------------------

////// function push
//
// Adds one or more elements to the end of an Array, and returns the new
// length of the Array.
//
// :: @Array-like* => a... -> Number
Array.prototype.push = function(a1, a2 /*, ... */) { }


////// function pop
//
// Removes the element at the last index from an Array, and returns it.
//
// If the Array is empty, no changes are made and the operation returns
// `undefined`.
//
// ::@Array-like* => () -> Maybe a
Array.prototype.pop = function() { }

////// function unshift
//
// Adds one or more elements to the beginning of an Array, and returns
// the new length of the Array.
//
// :: @Array-like* => a... -> Number
Array.prototype.unshift = function(a1, a2 /*, ... */) { }

////// function shift
//
// Removes the first element from the array, and returns it.
//
// If the Array is empty, no changes are made and the operation returns
// `undefined`.
//
// ::@Array-like* => () -> Maybe a
Array.prototype.shift = function() { }

////// function splice
//
// Adds and/or removes elements from the array at specific indexes.
//
// The function will remove `size` elements starting from `index`, then
// add all the given elements at `index` in the array.
//
// :: @Array-like* => index:Number, size:Number, a... -> this
Array.prototype.splice = function(index, size, a1, a2 /*, ... */) { }


///// -- Sorting and ordering ------------------------------------------

////// function reverse
//
// Inverts the order of elements in the Array.
//
// :: @Array-like* => () -> [a]
Array.prototype.reverse = function() { }

////// function sort
//
// Sorts the Array according to the specified criteria.
//
// If no criteria is specified, the items will be sorted
// lexicographically. If a criteria is specified, the function should
// return a Number defining what to do with the pair of elements the
// sorting algorithm is considering:
//
//   - Negative: consider element `a` lower than element `b`. Nothing is
//     done.
//   - Zero: consider both elements equal, result is unspecified.
//   - Positive: consider element `a` greater than element `b`. They're
//     swapped.
//
// The specification does not gurantee that the sorting algorithm will
// be stable, nor what implementations should do if the criteria
// function returns 0.
//
// :: @Array-like* => (a, a -> Number) -> [a]
Array.prototype.sort = function(criteria) { }


///// -- Constructing arrays -------------------------------------------

////// function concat
//
// Concatenates one or more arrays together.
//
// :: @Array-like => [a]... -> [a]
Array.prototype.concat = function(as1, as2 /*, ... */) { }

////// function slice
//
// Returns a portion of the array between the given indexes.
//
// If the `starting` index is omitted, it's assumed to be the beginning
// of the Array; if the `ending` index is omitted, it's assumed to be
// the end of the Array.
//
// If any of the indexes have a negative value, the index is considered
// to be relative to the end of the Array.
//
// :: @Array-like* => starting:Number?, ending:Number? -> [a]
Array.prototype.slice = function(starting, ending) { }


///// -- Acessing elements ---------------------------------------------

////// function indexOf
//
// Returns the index of the first element to match the given one, by a
// strict equality check.
//
// If no element matches the given one, it returns -1.
//
// :: @Array-like => a -> Number
Array.prototype.indexOf = function(a) { }

////// function lastIndexOf
//
// Returns the index of the last element to match the given one, by a
// strict equality check.
//
// If no element matches the given one, it returns -1.
//
// :: @Array-like => a -> Number
Array.prototype.lastIndexOf = function(a) { }


///// -- Transforming --------------------------------------------------

////// function join
//
// Join the elements in a String, separated by the given separator.
//
// If no separator is given, `", "` is assumed.
//
// :: @Array-like => String? -> String
Array.prototype.join = function(separator) { }

////// function toString
//
// Returns a string representation of the Array.
//
// (Same as `array.join()`)
//
// :: @Array-like => () -> String
Array.prototype.toString = function() { }


///// -- Iteration -----------------------------------------------------

////// function forEach
//
// Applies a function to every item in the list, in ascending order.
//
// :: @Array-like => (a, Number, [a] -> ()), Object? -> ()
Array.prototype.forEach = function(callback, thisObject) { }


///// -- Folds ---------------------------------------------------------

////// function reduce
//
// Computes a value out of a list of values, from left to right.
//
// If no initial value is specified, the function uses the first element
// of the Array and reduces on the rest of the list.
//
// :: @Array-like => (b, a, Number, [a] -> b), b? -> b
Array.prototype.reduce = function(callback, initialValue) { }

////// function reduceRight
//
// Computes a value out of a list of values, from right to left.
//
// If no initial value is specified, the function uses the last element
// of the Array and reduces on the rest of the list.
//
// :: @Array-like => (b, a, Number, [a] -> b), b? -> b
Array.prototype.reduceRight = function(callback, initialValue) { }