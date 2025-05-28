import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_spacing.dart';
import '../providers/health_provider.dart';

class HealthScreen extends ConsumerWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final healthStatusAsync = ref.watch(healthStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Estado del Backend', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Center(
        child: healthStatusAsync.when(
          data: (status) => Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  status.status == 'ok' ? Icons.check_circle : Icons.error,
                  color: status.status == 'ok' ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.error,
                  size: 64,
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Estado: ${status.status}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  'Versión: ${status.version}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                if (status.message.isNotEmpty) ...[
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    status.message,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ],
            ),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 64,
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Error al conectar con el backend',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  error.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 