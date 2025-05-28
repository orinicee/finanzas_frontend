import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_typography.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../categories/presentation/screens/categories_screen.dart';
import '../../../transactions/presentation/screens/transactions_screen.dart';
import '../../../../core/theme/app_spacing.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyContent;
    if (_selectedIndex == 0) {
      // Pantalla de Inicio (vacía)
      bodyContent = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.lg),
          Padding(
            padding: const EdgeInsets.only(left: AppSpacing.lg),
            child: Consumer(
              builder: (context, ref, _) {
                final themeMode = ref.watch(themeProvider);
                final isDark = themeMode == ThemeMode.dark;
                return IconButton(
                  icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
                  tooltip: isDark ? 'Cambiar a modo claro' : 'Cambiar a modo oscuro',
                  onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
                );
              },
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Bienvenido a Finanzas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ],
      );
    } else if (_selectedIndex == 1) {
      // Pantalla de Transacciones
      bodyContent = const TransactionsScreen();
    } else {
      // Pantalla de Categorías (dashboard/resúmenes)
      bodyContent = const CategoriesScreen();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: bodyContent,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).cardColor,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Transacciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorías',
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
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 8,
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
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.secondary, size: 18),
        onTap: onTap,
      ),
    );
  }
} 