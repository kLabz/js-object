package js;

import haxe.extern.Rest;

@:native('Object')
extern class Object {
	/**
	  The Object.assign() method is used to copy the values of all enumerable
	  own properties from one or more source objects to a target object. It
	  will return the target object.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign
	*/
	static function assign(target:Dynamic, sources:Rest<Dynamic>):Dynamic;

	/**
	  The Object.create() method create a new object, using an existing object
	  to provide the newly created object's __proto__ . (see browser console
	  for visual evidence.)

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create
	*/
	static function create(proto:Null<Dynamic>, ?propertiesObject:Dynamic):Dynamic;

	/**
	  The static method Object.defineProperty() defines a new property directly
	  on an object, or modifies an existing property on an object, and returns
	  the object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty
	*/
	static function defineProperty<TObj, TProp>(obj:TObj, prop:String, descriptor:PropertyDescriptor<TProp>):TObj;

	/**
	  The Object.defineProperties() method defines new or modifies existing
	  properties directly on an object, returning the object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperties
	*/
	static function defineProperties<TObj>(obj:TObj, props:Dynamic<PropertyDescriptor<Any>>):TObj;

	/**
	  The Object.entries() method returns an array of a given object's own
	  enumerable property [key, value] pairs, in the same order as that
	  provided by a for...in loop (the difference being that a for-in loop
	  enumerates properties in the prototype chain as well).

	  Note: this is an ES2017 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries
	*/
	static function entries(obj:Dynamic):Array<Array<Any>>;

	/**
	  The Object.freeze() method freezes an object: that is, prevents new
	  properties from being added to it; prevents existing properties from
	  being removed; and prevents existing properties, or their enumerability,
	  configurability, or writability, from being changed, it also prevents the
	  prototype from being changed.  The method returns the passed object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze
	*/
	static function freeze<TObj>(obj:TObj):TObj;

	/**
	  The Object.getOwnPropertyDescriptor() method returns a property
	  descriptor for an own property (that is, one directly present on an
	  object and not in the object's prototype chain) of a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyDescriptor
	*/
	static function getOwnPropertyDescriptor<TProp>(obj:Dynamic, prop:String):Null<PropertyDescriptor<TProp>>;

	/**
	  The Object.getOwnPropertyDescriptors() method returns all own property
	  descriptors of a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyDescriptors
	*/
	static function getOwnPropertyDescriptors(obj:Dynamic):Dynamic<PropertyDescriptor<Any>>;

	/**
	  The Object.getOwnPropertyNames() method returns an array of all
	  properties (including non-enumerable properties except for those which
	  use Symbol) found directly upon a given object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyNames
	*/
	static function getOwnPropertyNames(obj:Dynamic):Array<String>;

	/**
	  The Object.getOwnPropertySymbols() method returns an array of all symbol
	  properties found directly upon a given object.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertySymbols
	*/
	static function getOwnPropertySymbols(obj:Dynamic):Array<Symbol>;

	/**
	  The Object.getPrototypeOf() method returns the prototype (i.e. the value
	  of the internal [[Prototype]] property) of the specified object.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getPrototypeOf
	*/
	static function getPrototypeOf(obj:Dynamic):Dynamic;

	/**
	  The Object.is() method determines whether two values are the same value.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/is
	*/
	static function is<TObj>(obj1:TObj, obj2:TObj):Bool;

	/**
	  The Object.isExtensible() method determines if an object is extensible
	  (whether it can have new properties added to it).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isExtensible
	*/
	static function isExtensible(obj:Dynamic):Bool;

	/**
	  The Object.isFrozen() determines if an object is frozen.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isFrozen
	*/
	static function isFrozen(obj:Dynamic):Bool;

	/**
	  The Object.isSealed() method determines if an object is sealed.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isSealed
	*/
	static function isSealed(obj:Dynamic):Bool;

	/**
	  The Object.keys() method returns an array of a given object's own
	  enumerable properties, in the same order as that provided by a for...in
	  loop (the difference being that a for-in loop enumerates properties in
	  the prototype chain as well).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
	*/
	static function keys(obj:Dynamic):Array<String>;

	/**
	  The Object.preventExtensions() method prevents new properties from ever
	  being added to an object (i.e. prevents future extensions to the object).

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/preventExtensions
	*/
	static function preventExtensions<TObj>(obj:TObj):TObj;

	/**
	  The Object.seal() method seals an object, preventing new properties from
	  being added to it and marking all existing properties as
	  non-configurable. Values of present properties can still be changed as
	  long as they are writable.

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/seal
	*/
	static function seal<TObj>(obj:TObj):TObj;

	/**
	  The Object.setPrototypeOf() method sets the prototype (i.e., the internal
	  [[Prototype]] property) of a specified object to another object or null.

	  Note: this is an ES2015 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/setPrototypeOf
	*/
	static function setPrototypeOf<TObj>(obj:TObj, proto:Null<Dynamic>):TObj;

	/**
	  The Object.values() method returns an array of a given object's own
	  enumerable property values, in the same order as that provided by a
	  for...in loop (the difference being that a for-in loop enumerates
	  properties in the prototype chain as well).

	  Note: this is an ES2017 feature

	  See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/values
	*/
	static function values(obj:Dynamic):Array<Dynamic>;
}

typedef PropertyDescriptor<TProp> = {
	@:optional var value:TProp;
	@:optional var configurable:Bool;
	@:optional var enumerable:Bool;
	@:optional var writable:Bool;
	@:native('get') @:optional var _get:Void->TProp;
	@:native('set') @:optional var _set:TProp->Void;
}

