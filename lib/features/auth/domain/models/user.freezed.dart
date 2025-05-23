// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_type')
  String get documentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_number')
  String get documentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_regime')
  String get taxRegime => throw _privateConstructorUsedError;
  @JsonKey(name: 'person_type')
  String get personType => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_id')
  String? get socialId => throw _privateConstructorUsedError;
  AuthProvider? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'full_name') String fullName,
      String email,
      @JsonKey(name: 'document_type') String documentType,
      @JsonKey(name: 'document_number') String documentNumber,
      @JsonKey(name: 'tax_regime') String taxRegime,
      @JsonKey(name: 'person_type') String personType,
      String city,
      String department,
      String address,
      String phone,
      @JsonKey(name: 'social_id') String? socialId,
      AuthProvider? provider,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      bool isActive,
      bool isVerified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? documentType = null,
    Object? documentNumber = null,
    Object? taxRegime = null,
    Object? personType = null,
    Object? city = null,
    Object? department = null,
    Object? address = null,
    Object? phone = null,
    Object? socialId = freezed,
    Object? provider = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      taxRegime: null == taxRegime
          ? _value.taxRegime
          : taxRegime // ignore: cast_nullable_to_non_nullable
              as String,
      personType: null == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'full_name') String fullName,
      String email,
      @JsonKey(name: 'document_type') String documentType,
      @JsonKey(name: 'document_number') String documentNumber,
      @JsonKey(name: 'tax_regime') String taxRegime,
      @JsonKey(name: 'person_type') String personType,
      String city,
      String department,
      String address,
      String phone,
      @JsonKey(name: 'social_id') String? socialId,
      AuthProvider? provider,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      bool isActive,
      bool isVerified});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? documentType = null,
    Object? documentNumber = null,
    Object? taxRegime = null,
    Object? personType = null,
    Object? city = null,
    Object? department = null,
    Object? address = null,
    Object? phone = null,
    Object? socialId = freezed,
    Object? provider = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
    Object? isVerified = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      taxRegime: null == taxRegime
          ? _value.taxRegime
          : taxRegime // ignore: cast_nullable_to_non_nullable
              as String,
      personType: null == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.email,
      @JsonKey(name: 'document_type') required this.documentType,
      @JsonKey(name: 'document_number') required this.documentNumber,
      @JsonKey(name: 'tax_regime') required this.taxRegime,
      @JsonKey(name: 'person_type') required this.personType,
      required this.city,
      required this.department,
      required this.address,
      required this.phone,
      @JsonKey(name: 'social_id') this.socialId,
      this.provider,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.isActive = false,
      this.isVerified = false});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String email;
  @override
  @JsonKey(name: 'document_type')
  final String documentType;
  @override
  @JsonKey(name: 'document_number')
  final String documentNumber;
  @override
  @JsonKey(name: 'tax_regime')
  final String taxRegime;
  @override
  @JsonKey(name: 'person_type')
  final String personType;
  @override
  final String city;
  @override
  final String department;
  @override
  final String address;
  @override
  final String phone;
  @override
  @JsonKey(name: 'social_id')
  final String? socialId;
  @override
  final AuthProvider? provider;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isVerified;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, email: $email, documentType: $documentType, documentNumber: $documentNumber, taxRegime: $taxRegime, personType: $personType, city: $city, department: $department, address: $address, phone: $phone, socialId: $socialId, provider: $provider, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.taxRegime, taxRegime) ||
                other.taxRegime == taxRegime) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      email,
      documentType,
      documentNumber,
      taxRegime,
      personType,
      city,
      department,
      address,
      phone,
      socialId,
      provider,
      createdAt,
      updatedAt,
      isActive,
      isVerified);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String email,
      @JsonKey(name: 'document_type') required final String documentType,
      @JsonKey(name: 'document_number') required final String documentNumber,
      @JsonKey(name: 'tax_regime') required final String taxRegime,
      @JsonKey(name: 'person_type') required final String personType,
      required final String city,
      required final String department,
      required final String address,
      required final String phone,
      @JsonKey(name: 'social_id') final String? socialId,
      final AuthProvider? provider,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final bool isActive,
      final bool isVerified}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get email;
  @override
  @JsonKey(name: 'document_type')
  String get documentType;
  @override
  @JsonKey(name: 'document_number')
  String get documentNumber;
  @override
  @JsonKey(name: 'tax_regime')
  String get taxRegime;
  @override
  @JsonKey(name: 'person_type')
  String get personType;
  @override
  String get city;
  @override
  String get department;
  @override
  String get address;
  @override
  String get phone;
  @override
  @JsonKey(name: 'social_id')
  String? get socialId;
  @override
  AuthProvider? get provider;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  bool get isActive;
  @override
  bool get isVerified;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
