// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      userID: json['userID'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String,
      paymentMethod: json['paymentMethod'] as String,
      date: DateTime.parse(json['date'] as String),
      isRecurring: json['isRecurring'] as bool,
      isTaxDeductible: json['isTaxDeductible'] as bool,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'type': instance.type,
      'category': instance.category,
      'amount': instance.amount,
      'description': instance.description,
      'paymentMethod': instance.paymentMethod,
      'date': instance.date.toIso8601String(),
      'isRecurring': instance.isRecurring,
      'isTaxDeductible': instance.isTaxDeductible,
    };
