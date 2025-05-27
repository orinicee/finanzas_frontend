import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    String? fullName,
    String? documentType,
    String? documentNumber,
    String? taxRegime,
    String? personType,
    String? city,
    String? department,
    String? address,
    String? phone,
    String? socialId,
    @Default(false) bool isActive,
    @Default(false) bool isVerified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
