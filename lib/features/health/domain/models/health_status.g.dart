// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthStatusImpl _$$HealthStatusImplFromJson(Map<String, dynamic> json) =>
    _$HealthStatusImpl(
      status: json['status'] as String,
      version: json['version'] as String,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$HealthStatusImplToJson(_$HealthStatusImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'version': instance.version,
      'message': instance.message,
    };
