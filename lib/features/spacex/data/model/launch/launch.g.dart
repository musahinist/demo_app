// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Launch _$$_LaunchFromJson(Map<String, dynamic> json) => _$_Launch(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['static_fire_date_utc'] == null
          ? null
          : DateTime.parse(json['static_fire_date_utc'] as String),
      success: json['success'] as bool?,
      failures: json['failures'] as List<dynamic>?,
      details: json['details'] as String?,
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flight_number'] as int?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] == null
          ? null
          : DateTime.parse(json['date_utc'] as String),
      dateUnix: json['date_unix'] as int?,
      dateLocal: json['date_local'] as String?,
      datePrecision: json['date_precision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Core.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LaunchToJson(_$_Launch instance) => <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'static_fire_date_utc': instance.staticFireDateUtc?.toIso8601String(),
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
      'launchpad': instance.launchpad,
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc?.toIso8601String(),
      'date_unix': instance.dateUnix,
      'date_local': instance.dateLocal,
      'date_precision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
    };
