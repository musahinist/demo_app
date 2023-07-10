// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fairings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return _Fairings.fromJson(json);
}

/// @nodoc
mixin _$Fairings {
  bool? get reused => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt => throw _privateConstructorUsedError;
  bool? get recovered => throw _privateConstructorUsedError;
  List<dynamic>? get ships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FairingsCopyWith<Fairings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FairingsCopyWith<$Res> {
  factory $FairingsCopyWith(Fairings value, $Res Function(Fairings) then) =
      _$FairingsCopyWithImpl<$Res, Fairings>;
  @useResult
  $Res call(
      {bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      bool? recovered,
      List<dynamic>? ships});
}

/// @nodoc
class _$FairingsCopyWithImpl<$Res, $Val extends Fairings>
    implements $FairingsCopyWith<$Res> {
  _$FairingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_value.copyWith(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FairingsCopyWith<$Res> implements $FairingsCopyWith<$Res> {
  factory _$$_FairingsCopyWith(
          _$_Fairings value, $Res Function(_$_Fairings) then) =
      __$$_FairingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      bool? recovered,
      List<dynamic>? ships});
}

/// @nodoc
class __$$_FairingsCopyWithImpl<$Res>
    extends _$FairingsCopyWithImpl<$Res, _$_Fairings>
    implements _$$_FairingsCopyWith<$Res> {
  __$$_FairingsCopyWithImpl(
      _$_Fairings _value, $Res Function(_$_Fairings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_$_Fairings(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fairings implements _Fairings {
  _$_Fairings(
      {this.reused,
      @JsonKey(name: 'recovery_attempt') this.recoveryAttempt,
      this.recovered,
      final List<dynamic>? ships})
      : _ships = ships;

  factory _$_Fairings.fromJson(Map<String, dynamic> json) =>
      _$$_FairingsFromJson(json);

  @override
  final bool? reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  final bool? recoveryAttempt;
  @override
  final bool? recovered;
  final List<dynamic>? _ships;
  @override
  List<dynamic>? get ships {
    final value = _ships;
    if (value == null) return null;
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fairings(reused: $reused, recoveryAttempt: $recoveryAttempt, recovered: $recovered, ships: $ships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fairings &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.recoveryAttempt, recoveryAttempt) ||
                other.recoveryAttempt == recoveryAttempt) &&
            (identical(other.recovered, recovered) ||
                other.recovered == recovered) &&
            const DeepCollectionEquality().equals(other._ships, _ships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reused, recoveryAttempt,
      recovered, const DeepCollectionEquality().hash(_ships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FairingsCopyWith<_$_Fairings> get copyWith =>
      __$$_FairingsCopyWithImpl<_$_Fairings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FairingsToJson(
      this,
    );
  }
}

abstract class _Fairings implements Fairings {
  factory _Fairings(
      {final bool? reused,
      @JsonKey(name: 'recovery_attempt') final bool? recoveryAttempt,
      final bool? recovered,
      final List<dynamic>? ships}) = _$_Fairings;

  factory _Fairings.fromJson(Map<String, dynamic> json) = _$_Fairings.fromJson;

  @override
  bool? get reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt;
  @override
  bool? get recovered;
  @override
  List<dynamic>? get ships;
  @override
  @JsonKey(ignore: true)
  _$$_FairingsCopyWith<_$_Fairings> get copyWith =>
      throw _privateConstructorUsedError;
}
