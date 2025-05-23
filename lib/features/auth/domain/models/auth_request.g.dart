// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String,
      documentType: json['documentType'] as String,
      documentNumber: json['documentNumber'] as String,
      taxRegime: json['taxRegime'] as String,
      personType: json['personType'] as String,
      city: json['city'] as String,
      department: json['department'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fullName': instance.fullName,
      'documentType': instance.documentType,
      'documentNumber': instance.documentNumber,
      'taxRegime': instance.taxRegime,
      'personType': instance.personType,
      'city': instance.city,
      'department': instance.department,
      'address': instance.address,
      'phone': instance.phone,
    };
