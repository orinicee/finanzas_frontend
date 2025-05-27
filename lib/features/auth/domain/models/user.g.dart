// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String?,
      documentType: json['documentType'] as String?,
      documentNumber: json['documentNumber'] as String?,
      taxRegime: json['taxRegime'] as String?,
      personType: json['personType'] as String?,
      city: json['city'] as String?,
      department: json['department'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      socialId: json['socialId'] as String?,
      isActive: json['isActive'] as bool? ?? false,
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'documentType': instance.documentType,
      'documentNumber': instance.documentNumber,
      'taxRegime': instance.taxRegime,
      'personType': instance.personType,
      'city': instance.city,
      'department': instance.department,
      'address': instance.address,
      'phone': instance.phone,
      'socialId': instance.socialId,
      'isActive': instance.isActive,
      'isVerified': instance.isVerified,
    };
