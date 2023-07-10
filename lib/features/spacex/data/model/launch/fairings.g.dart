// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fairings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Fairings _$$_FairingsFromJson(Map<String, dynamic> json) => _$_Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ships: json['ships'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_FairingsToJson(_$_Fairings instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };
