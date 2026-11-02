import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/auth_layout.dart';
import '../../widgets/link_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      children: [
        const SizedBox(height: 40),
        const Text('Créer un compte',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Rejoins la vie en coloc',
            style: TextStyle(fontSize: 11, color: AppColors.link)),
        const SizedBox(height: 24),
        const AppTextField(hint: 'Nom complet'),
        const SizedBox(height: 12),
        const AppTextField(hint: 'Email'),
        const SizedBox(height: 12),
        const AppTextField(hint: 'Mot de passe', obscure: true),
        const SizedBox(height: 12),
        const AppTextField(hint: 'Confirmer le mot de passe', obscure: true),
        const SizedBox(height: 20),
        AppButton(label: "S'inscrire", onPressed: () {}),
        const Spacer(),
        LinkText(
          text: 'Déjà un compte ?',
          linkText: 'Se connecter',
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}