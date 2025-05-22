import 'package:flutter_application_1/core/config/api_config.dart';
import 'package:flutter_application_1/core/network/api_client.dart';
import 'package:flutter_application_1/core/network/api_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/health_status.dart';

final healthRepositoryProvider = Provider<HealthRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return HealthRepository(apiClient);
});

class HealthRepository {
  final ApiClient _apiClient;

  HealthRepository(this._apiClient);

  Future<HealthStatus> checkHealth() async {
    final response = await _apiClient.get(ApiConfig.health);
    return HealthStatus.fromJson(response as Map<String, dynamic>);
  }
} 