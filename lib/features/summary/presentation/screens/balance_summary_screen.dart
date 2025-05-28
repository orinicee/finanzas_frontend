import 'package:flutter/material.dart';
import '../../../../core/theme/app_spacing.dart';

class BalanceSummaryScreen extends StatelessWidget {
  const BalanceSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumen de balance', style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Balance general', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSpacing.md),
            Expanded(
              child: Center(
                child: Text('Aquí se mostrará el balance general de tus finanzas.',
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