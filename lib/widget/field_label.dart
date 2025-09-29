import 'package:flutter/material.dart';
import 'package:mobile_unapps/constant/theme/text_constant.dart';

class FieldLabel extends StatelessWidget {
  final String label;
  final bool isRequired;

  const FieldLabel({
    super.key,
    required this.label,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style:  TextConfig.standardText,
        children: [
          if (isRequired)
            const TextSpan(
              text: " *",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }
}
