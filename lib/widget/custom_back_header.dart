import 'package:flutter/material.dart';
import 'package:mobile_unapps/constant/theme/text_constant.dart';

class CustomBackHeader extends StatelessWidget {
  final String? title;
  final VoidCallback? onBack;
  final Color? color;

  const CustomBackHeader({super.key, this.title, this.onBack, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onBack ?? () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, size: 20, color: color),
        ),
        const SizedBox(width: 8),
        Text(title ?? "", style: TextConfig.largeText),
      ],
    );
  }
}
