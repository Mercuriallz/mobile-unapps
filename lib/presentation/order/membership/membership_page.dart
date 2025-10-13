import 'package:flutter/material.dart';
import 'package:mobile_unapps/presentation/order/membership/membership_card.dart';
import 'package:mobile_unapps/widget/background_image.dart';


class UninetMembershipPage extends StatelessWidget {
  const UninetMembershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;
    
    return Scaffold(
      body: BackgroundImage(
        imagePath: "assets/images/backgrounds.png",
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                      vertical: size.height * 0.015,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        SizedBox(width: size.width * 0.02),
                        Text(
                          "Uninet Membership",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isSmallScreen ? 18 : 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.045),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.02,
                              top: size.height * 0.01,
                              bottom: size.height * 0.015,
                            ),
                            child: Text(
                              "Pilih Layanan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: isSmallScreen ? 14 : 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          MembershipCard(
                            planName: "Besic",
                            speed: "30",
                            unit: "Mbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planName: "Bronze",
                            speed: "50",
                            unit: "Mbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planName: "Silver",
                            speed: "100",
                            unit: "Mbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planName: "Gold",
                            speed: "200",
                            unit: "Mbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planName: "Titanium",
                            speed: "500",
                            unit: "Mbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planName: "Platinum",
                            speed: "1",
                            unit: "Gbps",
                            price: "1 Bulan",
                            color: const Color(0xFF2E5BFF),
                            size: size,
                            isSmallScreen: isSmallScreen,
                          ),
                          SizedBox(height: size.height * 0.025),
                          Container(
                            padding: EdgeInsets.all(size.width * 0.04),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(size.width * 0.025),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF00E5CC),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.card_membership,
                                    color: Colors.white,
                                    size: isSmallScreen ? 20 : 24,
                                  ),
                                ),
                                SizedBox(width: size.width * 0.03),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Uninet Membership",
                                        style: TextStyle(
                                          fontSize: isSmallScreen ? 13 : 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.005),
                                      Text(
                                        "Kami dengan senang hati memperkenalkan program membership Uninet terbaru yang dirancang khusus untuk memberikan nilai",
                                        style: TextStyle(
                                          fontSize: isSmallScreen ? 11 : 12,
                                          color: Colors.black54,
                                          height: 1.4,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Selengkapnya",
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 11 : 12,
                                            color: const Color(0xFF00E5CC),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
