import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String userID,
    required String type, // 'ingreso' o 'egreso'
    required String category,
    required double amount,
    required String description,
    required String paymentMethod,
    required DateTime date,
    required bool isRecurring,
    required bool isTaxDeductible,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
} 