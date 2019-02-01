package js;

import haxe.DynamicAccess;
import haxe.extern.Rest;

#if (haxe_ver >= 4)
import js.Function;
#end

#if object_as_dynamic
typedef JsObject = Dynamic;
#else
typedef JsObject = {};
#end

#if (haxe_ver < 4)
@:native("Function")
extern class Function {
	/** Specifies the number of arguments expected by the function. **/
	var length(default,never):Int;

	/** The name of the function. **/
	var name:String;

	/** Creates a new Function object. **/
	function new(arg:String, rest:Rest<String>);

	/** Calls a function and sets its this to the provided value, arguments can be passed as an Array object. **/
	function apply(thisArg:Dynamic, argsArray:Array<Dynamic>):Dynamic;

	/** Calls (executes) a function and sets its this to the provided value, arguments can be passed as they are. **/
	function call(thisArg:Dynamic, args:Rest<Dynamic>):Dynamic;

	/**
		Creates a new function which, when called, has its this set to the provided value,
		with a given sequence of arguments preceding any provided when the new function was called.
	**/
	@:pure function bind(thisArg:Dynamic, args:Rest<Dynamic>):Function;

	/** Returns a string representing the source code of the function. **/
	@:pure function toString():String;
}
#end

@:native('Object')
extern class Object {
	static var prototype(default,never):ObjectPrototype;

	/**
	  The Object.assign() method is used to copy the values of all enumerable
	  own properties from one or more source objects to a target object. It
	  will return the target object.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign
	*/
	static function assign<TSource:JsObject, TDest:JsObject>(target:TSource, sources:Rest<JsObject>):TDest;

	/**
	  The Object.create() method create a new object, using an existing object
	  to provide the newly created object's __proto__ . (see browser console
	  for visual evidence.)

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create
	*/
	static function create<TObj>(proto:Null<{}>, ?propertiesObject:DynamicAccess<ObjectPropertyDescriptor<Any>>):TObj;

	/**
	  The static method Object.defineProperty() defines a new property directly
	  on an object, or modifies an existing property on an object, and returns
	  the object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty
	*/
	static function defineProperty<TObj:JsObject, TProp>(obj:TObj, prop:String, descriptor:ObjectPropertyDescriptor<TProp>):TObj;

	/**
	  The Object.defineProperties() method defines new or modifies existing
	  properties directly on an object, returning the object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperties
	*/
	static function defineProperties<TObj:JsObject>(obj:TObj, props:DynamicAccess<ObjectPropertyDescriptor<Any>>):TObj;

	/**
	  The Object.entries() method returns an array of a given object's own
	  enumerable property [key, value] pairs, in the same order as that
	  provided by a for...in loop (the difference being that a for-in loop
	  enumerates properties in the prototype chain as well).

	  Note: this is an ES2017 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries
	*/
	static function entries<TObj:JsObject>(obj:TObj):Array<Array<Any>>;

	/**
	  The Object.freeze() method freezes an object: that is, prevents new
	  properties from being added to it; prevents existing properties from
	  being removed; and prevents existing properties, or their enumerability,
	  configurability, or writability, from being changed, it also prevents the
	  prototype from being changed.  The method returns the passed object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze
	*/
	static function freeze<TObj:JsObject>(obj:TObj):TObj;

	/**
	  The Object.getOwnPropertyDescriptor() method returns a property
	  descriptor for an own property (that is, one directly present on an
	  object and not in the object's prototype chain) of a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyDescriptor
	*/
	static function getOwnPropertyDescriptor<TObj:JsObject, TProp>(obj:TObj, prop:String):Null<ObjectPropertyDescriptor<TProp>>;

	/**
	  The Object.getOwnPropertyDescriptors() method returns all own property
	  descriptors of a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyDescriptors
	*/
	static function getOwnPropertyDescriptors<TObj:JsObject>(obj:TObj):DynamicAccess<ObjectPropertyDescriptor<Any>>;

	/**
	  The Object.getOwnPropertyNames() method returns an array of all
	  properties (including non-enumerable properties except for those which
	  use Symbol) found directly upon a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyNames
	*/
	static function getOwnPropertyNames<TObj:JsObject>(obj:TObj):Array<String>;

	/**
	  The Object.getOwnPropertySymbols() method returns an array of all symbol
	  properties found directly upon a given object.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertySymbols
	*/
	static function getOwnPropertySymbols<TObj:JsObject>(obj:TObj):Array<Symbol>;

	/**
	  The Object.getPrototypeOf() method returns the prototype (i.e. the value
	  of the internal [[Prototype]] property) of the specified object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getPrototypeOf
	*/
	static function getPrototypeOf<TObj:JsObject, TProto>(obj:TObj):TProto;

	/**
	  The Object.is() method determines whether two values are the same value.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/is
	*/
	static function is<TObj:JsObject>(obj1:TObj, obj2:TObj):Bool;

	/**
	  The Object.isExtensible() method determines if an object is extensible
	  (whether it can have new properties added to it).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isExtensible
	*/
	static function isExtensible<TObj:JsObject>(obj:TObj):Bool;

	/**
	  The Object.isFrozen() determines if an object is frozen.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isFrozen
	*/
	static function isFrozen<TObj:JsObject>(obj:TObj):Bool;

	/**
	  The Object.isSealed() method determines if an object is sealed.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isSealed
	*/
	static function isSealed<TObj:JsObject>(obj:TObj):Bool;

	/**
	  The Object.keys() method returns an array of a given object's own
	  enumerable properties, in the same order as that provided by a for...in
	  loop (the difference being that a for-in loop enumerates properties in
	  the prototype chain as well).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
	*/
	static function keys<TObj:JsObject>(obj:TObj):Array<String>;

	/**
	  The Object.preventExtensions() method prevents new properties from ever
	  being added to an object (i.e. prevents future extensions to the object).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/preventExtensions
	*/
	static function preventExtensions<TObj:JsObject>(obj:TObj):TObj;

	/**
	  The Object.seal() method seals an object, preventing new properties from
	  being added to it and marking all existing properties as
	  non-configurable. Values of present properties can still be changed as
	  long as they are writable.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/seal
	*/
	static function seal<TObj:JsObject>(obj:TObj):TObj;

	/**
	  The Object.setPrototypeOf() method sets the prototype (i.e., the internal
	  [[Prototype]] property) of a specified object to another object or null.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/setPrototypeOf
	*/
	static function setPrototypeOf<TObj:JsObject, TProto:JsObject>(obj:TObj, proto:Null<TProto>):TObj;

	/**
	  The Object.values() method returns an array of a given object's own
	  enumerable property values, in the same order as that provided by a
	  for...in loop (the difference being that a for-in loop enumerates
	  properties in the prototype chain as well).

	  Note: this is an ES2017 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/values
	*/
	static function values<TObj:JsObject>(obj:TObj):Array<Dynamic>;
}

typedef ObjectPrototype = {
	var hasOwnProperty(default,never):Function;
	var isPrototypeOf(default,never):Function;
	var propertyIsEnumerable(default,never):Function;
	var toLocaleString(default,never):Function;
	var toString(default,never):Function;
	var valueOf(default,never):Function;
}

typedef ObjectPropertyDescriptor<TProp> = {
	@:optional var value:TProp;
	@:optional var configurable:Bool;
	@:optional var enumerable:Bool;
	@:optional var writable:Bool;
	@:optional var get:Void->TProp;
	@:optional var set:TProp->Void;
}

