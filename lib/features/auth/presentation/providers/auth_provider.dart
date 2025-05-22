import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/auth_repository.dart';
import '../../domain/models/auth_request.dart';
import '../../domain/models/auth_response.dart';

final authStateProvider = StateNotifierProvider<AuthNotifier, AsyncValue<AuthResponse?>>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository);
});

class AuthNotifier extends StateNotifier<AsyncValue<AuthResponse?>> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> login(LoginRequest request) async {
    state = const AsyncValue.loading();
    try {
      final response = await _repository.login(request);
      state = AsyncValue.data(response);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> register(RegisterRequest request) async {
    state = const AsyncValue.loading();
    try {
      final response = await _repository.register(request);
      state = AsyncValue.data(response);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> logout() async {
    try {
      await _repository.logout();
      state = const AsyncValue.data(null);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> refreshToken(String refreshToken) async {
    try {
      final response = await _repository.refreshToken(refreshToken);
      state = AsyncValue.data(response);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> deleteAccount(String password) async {
    try {
      await _repository.deleteAccount(password);
      state = const AsyncValue.data(null);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
} 