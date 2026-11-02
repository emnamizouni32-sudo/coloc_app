import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class LinkText extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onTap;
  const LinkText({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('$text ', style: const TextStyle(fontSize: 11)),
        GestureDetector(
          onTap: onTap,
          child: Text(linkText,
              style: const TextStyle(fontSize: 11, color: AppColors.link)),
        ),
      ],
    );
  }
}