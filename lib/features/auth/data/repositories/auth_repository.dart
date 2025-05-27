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
      print('🟡 Respuesta del servidor: $response');
      final authResponse = AuthResponse.fromJson(response as Map<String, dynamic>);
      _apiClient.setAuthToken(authResponse.accessToken);
      return authResponse;
    } catch (e) {
      print('🔴 Error al actualizar el token: $e');
      rethrow;
    }
  }

  Future<AuthResponse> register({
    required String email,
    required String password,
  }) async {
    try {
      if (email.isEmpty || password.isEmpty) {
        throw Exception('Todos los campos son obligatorios');
      }

    final body = {
      'email': email.trim(),
      'password': password,
    };
      final response = await _apiClient.post(
        ApiConfig.register,
        body: body,
      );

      final authResponse = AuthResponse.fromJson(response as Map<String, dynamic>);
      _apiClient.setAuthToken(authResponse.accessToken);
      return authResponse;
    } catch (e) {
      rethrow;
    }
  }

    Future<AuthResponse> fullregister({
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
      if (email.isEmpty || password.isEmpty || fullName.isEmpty || 
          documentType.isEmpty || documentNumber.isEmpty || taxRegime.isEmpty || 
          personType.isEmpty || city.isEmpty || department.isEmpty || 
          address.isEmpty || phone.isEmpty) {
        throw Exception('Todos los campos son obligatorios');
      }

    final body = {
      'email': email.trim(),
      'password': password,
      'full_name': fullName.trim(),
      'document_type': documentType.trim(),
      'document_number': documentNumber.trim(),
      'tax_regime': taxRegime.trim(),
      'person_type': personType.trim(),
      'city': city.trim(),
      'department': department.trim(),
      'address': address.trim(),
      'phone': phone.trim(),
    };

      final response = await _apiClient.post(
        ApiConfig.createUser,
        body: body,
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