import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/auth_repository.dart';
import '../../domain/models/auth_response.dart';

final authStateProvider = StateNotifierProvider<AuthNotifier, AsyncValue<AuthResponse?>>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
});

class AuthNotifier extends StateNotifier<AsyncValue<AuthResponse?>> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    try {
      final response = await _repository.login(email, password);
      state = AsyncValue.data(response);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
  Future<void> fullregister({
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
    state = const AsyncValue.loading();
    try {
      final response = await _repository.fullregister(
        fullName: fullName,
        email: email,
        password: password,
        documentType: documentType,
        documentNumber: documentNumber,
        taxRegime: taxRegime,
        personType: personType,
        city: city,
        department: department,
        address: address,
        phone: phone,
      );
      state = AsyncValue.data(response);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  Future<void> register({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    try {
      final response = await _repository.register(
        email: email,
        password: password,
      );
      state = AsyncValue.data(response);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  Future<void> deleteAccount(String password) async {
    state = const AsyncValue.loading();
    try {
      await _repository.deleteAccount(password);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await _repository.logout();
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
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
} 