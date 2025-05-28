import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_spacing.dart';

class MonthlySummaryScreen extends StatelessWidget {
  const MonthlySummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumen mensual', style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tus movimientos del mes', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSpacing.md),
            Expanded(
              child: Center(
                child: Text('Aquí se mostrarán los ingresos y gastos mensuales.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 