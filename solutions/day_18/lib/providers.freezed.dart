// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState()';
}


}

/// @nodoc
class $WeatherStateCopyWith<$Res>  {
$WeatherStateCopyWith(WeatherState _, $Res Function(WeatherState) __);
}


/// Adds pattern-matching-related methods to [WeatherState].
extension WeatherStatePatterns on WeatherState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Sunny value)?  sunny,TResult Function( Rainy value)?  rainy,TResult Function( Unknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Sunny() when sunny != null:
return sunny(_that);case Rainy() when rainy != null:
return rainy(_that);case Unknown() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Sunny value)  sunny,required TResult Function( Rainy value)  rainy,required TResult Function( Unknown value)  unknown,}){
final _that = this;
switch (_that) {
case Sunny():
return sunny(_that);case Rainy():
return rainy(_that);case Unknown():
return unknown(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Sunny value)?  sunny,TResult? Function( Rainy value)?  rainy,TResult? Function( Unknown value)?  unknown,}){
final _that = this;
switch (_that) {
case Sunny() when sunny != null:
return sunny(_that);case Rainy() when rainy != null:
return rainy(_that);case Unknown() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int temperature)?  sunny,TResult Function()?  rainy,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Sunny() when sunny != null:
return sunny(_that.temperature);case Rainy() when rainy != null:
return rainy();case Unknown() when unknown != null:
return unknown();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int temperature)  sunny,required TResult Function()  rainy,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case Sunny():
return sunny(_that.temperature);case Rainy():
return rainy();case Unknown():
return unknown();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int temperature)?  sunny,TResult? Function()?  rainy,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case Sunny() when sunny != null:
return sunny(_that.temperature);case Rainy() when rainy != null:
return rainy();case Unknown() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class Sunny implements WeatherState {
  const Sunny({required this.temperature});
  

 final  int temperature;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SunnyCopyWith<Sunny> get copyWith => _$SunnyCopyWithImpl<Sunny>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sunny&&(identical(other.temperature, temperature) || other.temperature == temperature));
}


@override
int get hashCode => Object.hash(runtimeType,temperature);

@override
String toString() {
  return 'WeatherState.sunny(temperature: $temperature)';
}


}

/// @nodoc
abstract mixin class $SunnyCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $SunnyCopyWith(Sunny value, $Res Function(Sunny) _then) = _$SunnyCopyWithImpl;
@useResult
$Res call({
 int temperature
});




}
/// @nodoc
class _$SunnyCopyWithImpl<$Res>
    implements $SunnyCopyWith<$Res> {
  _$SunnyCopyWithImpl(this._self, this._then);

  final Sunny _self;
  final $Res Function(Sunny) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? temperature = null,}) {
  return _then(Sunny(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Rainy implements WeatherState {
  const Rainy();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rainy);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState.rainy()';
}


}




/// @nodoc


class Unknown implements WeatherState {
  const Unknown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState.unknown()';
}


}




// dart format on
