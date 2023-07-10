// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Slide {
  List<String>? get imagePaths => throw _privateConstructorUsedError;
  String? get videoPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlideCopyWith<Slide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideCopyWith<$Res> {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) then) =
      _$SlideCopyWithImpl<$Res, Slide>;
  @useResult
  $Res call({List<String>? imagePaths, String? videoPath});
}

/// @nodoc
class _$SlideCopyWithImpl<$Res, $Val extends Slide>
    implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = freezed,
    Object? videoPath = freezed,
  }) {
    return _then(_value.copyWith(
      imagePaths: freezed == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoPath: freezed == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlideCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$$_SlideCopyWith(_$_Slide value, $Res Function(_$_Slide) then) =
      __$$_SlideCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? imagePaths, String? videoPath});
}

/// @nodoc
class __$$_SlideCopyWithImpl<$Res> extends _$SlideCopyWithImpl<$Res, _$_Slide>
    implements _$$_SlideCopyWith<$Res> {
  __$$_SlideCopyWithImpl(_$_Slide _value, $Res Function(_$_Slide) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = freezed,
    Object? videoPath = freezed,
  }) {
    return _then(_$_Slide(
      imagePaths: freezed == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoPath: freezed == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Slide implements _Slide {
  const _$_Slide({final List<String>? imagePaths, this.videoPath})
      : _imagePaths = imagePaths;

  final List<String>? _imagePaths;
  @override
  List<String>? get imagePaths {
    final value = _imagePaths;
    if (value == null) return null;
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? videoPath;

  @override
  String toString() {
    return 'Slide(imagePaths: $imagePaths, videoPath: $videoPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Slide &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            (identical(other.videoPath, videoPath) ||
                other.videoPath == videoPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imagePaths), videoPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlideCopyWith<_$_Slide> get copyWith =>
      __$$_SlideCopyWithImpl<_$_Slide>(this, _$identity);
}

abstract class _Slide implements Slide {
  const factory _Slide(
      {final List<String>? imagePaths, final String? videoPath}) = _$_Slide;

  @override
  List<String>? get imagePaths;
  @override
  String? get videoPath;
  @override
  @JsonKey(ignore: true)
  _$$_SlideCopyWith<_$_Slide> get copyWith =>
      throw _privateConstructorUsedError;
}
