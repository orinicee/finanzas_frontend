import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../domain/models/transaction.dart';
import '../../domain/providers/transaction_provider.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class TransactionsScreen extends ConsumerStatefulWidget {
  const TransactionsScreen({super.key});

  @override
  ConsumerState<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends ConsumerState<TransactionsScreen> {
  bool isIngreso = true;
  String selectedCategory = 'salary';
  String selectedPaymentMethod = 'transfer';
  DateTime selectedDate = DateTime.now();
  bool isRecurring = false;
  bool isTaxDeductible = false;

  final TextEditingController _montoController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();

  final List<String> categories = [
    'salary', 'groceries', 'transport', 'entertainment', 'health', 'education', 'other'
  ];
  final List<String> paymentMethods = [
    'transfer', 'cash', 'card', 'other'
  ];

  @override
  void dispose() {
    _montoController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    final user = ref.read(authStateProvider).value?.user;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuario no autenticado')),
      );
      return;
    }
    final amount = double.tryParse(_montoController.text);
    if (amount == null || amount <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Monto inválido')),
      );
      return;
    }
    if (_descripcionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('La descripción es obligatoria')),
      );
      return;
    }
    final transaction = Transaction(
      userID: user.id,
      type: isIngreso ? 'ingreso' : 'egreso',
      category: selectedCategory,
      amount: amount,
      description: _descripcionController.text,
      paymentMethod: selectedPaymentMethod,
      date: selectedDate,
      isRecurring: isRecurring,
      isTaxDeductible: isTaxDeductible,
    );
    try {
      await ref.read(transactionRepositoryProvider).createTransaction(transaction);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Transacción registrada con éxito')),
      );
      _montoController.clear();
      _descripcionController.clear();
      setState(() {
        selectedCategory = 'salary';
        selectedPaymentMethod = 'transfer';
        selectedDate = DateTime.now();
        isRecurring = false;
        isTaxDeductible = false;
        isIngreso = true;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al registrar: $e')),
      );
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      locale: const Locale('es'),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transacciones', style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Switch Ingresos/Egresos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ingresos', style: TextStyle(
                    color: isIngreso ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                    fontWeight: isIngreso ? FontWeight.bold : FontWeight.normal,
                  )),
                  Switch(
                    value: isIngreso,
                    activeColor: Theme.of(context).colorScheme.primary,
                    onChanged: (value) {
                      setState(() {
                        isIngreso = value;
                      });
                    },
                  ),
                  Text('Egresos', style: TextStyle(
                    color: !isIngreso ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                    fontWeight: !isIngreso ? FontWeight.bold : FontWeight.normal,
                  )),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              // Categoría
              DropdownButtonFormField<String>(
                value: selectedCategory,
                dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  labelText: 'Categoría',
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: const Icon(Icons.category),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: categories.map((cat) => DropdownMenuItem(
                  value: cat,
                  child: Text(cat, style: Theme.of(context).textTheme.bodyLarge),
                )).toList(),
                onChanged: (value) {
                  if (value != null) setState(() => selectedCategory = value);
                },
              ),
              const SizedBox(height: AppSpacing.md),
              // Monto
              TextField(
                controller: _montoController,
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  labelText: 'Monto',
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: const Icon(Icons.attach_money),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              // Descripción
              TextField(
                controller: _descripcionController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  labelText: 'Descripción',
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: const Icon(Icons.description),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              // Método de pago
              DropdownButtonFormField<String>(
                value: selectedPaymentMethod,
                dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  labelText: 'Método de pago',
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: const Icon(Icons.payment),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: paymentMethods.map((pm) => DropdownMenuItem(
                  value: pm,
                  child: Text(pm, style: Theme.of(context).textTheme.bodyLarge),
                )).toList(),
                onChanged: (value) {
                  if (value != null) setState(() => selectedPaymentMethod = value);
                },
              ),
              const SizedBox(height: AppSpacing.sm),
              // Fecha
              Row(
                children: [
                  Icon(Icons.date_range, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(width: AppSpacing.sm),
                  Text('Fecha: ${selectedDate.toLocal().toString().split(' ')[0]}', style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(width: AppSpacing.sm),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Cambiar'),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              // Switches
              Row(
                children: [
                  const Text('Recurrente'),
                  Switch(
                    value: isRecurring,
                    onChanged: (value) {
                      setState(() => isRecurring = value);
                    },
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  const Text('Deducible de impuestos'),
                  Switch(
                    value: isTaxDeductible,
                    onChanged: (value) {
                      setState(() => isTaxDeductible = value);
                    },
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Center(
                child: ElevatedButton(
                  onPressed: _handleSubmit,
                  child: const Text('Registrar transacción'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 