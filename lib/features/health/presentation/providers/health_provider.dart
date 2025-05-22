import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/health_repository.dart';
import '../../domain/models/health_status.dart';

final healthStatusProvider = FutureProvider<HealthStatus>((ref) async {
  final repository = ref.watch(healthRepositoryProvider);
  return repository.checkHealth();
}); 