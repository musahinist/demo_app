import 'package:freezed_annotation/freezed_annotation.dart';

part 'core.freezed.dart';
part 'core.g.dart';

@freezed
class Core with _$Core {
  factory Core({
    String? core,
    int? flight,
    bool? gridfins,
    bool? legs,
    bool? reused,
    @JsonKey(name: 'landing_attempt') bool? landingAttempt,
    @JsonKey(name: 'landing_success') dynamic landingSuccess,
    @JsonKey(name: 'landing_type') dynamic landingType,
    dynamic landpad,
  }) = _Core;

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);
}
