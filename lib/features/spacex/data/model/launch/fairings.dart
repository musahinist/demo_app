import 'package:freezed_annotation/freezed_annotation.dart';

part 'fairings.freezed.dart';
part 'fairings.g.dart';

@freezed
class Fairings with _$Fairings {
  factory Fairings({
    bool? reused,
    @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
    bool? recovered,
    List<dynamic>? ships,
  }) = _Fairings;

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);
}
