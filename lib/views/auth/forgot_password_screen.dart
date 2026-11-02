import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/auth_layout.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      children: [
        const SizedBox(height: 40),
        const Text('Mot de passe oublié',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text("Entre ton email, on t'envoie un lien pour le changer.",
            style: TextStyle(fontSize: 11, color: AppColors.link)),
        const SizedBox(height: 24),
        const AppTextField(hint: 'Email'),
        const SizedBox(height: 16),
        AppButton(label: 'Envoyer le lien', onPressed: () {}),
        const Spacer(),
        Center(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Text('Retour à la connexion',
                style: TextStyle(fontSize: 11)),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}