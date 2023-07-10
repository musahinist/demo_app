// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Patch _$PatchFromJson(Map<String, dynamic> json) {
  return _Patch.fromJson(json);
}

/// @nodoc
mixin _$Patch {
  String? get small => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchCopyWith<Patch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchCopyWith<$Res> {
  factory $PatchCopyWith(Patch value, $Res Function(Patch) then) =
      _$PatchCopyWithImpl<$Res, Patch>;
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class _$PatchCopyWithImpl<$Res, $Val extends Patch>
    implements $PatchCopyWith<$Res> {
  _$PatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatchCopyWith<$Res> implements $PatchCopyWith<$Res> {
  factory _$$_PatchCopyWith(_$_Patch value, $Res Function(_$_Patch) then) =
      __$$_PatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class __$$_PatchCopyWithImpl<$Res> extends _$PatchCopyWithImpl<$Res, _$_Patch>
    implements _$$_PatchCopyWith<$Res> {
  __$$_PatchCopyWithImpl(_$_Patch _value, $Res Function(_$_Patch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_Patch(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patch implements _Patch {
  _$_Patch({this.small, this.large});

  factory _$_Patch.fromJson(Map<String, dynamic> json) =>
      _$$_PatchFromJson(json);

  @override
  final String? small;
  @override
  final String? large;

  @override
  String toString() {
    return 'Patch(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patch &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchCopyWith<_$_Patch> get copyWith =>
      __$$_PatchCopyWithImpl<_$_Patch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchToJson(
      this,
    );
  }
}

abstract class _Patch implements Patch {
  factory _Patch({final String? small, final String? large}) = _$_Patch;

  factory _Patch.fromJson(Map<String, dynamic> json) = _$_Patch.fromJson;

  @override
  String? get small;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_PatchCopyWith<_$_Patch> get copyWith =>
      throw _privateConstructorUsedError;
}
