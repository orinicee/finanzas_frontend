import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum AuthProvider {
  @JsonValue('email')
  email,
  @JsonValue('google')
  google,
  @JsonValue('facebook')
  facebook
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    @JsonKey(name: 'document_type') required String documentType,
    @JsonKey(name: 'document_number') required String documentNumber,
    @JsonKey(name: 'tax_regime') required String taxRegime,
    @JsonKey(name: 'person_type') required String personType,
    required String city,
    required String department,
    required String address,
    required String phone,
    @JsonKey(name: 'social_id') String? socialId,
    AuthProvider? provider,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @Default(false) bool isActive,
    @Default(false) bool isVerified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
} 