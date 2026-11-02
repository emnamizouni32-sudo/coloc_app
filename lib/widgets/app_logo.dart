import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({super.key, this.size = 90});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        width: size,
        height: size,
        errorBuilder: (_, __, ___) =>
            Icon(Icons.home_rounded, size: size, color: AppColors.primary),
      ),
    );
  }
}