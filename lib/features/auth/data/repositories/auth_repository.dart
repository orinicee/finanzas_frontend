import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_client_provider.dart';
import '../../../../core/config/api_config.dart';
import '../../domain/models/auth_response.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthRepository(apiClient);
});

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  Future<AuthResponse> login(String email, String password) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.login,
        body: {
          'email': email,
          'password': password,
        },
      );
      
      final authResponse = AuthResponse.fromJson(response as Map<String, dynamic>);
      _apiClient.setAuthToken(authResponse.accessToken);
      return authResponse;
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthResponse> register({
    required String email,
    required String password,
    required String fullName,
    required String documentType,
    required String documentNumber,
    required String taxRegime,
    required String personType,
    required String city,
    required String department,
    required String address,
    required String phone,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.register,
        body: {
          'email': email,
          'password': password,
          'full_name': fullName,
          'document_type': documentType,
          'document_number': documentNumber,
          'tax_regime': taxRegime,
          'person_type': personType,
          'city': city,
          'department': department,
          'address': address,
          'phone': phone,
        },
      );
      
      final authResponse = AuthResponse.fromJson(response as Map<String, dynamic>);
      _apiClient.setAuthToken(authResponse.accessToken);
      return authResponse;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _apiClient.post(ApiConfig.logout);
      _apiClient.clearAuthToken();
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthResponse> refreshToken(String refreshToken) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.refreshToken,
        body: {'refresh_token': refreshToken},
      );
      
      final authResponse = AuthResponse.fromJson(response as Map<String, dynamic>);
      _apiClient.setAuthToken(authResponse.accessToken);
      return authResponse;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteAccount(String password) async {
    try {
      await _apiClient.delete(
        ApiConfig.socialAuth,
        body: {'password': password},
      );
    } catch (e) {
      rethrow;
    }
  }
} 