import 'package:flutter/material.dart';
import 'package:mobile_unapps/constant/theme/text_constant.dart';

class MembershipCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String speed;
  final String planType;
  final String duration;
  final bool isMembership;

  const MembershipCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.speed,
    required this.planType,
    required this.duration,
    required this.isMembership,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -5,
            bottom: -10,
            child: Image.asset(
              'assets/images/circless.png', 
              fit: BoxFit.fitWidth,
              width: 185,
              height: 200,
              color: Colors.black,
              errorBuilder: (context, error, stackTrace) {
                // Fallback jika image belum ada
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 160,
              height: 40,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2E5CB8),
                    Color(0xFF4169E1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(40),
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                planType,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          
          // Logo at top right (use your image asset here)
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset(
              'assets/images/uninet_logo.png',
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF5B9BD5),
                      width: 2, 
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'UNINET',
                      style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E5CB8),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Main content
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Left section - Title and badge
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const SizedBox(height: 6),
                      if (isMembership)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFF7FFFD4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                        )
                      else
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                          ),
                        ),
                    ],
                  ),
                ),
                
                // Center section - Speed circle
                Expanded(
                  flex: 2,
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Image.asset(
                            'assets/images/Frame dio.png',
                            width: 90,
                            height: 200,
                            fit: BoxFit.contain,
                            
                            
                          ),
                          Positioned(
                            left: -40,
                            top: 30,
                            right: 16,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  speed,
                                  style: TextConfig.megaText
                                ),
                                const SizedBox(height: 2),
                                const Text(
                                  'Mbps',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7F8C8D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E5CB8),
                      ),
                    ),
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