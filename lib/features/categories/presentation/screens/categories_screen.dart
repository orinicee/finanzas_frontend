import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/app_spacing.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          _HomeCard(
            title: 'Resumen mensual',
            subtitle: 'Visualiza tus ingresos y gastos del mes',
            icon: Icons.calendar_month,
            onTap: () => Navigator.pushNamed(context, '/monthly-summary'),
          ),
          const SizedBox(height: AppSpacing.md),
          _HomeCard(
            title: 'Gastos por categoría',
            subtitle: 'Analiza tus gastos agrupados',
            icon: Icons.pie_chart,
            onTap: () => Navigator.pushNamed(context, '/category-expenses'),
          ),
          const SizedBox(height: AppSpacing.md),
          _HomeCard(
            title: 'Resumen de balance',
            subtitle: 'Consulta tu balance general',
            icon: Icons.account_balance_wallet,
            onTap: () => Navigator.pushNamed(context, '/balance-summary'),
          ),
          const SizedBox(height: AppSpacing.md),
          _HomeCard(
            title: 'Reporte de impuestos',
            subtitle: 'Genera tu reporte fiscal',
            icon: Icons.receipt_long,
            onTap: () => Navigator.pushNamed(context, '/tax-report'),
          ),
        ],
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _HomeCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return Card(
      color: Theme.of(context).cardColor,
      elevation: isLight ? 8 : 2,
      shadowColor: isLight ? Colors.black12 : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: Icon(icon, color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isLight ? Colors.grey[700] : Theme.of(context).colorScheme.onBackground,
              ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: isLight ? Colors.grey[400] : Theme.of(context).colorScheme.secondary, size: 18),
        onTap: onTap,
      ),
    );
  }
} 