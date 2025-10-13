import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final double size;
  final VoidCallback onTap;

  const ProductItem({
    super.key,
    required this.label,
    required this.icon,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: size * 0.85,
              height: size * 0.85,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: const Color(0xFF1976D2),
                size: size * 0.4,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
