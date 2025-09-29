
import 'package:flutter/material.dart';
import 'package:mobile_unapps/constant/on_boarding/on_boarding_model.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;
  final bool isSmallScreen;

  const OnboardingPage({
    super.key,
    required this.data,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.05),
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: size.height * 0.45,
                  maxWidth: size.width * 0.85,
                ),
                child: Image.asset(
                  data.svgAsset,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.image_not_supported,
                      size: 100,
                      color: Color(0xFFBDBDBD),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.04),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  data.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 20 : 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF263238),
                    height: 1.3,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  data.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 14 : 16,
                    color: const Color(0xFF757575),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
