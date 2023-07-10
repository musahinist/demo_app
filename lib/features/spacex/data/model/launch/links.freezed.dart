// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  Patch? get patch => throw _privateConstructorUsedError;
  dynamic get presskit => throw _privateConstructorUsedError;
  String? get webcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get wikipedia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {Patch? patch,
      dynamic presskit,
      String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      String? article,
      String? wikipedia});

  $PatchCopyWith<$Res>? get patch;
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? presskit = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_value.copyWith(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Patch?,
      presskit: freezed == presskit
          ? _value.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatchCopyWith<$Res>? get patch {
    if (_value.patch == null) {
      return null;
    }

    return $PatchCopyWith<$Res>(_value.patch!, (value) {
      return _then(_value.copyWith(patch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Patch? patch,
      dynamic presskit,
      String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      String? article,
      String? wikipedia});

  @override
  $PatchCopyWith<$Res>? get patch;
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$_Links>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? presskit = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_$_Links(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Patch?,
      presskit: freezed == presskit
          ? _value.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Links implements _Links {
  _$_Links(
      {this.patch,
      this.presskit,
      this.webcast,
      @JsonKey(name: 'youtube_id') this.youtubeId,
      this.article,
      this.wikipedia});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  final Patch? patch;
  @override
  final dynamic presskit;
  @override
  final String? webcast;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  final String? article;
  @override
  final String? wikipedia;

  @override
  String toString() {
    return 'Links(patch: $patch, presskit: $presskit, webcast: $webcast, youtubeId: $youtubeId, article: $article, wikipedia: $wikipedia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            (identical(other.patch, patch) || other.patch == patch) &&
            const DeepCollectionEquality().equals(other.presskit, presskit) &&
            (identical(other.webcast, webcast) || other.webcast == webcast) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patch,
      const DeepCollectionEquality().hash(presskit),
      webcast,
      youtubeId,
      article,
      wikipedia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  factory _Links(
      {final Patch? patch,
      final dynamic presskit,
      final String? webcast,
      @JsonKey(name: 'youtube_id') final String? youtubeId,
      final String? article,
      final String? wikipedia}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  Patch? get patch;
  @override
  dynamic get presskit;
  @override
  String? get webcast;
  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  String? get article;
  @override
  String? get wikipedia;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}
