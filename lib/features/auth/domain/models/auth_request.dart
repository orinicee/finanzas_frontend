import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
@JsonSerializable()
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}

@freezed
@JsonSerializable()
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String email,
    required String password,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'document_type') required String documentType,
    @JsonKey(name: 'document_number') required String documentNumber,
    @JsonKey(name: 'tax_regime') required String taxRegime,
    @JsonKey(name: 'person_type') required String personType,
    required String city,
    required String department,
    required String address,
    required String phone,
    @Default(AuthProvider.email) AuthProvider provider,
    @Default(false) bool acceptTerms,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) => _$RegisterRequestFromJson(json);
} 