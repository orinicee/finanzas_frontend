import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_spacing.dart';

class TaxReportScreen extends StatelessWidget {
  const TaxReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reporte de impuestos', style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Reporte fiscal', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSpacing.md),
            Expanded(
              child: Center(
                child: Text('Aquí podrás generar y ver tu reporte de impuestos.',
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