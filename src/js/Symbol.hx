package js;

@:native('Symbol')
extern class Symbol {
	/**
	  The Symbol() function returns a value of type symbol, has static
	  properties that expose several members of built-in objects, has static
	  methods that expose the global symbol registry, and resembles a built-in
	  object class but is incomplete as a constructor because it does not
	  support the syntax "new Symbol()".

	  Every symbol value returned from Symbol() is unique.  A symbol value may
	  be used as an identifier for object properties; this is the data type's
	  only purpose.  Some further explanation about purpose and usage can be
	  found in the glossary entry for Symbol.

	  The data type symbol is a primitive data type.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol
	*/
	@:selfCall function new(description:Null<String> = null);

	/**
	  The Symbol.for(key) method searches for existing symbols in a
	  runtime-wide symbol registry with the given key and returns it if found.
	  Otherwise a new symbol gets created in the global symbol registry with
	  this key.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/for
	*/
	@:native('for') static function forKey(key:String):Symbol;

	/**
	  The Symbol.keyFor(sym) method retrieves a shared symbol key from the
	  global symbol registry for the given symbol.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/keyFor
	*/
	static function keyFor(symbol:Symbol):Null<String>;

	/**
	  A method returning the default iterator for an object. Used by for...of.
	*/
	static var iterator:Symbol;

	/**
	  A method that matches against a string, also used to determine if an
	  object may be used as a regular expression. Used by
	  String.prototype.match().
	*/
	static var match:Symbol;

	/**
	  A method that replaces matched substrings of a string. Used by
	  String.prototype.replace().
	*/
	static var replace:Symbol;

	/**
	  A method that returns the index within a string that matches the regular
	  expression. Used by String.prototype.search().
	*/
	static var search:Symbol;

	/**
	  A method that splits a string at the indices that match a regular
	  expression. Used by String.prototype.split().
	*/
	static var split:Symbol;

	/**
	  A method determining if a constructor object recognizes an object as its
	  instance. Used by instanceof.
	*/
	static var hasInstance:Symbol;

	/**
	  A Boolean value indicating if an object should be flattened to its array
	  elements. Used by Array.prototype.concat().
	*/
	static var isConcatSpreadable:Symbol;

	/**
	  An object value of whose own and inherited property names are excluded
	  from the with environment bindings of the associated object.
	*/
	static var unscopables:Symbol;

	/**
	  A constructor function that is used to create derived objects.
	*/
	static var species:Symbol;

	/**
	  A method converting an object to a primitive value.
	*/
	static var toPrimitive:Symbol;

	/**
	  A string value used for the default description of an object. Used by
	  Object.prototype.toString().
	*/
	static var toStringTag:Symbol;
}

