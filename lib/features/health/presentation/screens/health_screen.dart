import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/health_provider.dart';

class HealthScreen extends ConsumerWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final healthStatusAsync = ref.watch(healthStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estado del Backend'),
      ),
      body: Center(
        child: healthStatusAsync.when(
          data: (status) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                status.status == 'ok' ? Icons.check_circle : Icons.error,
                color: status.status == 'ok' ? Colors.green : Colors.red,
                size: 64,
              ),
              const SizedBox(height: 16),
              Text(
                'Estado: ${status.status}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Versión: ${status.version}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (status.message.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  status.message,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ],
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 64,
              ),
              const SizedBox(height: 16),
              Text(
                'Error al conectar con el backend',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                error.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 