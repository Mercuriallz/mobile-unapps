
import 'package:flutter/material.dart';

class MembershipCard extends StatelessWidget {
  final String planName;
  final String speed;
  final String unit;
  final String price;
  final Color color;
  final Size size;
  final bool isSmallScreen;

  const MembershipCard({
    super.key,
    required this.planName,
    required this.speed,
    required this.unit,
    required this.price,
    required this.color,
    required this.size,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * 0.04),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Uninet",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 11 : 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: size.height * 0.004),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.025,
                        vertical: size.height * 0.004,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00E5CC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Membership",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isSmallScreen ? 9 : 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      speed,
                      style: TextStyle(
                        fontSize: isSmallScreen ? 36 : 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87,
                        height: 1,
                      ),
                    ),
                    Text(
                      unit,
                      style: TextStyle(
                        fontSize: isSmallScreen ? 13 : 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.all(size.width * 0.02),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "UNINET",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 9 : 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: size.height * 0.002),
                      Container(
                        width: size.width * 0.06,
                        height: size.width * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
              vertical: size.height * 0.012,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  planName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 15 : 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 13 : 14,
                    fontWeight: FontWeight.w500,
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