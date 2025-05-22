// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
      documentType: json['document_type'] as String,
      documentNumber: json['document_number'] as String,
      taxRegime: json['tax_regime'] as String,
      personType: json['person_type'] as String,
      city: json['city'] as String,
      department: json['department'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      provider: $enumDecode(_$AuthProviderEnumMap, json['provider']),
      acceptTerms: json['acceptTerms'] as bool,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'document_type': instance.documentType,
      'document_number': instance.documentNumber,
      'tax_regime': instance.taxRegime,
      'person_type': instance.personType,
      'city': instance.city,
      'department': instance.department,
      'address': instance.address,
      'phone': instance.phone,
      'provider': _$AuthProviderEnumMap[instance.provider]!,
      'acceptTerms': instance.acceptTerms,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.email: 'email',
  AuthProvider.google: 'google',
  AuthProvider.facebook: 'facebook',
};

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
      fullName: json['full_name'] as String,
      documentType: json['document_type'] as String,
      documentNumber: json['document_number'] as String,
      taxRegime: json['tax_regime'] as String,
      personType: json['person_type'] as String,
      city: json['city'] as String,
      department: json['department'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      provider: $enumDecodeNullable(_$AuthProviderEnumMap, json['provider']) ??
          AuthProvider.email,
      acceptTerms: json['acceptTerms'] as bool? ?? false,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'document_type': instance.documentType,
      'document_number': instance.documentNumber,
      'tax_regime': instance.taxRegime,
      'person_type': instance.personType,
      'city': instance.city,
      'department': instance.department,
      'address': instance.address,
      'phone': instance.phone,
      'provider': _$AuthProviderEnumMap[instance.provider]!,
      'acceptTerms': instance.acceptTerms,
    };
