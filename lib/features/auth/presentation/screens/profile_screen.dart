import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_spacing.dart';
import '../providers/auth_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final user = authState.value?.user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Perfil de usuario',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                user?.email ?? '',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: AppSpacing.lg),
              ListTile(
                leading: Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                title: Text('Nombre', style: Theme.of(context).textTheme.bodyMedium),
                subtitle: Text(user?.fullName ?? '', style: Theme.of(context).textTheme.bodyLarge),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Theme.of(context).colorScheme.primary),
                title: Text('Correo', style: Theme.of(context).textTheme.bodyMedium),
                subtitle: Text(user?.email ?? '', style: Theme.of(context).textTheme.bodyLarge),
              ),
              const SizedBox(height: AppSpacing.lg),
              ElevatedButton(
                onPressed: () async {
                  await ref.read(authStateProvider.notifier).logout();
                  if (context.mounted) {
                    Navigator.pushReplacementNamed(context, '/login');
                  }
                },
                child: Text('Cerrar sesión', style: Theme.of(context).textTheme.labelLarge),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 