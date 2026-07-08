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
mixin _$CampState {

 int get camperCount; bool get stormIncoming;
/// Create a copy of CampState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampStateCopyWith<CampState> get copyWith => _$CampStateCopyWithImpl<CampState>(this as CampState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampState&&(identical(other.camperCount, camperCount) || other.camperCount == camperCount)&&(identical(other.stormIncoming, stormIncoming) || other.stormIncoming == stormIncoming));
}


@override
int get hashCode => Object.hash(runtimeType,camperCount,stormIncoming);

@override
String toString() {
  return 'CampState(camperCount: $camperCount, stormIncoming: $stormIncoming)';
}


}

/// @nodoc
abstract mixin class $CampStateCopyWith<$Res>  {
  factory $CampStateCopyWith(CampState value, $Res Function(CampState) _then) = _$CampStateCopyWithImpl;
@useResult
$Res call({
 int camperCount, bool stormIncoming
});




}
/// @nodoc
class _$CampStateCopyWithImpl<$Res>
    implements $CampStateCopyWith<$Res> {
  _$CampStateCopyWithImpl(this._self, this._then);

  final CampState _self;
  final $Res Function(CampState) _then;

/// Create a copy of CampState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? camperCount = null,Object? stormIncoming = null,}) {
  return _then(_self.copyWith(
camperCount: null == camperCount ? _self.camperCount : camperCount // ignore: cast_nullable_to_non_nullable
as int,stormIncoming: null == stormIncoming ? _self.stormIncoming : stormIncoming // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CampState].
extension CampStatePatterns on CampState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampState value)  $default,){
final _that = this;
switch (_that) {
case _CampState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampState value)?  $default,){
final _that = this;
switch (_that) {
case _CampState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int camperCount,  bool stormIncoming)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampState() when $default != null:
return $default(_that.camperCount,_that.stormIncoming);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int camperCount,  bool stormIncoming)  $default,) {final _that = this;
switch (_that) {
case _CampState():
return $default(_that.camperCount,_that.stormIncoming);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int camperCount,  bool stormIncoming)?  $default,) {final _that = this;
switch (_that) {
case _CampState() when $default != null:
return $default(_that.camperCount,_that.stormIncoming);case _:
  return null;

}
}

}

/// @nodoc


class _CampState implements CampState {
  const _CampState({required this.camperCount, required this.stormIncoming});
  

@override final  int camperCount;
@override final  bool stormIncoming;

/// Create a copy of CampState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampStateCopyWith<_CampState> get copyWith => __$CampStateCopyWithImpl<_CampState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampState&&(identical(other.camperCount, camperCount) || other.camperCount == camperCount)&&(identical(other.stormIncoming, stormIncoming) || other.stormIncoming == stormIncoming));
}


@override
int get hashCode => Object.hash(runtimeType,camperCount,stormIncoming);

@override
String toString() {
  return 'CampState(camperCount: $camperCount, stormIncoming: $stormIncoming)';
}


}

/// @nodoc
abstract mixin class _$CampStateCopyWith<$Res> implements $CampStateCopyWith<$Res> {
  factory _$CampStateCopyWith(_CampState value, $Res Function(_CampState) _then) = __$CampStateCopyWithImpl;
@override @useResult
$Res call({
 int camperCount, bool stormIncoming
});




}
/// @nodoc
class __$CampStateCopyWithImpl<$Res>
    implements _$CampStateCopyWith<$Res> {
  __$CampStateCopyWithImpl(this._self, this._then);

  final _CampState _self;
  final $Res Function(_CampState) _then;

/// Create a copy of CampState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? camperCount = null,Object? stormIncoming = null,}) {
  return _then(_CampState(
camperCount: null == camperCount ? _self.camperCount : camperCount // ignore: cast_nullable_to_non_nullable
as int,stormIncoming: null == stormIncoming ? _self.stormIncoming : stormIncoming // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
