import 'package:freezed_annotation/freezed_annotation.dart';

import 'core.dart';
import 'fairings.dart';
import 'links.dart';

part 'launch.freezed.dart';
part 'launch.g.dart';

@freezed
class Launch with _$Launch {
  factory Launch({
    Fairings? fairings,
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
    List<Core>? cores,
  }) = _Launch;

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);
}
