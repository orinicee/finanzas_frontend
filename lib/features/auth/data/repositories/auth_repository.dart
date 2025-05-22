import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/api_client.dart';
import '../../../core/network/api_client_provider.dart';
import '../../../core/config/api_config.dart';
import '../../domain/models/auth_request.dart';
import '../../domain/models/auth_response.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthRepository(apiClient);
});

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  Future<AuthResponse> login(LoginRequest request) async {
    final response = await _apiClient.post(
      ApiConfig.login,
      body: request.toJson(),
    );
    return AuthResponse.fromJson(response as Map<String, dynamic>);
  }

  Future<AuthResponse> register(RegisterRequest request) async {
    final response = await _apiClient.post(
      ApiConfig.register,
      body: request.toJson(),
    );
    return AuthResponse.fromJson(response as Map<String, dynamic>);
  }

  Future<void> logout() async {
    await _apiClient.post(ApiConfig.logout);
  }

  Future<AuthResponse> refreshToken(String refreshToken) async {
    final response = await _apiClient.post(
      ApiConfig.refreshToken,
      body: {'refresh_token': refreshToken},
    );
    return AuthResponse.fromJson(response as Map<String, dynamic>);
  }

  Future<void> deleteAccount(String password) async {
    await _apiClient.delete(
      ApiConfig.deleteAccount,
      body: {'password': password},
    );
  }
} 