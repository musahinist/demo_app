// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return _Launch.fromJson(json);
}

/// @nodoc
mixin _$Launch {
  Fairings? get fairings => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'static_fire_date_utc')
  DateTime? get staticFireDateUtc => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  List<dynamic>? get failures => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get launchpad => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_number')
  int? get flightNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_utc')
  DateTime? get dateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_unix')
  int? get dateUnix => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_local')
  String? get dateLocal => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_precision')
  String? get datePrecision => throw _privateConstructorUsedError;
  bool? get upcoming => throw _privateConstructorUsedError;
  List<Core>? get cores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res, Launch>;
  @useResult
  $Res call(
      {Fairings? fairings,
      Links? links,
      @JsonKey(name: 'static_fire_date_utc') DateTime? staticFireDateUtc,
      bool? success,
      List<dynamic>? failures,
      String? details,
      String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      String? name,
      @JsonKey(name: 'date_utc') DateTime? dateUtc,
      @JsonKey(name: 'date_unix') int? dateUnix,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'date_precision') String? datePrecision,
      bool? upcoming,
      List<Core>? cores});

  $FairingsCopyWith<$Res>? get fairings;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res, $Val extends Launch>
    implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? staticFireDateUtc = freezed,
    Object? success = freezed,
    Object? failures = freezed,
    Object? details = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateUnix = freezed,
    Object? dateLocal = freezed,
    Object? datePrecision = freezed,
    Object? upcoming = freezed,
    Object? cores = freezed,
  }) {
    return _then(_value.copyWith(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as Fairings?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _value.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUnix: freezed == dateUnix
          ? _value.dateUnix
          : dateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      datePrecision: freezed == datePrecision
          ? _value.datePrecision
          : datePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      cores: freezed == cores
          ? _value.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<Core>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FairingsCopyWith<$Res>? get fairings {
    if (_value.fairings == null) {
      return null;
    }

    return $FairingsCopyWith<$Res>(_value.fairings!, (value) {
      return _then(_value.copyWith(fairings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$$_LaunchCopyWith(_$_Launch value, $Res Function(_$_Launch) then) =
      __$$_LaunchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fairings? fairings,
      Links? links,
      @JsonKey(name: 'static_fire_date_utc') DateTime? staticFireDateUtc,
      bool? success,
      List<dynamic>? failures,
      String? details,
      String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      String? name,
      @JsonKey(name: 'date_utc') DateTime? dateUtc,
      @JsonKey(name: 'date_unix') int? dateUnix,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'date_precision') String? datePrecision,
      bool? upcoming,
      List<Core>? cores});

  @override
  $FairingsCopyWith<$Res>? get fairings;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_LaunchCopyWithImpl<$Res>
    extends _$LaunchCopyWithImpl<$Res, _$_Launch>
    implements _$$_LaunchCopyWith<$Res> {
  __$$_LaunchCopyWithImpl(_$_Launch _value, $Res Function(_$_Launch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? staticFireDateUtc = freezed,
    Object? success = freezed,
    Object? failures = freezed,
    Object? details = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateUnix = freezed,
    Object? dateLocal = freezed,
    Object? datePrecision = freezed,
    Object? upcoming = freezed,
    Object? cores = freezed,
  }) {
    return _then(_$_Launch(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as Fairings?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _value.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      failures: freezed == failures
          ? _value._failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUnix: freezed == dateUnix
          ? _value.dateUnix
          : dateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      datePrecision: freezed == datePrecision
          ? _value.datePrecision
          : datePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      cores: freezed == cores
          ? _value._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<Core>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Launch implements _Launch {
  _$_Launch(
      {this.fairings,
      this.links,
      @JsonKey(name: 'static_fire_date_utc') this.staticFireDateUtc,
      this.success,
      final List<dynamic>? failures,
      this.details,
      this.launchpad,
      @JsonKey(name: 'flight_number') this.flightNumber,
      this.name,
      @JsonKey(name: 'date_utc') this.dateUtc,
      @JsonKey(name: 'date_unix') this.dateUnix,
      @JsonKey(name: 'date_local') this.dateLocal,
      @JsonKey(name: 'date_precision') this.datePrecision,
      this.upcoming,
      final List<Core>? cores})
      : _failures = failures,
        _cores = cores;

  factory _$_Launch.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchFromJson(json);

  @override
  final Fairings? fairings;
  @override
  final Links? links;
  @override
  @JsonKey(name: 'static_fire_date_utc')
  final DateTime? staticFireDateUtc;
  @override
  final bool? success;
  final List<dynamic>? _failures;
  @override
  List<dynamic>? get failures {
    final value = _failures;
    if (value == null) return null;
    if (_failures is EqualUnmodifiableListView) return _failures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? details;
  @override
  final String? launchpad;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  final String? name;
  @override
  @JsonKey(name: 'date_utc')
  final DateTime? dateUtc;
  @override
  @JsonKey(name: 'date_unix')
  final int? dateUnix;
  @override
  @JsonKey(name: 'date_local')
  final String? dateLocal;
  @override
  @JsonKey(name: 'date_precision')
  final String? datePrecision;
  @override
  final bool? upcoming;
  final List<Core>? _cores;
  @override
  List<Core>? get cores {
    final value = _cores;
    if (value == null) return null;
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Launch(fairings: $fairings, links: $links, staticFireDateUtc: $staticFireDateUtc, success: $success, failures: $failures, details: $details, launchpad: $launchpad, flightNumber: $flightNumber, name: $name, dateUtc: $dateUtc, dateUnix: $dateUnix, dateLocal: $dateLocal, datePrecision: $datePrecision, upcoming: $upcoming, cores: $cores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Launch &&
            (identical(other.fairings, fairings) ||
                other.fairings == fairings) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.staticFireDateUtc, staticFireDateUtc) ||
                other.staticFireDateUtc == staticFireDateUtc) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._failures, _failures) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.launchpad, launchpad) ||
                other.launchpad == launchpad) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc) &&
            (identical(other.dateUnix, dateUnix) ||
                other.dateUnix == dateUnix) &&
            (identical(other.dateLocal, dateLocal) ||
                other.dateLocal == dateLocal) &&
            (identical(other.datePrecision, datePrecision) ||
                other.datePrecision == datePrecision) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            const DeepCollectionEquality().equals(other._cores, _cores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fairings,
      links,
      staticFireDateUtc,
      success,
      const DeepCollectionEquality().hash(_failures),
      details,
      launchpad,
      flightNumber,
      name,
      dateUtc,
      dateUnix,
      dateLocal,
      datePrecision,
      upcoming,
      const DeepCollectionEquality().hash(_cores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      __$$_LaunchCopyWithImpl<_$_Launch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchToJson(
      this,
    );
  }
}

abstract class _Launch implements Launch {
  factory _Launch(
      {final Fairings? fairings,
      final Links? links,
      @JsonKey(name: 'static_fire_date_utc') final DateTime? staticFireDateUtc,
      final bool? success,
      final List<dynamic>? failures,
      final String? details,
      final String? launchpad,
      @JsonKey(name: 'flight_number') final int? flightNumber,
      final String? name,
      @JsonKey(name: 'date_utc') final DateTime? dateUtc,
      @JsonKey(name: 'date_unix') final int? dateUnix,
      @JsonKey(name: 'date_local') final String? dateLocal,
      @JsonKey(name: 'date_precision') final String? datePrecision,
      final bool? upcoming,
      final List<Core>? cores}) = _$_Launch;

  factory _Launch.fromJson(Map<String, dynamic> json) = _$_Launch.fromJson;

  @override
  Fairings? get fairings;
  @override
  Links? get links;
  @override
  @JsonKey(name: 'static_fire_date_utc')
  DateTime? get staticFireDateUtc;
  @override
  bool? get success;
  @override
  List<dynamic>? get failures;
  @override
  String? get details;
  @override
  String? get launchpad;
  @override
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @override
  String? get name;
  @override
  @JsonKey(name: 'date_utc')
  DateTime? get dateUtc;
  @override
  @JsonKey(name: 'date_unix')
  int? get dateUnix;
  @override
  @JsonKey(name: 'date_local')
  String? get dateLocal;
  @override
  @JsonKey(name: 'date_precision')
  String? get datePrecision;
  @override
  bool? get upcoming;
  @override
  List<Core>? get cores;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      throw _privateConstructorUsedError;
}
