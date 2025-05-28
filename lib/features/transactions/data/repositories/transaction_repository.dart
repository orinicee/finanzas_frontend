import 'package:flutter_application_1/core/network/api_client.dart';
import 'package:flutter_application_1/core/config/api_config.dart';
import '../../domain/models/transaction.dart';

class TransactionRepository {
  final ApiClient apiClient;
  TransactionRepository(this.apiClient);

  Future<void> createTransaction(Transaction transaction) async {
    final body = transaction.toJson();
    await apiClient.post(ApiConfig.createTransaction, body: body);
  }
} 