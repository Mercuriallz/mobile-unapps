import 'package:flutter/material.dart';
import 'package:mobile_unapps/constant/theme/color_constant.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? color;
  final double size;
  final double strokeWidth;

  const LoadingIndicatorWidget({
    super.key,
    this.title,
    this.subtitle,
    this.color,
    this.size = 60,
    this.strokeWidth = 4,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                strokeWidth: strokeWidth,
                valueColor: AlwaysStoppedAnimation<Color>(color ?? ColorConstant.primaryBlue),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title ?? 'Loading...',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF64748B),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle ?? 'Please wait a moment',
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF94A3B8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
