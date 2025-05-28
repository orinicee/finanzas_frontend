import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/transaction_repository.dart';
import 'package:flutter_application_1/core/network/api_client_provider.dart';

final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return TransactionRepository(apiClient);
}); 