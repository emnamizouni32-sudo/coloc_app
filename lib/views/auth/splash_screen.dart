import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_logo.dart';
import '../../widgets/auth_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Widget _dot(bool active) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active ? AppColors.primary : AppColors.dotInactive,
        ),
      );

  @override
  Widget build(BuildContext context) {
    void goLogin() => Navigator.pushReplacementNamed(context, '/login');
    return AuthLayout(
      children: [
        const SizedBox(height: 40),
        const AppLogo(size: 100),
        const SizedBox(height: 16),
        const Text('Bienvenue',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(height: 14),
        const Text(
          'Tâches, dépenses, chat et documents de ta coloc\nau même endroit',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_dot(true), _dot(false), _dot(false)],
        ),
        const Spacer(),
        AppButton(label: 'Suivant', onPressed: goLogin),
        const SizedBox(height: 12),
        AppButton(label: 'Passer', secondary: true, onPressed: goLogin),
        const SizedBox(height: 24),
      ],
    );
  }
}