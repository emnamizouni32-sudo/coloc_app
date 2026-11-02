import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_logo.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/auth_layout.dart';
import '../../widgets/link_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      children: [
        const SizedBox(height: 40),
        const AppLogo(size: 100),
        const SizedBox(height: 16),
        const Text("Coloc'App",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 14),
        const Text('Vivre ensemble, simplement',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        const SizedBox(height: 36),
        const AppTextField(hint: 'Email'),
        const SizedBox(height: 12),
        const AppTextField(hint: 'Mot de passe', obscure: true),
        const Spacer(),
        AppButton(label: 'Se connecter', onPressed: () {}),
        const SizedBox(height: 12),
        AppButton(
            label: 'Continuer avec Google', secondary: true, onPressed: () {}),
        const SizedBox(height: 16),
        LinkText(
          text: 'Pas de compte ?',
          linkText: 'Créer un compte',
          onTap: () => Navigator.pushNamed(context, '/register'),
        ),
        const SizedBox(height: 8),
        LinkText(
          text: 'Mot de passe oublié ?',
          linkText: 'Réinitialiser',
          onTap: () => Navigator.pushNamed(context, '/forgot'),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}