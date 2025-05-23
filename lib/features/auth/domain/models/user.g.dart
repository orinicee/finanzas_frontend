// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      documentType: json['document_type'] as String,
      documentNumber: json['document_number'] as String,
      taxRegime: json['tax_regime'] as String,
      personType: json['person_type'] as String,
      city: json['city'] as String,
      department: json['department'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      socialId: json['social_id'] as String?,
      provider: $enumDecodeNullable(_$AuthProviderEnumMap, json['provider']),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isActive: json['isActive'] as bool? ?? false,
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'document_type': instance.documentType,
      'document_number': instance.documentNumber,
      'tax_regime': instance.taxRegime,
      'person_type': instance.personType,
      'city': instance.city,
      'department': instance.department,
      'address': instance.address,
      'phone': instance.phone,
      'social_id': instance.socialId,
      'provider': _$AuthProviderEnumMap[instance.provider],
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
      'isVerified': instance.isVerified,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.email: 'email',
  AuthProvider.google: 'google',
  AuthProvider.facebook: 'facebook',
};
