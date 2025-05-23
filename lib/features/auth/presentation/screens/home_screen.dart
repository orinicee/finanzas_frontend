import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            padding: const EdgeInsets.only(top: 60, bottom: 32),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: CircleAvatar(
                        backgroundColor: AppColors.accent,
                        child: const Icon(Icons.person, color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
                Text(
                  'FINANZAS',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.card,
                        letterSpacing: 2,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                _HomeCard(
                  icon: Icons.calendar_month,
                  title: 'Resumen mensual',
                  subtitle: 'Vista general de ingresos y gastos del mes',
                ),
                const SizedBox(height: 16),
                _HomeCard(
                  icon: Icons.pie_chart,
                  title: 'Gasto por categoría',
                  subtitle: 'Desglose de gastos por categoría',
                ),
                const SizedBox(height: 16),
                _HomeCard(
                  icon: Icons.account_balance_wallet,
                  title: 'Resumen de balance',
                  subtitle: 'Resumen de ingresos, gastos y balance',
                ),
                const SizedBox(height: 16),
                _HomeCard(
                  icon: Icons.receipt_long,
                  title: 'Reporte de impuestos',
                  subtitle: 'Genera un reporte para propósitos fiscales',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.card,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Categorías',
          ),
        ],
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _HomeCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withOpacity(0.1),
          child: Icon(icon, color: AppColors.primary),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.textSecondary, size: 18),
      ),
    );
  }
} 