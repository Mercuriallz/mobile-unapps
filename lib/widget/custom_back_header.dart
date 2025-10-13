import 'package:flutter/material.dart';

class CustomBackHeader extends StatelessWidget {
  final String? title;
  final VoidCallback? onBack;
  final Color? color;
  final TextStyle? textStyle; 

  const CustomBackHeader({super.key, this.title, this.onBack, this.color, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onBack ?? () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, size: 20, color: color),
        ),
        const SizedBox(width: 8),
        Text(title ?? "", style: textStyle),
      ],
    );
  }
}
