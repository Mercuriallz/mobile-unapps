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
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.045,
                      ),
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
                            planType: "Besic",
                            speed: "30",
                            title: "Mbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planType: "Bronze",
                            speed: "50",
                            title: "Mbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planType: "Silver",
                            speed: "100",
                            title: "Mbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planType: "Gold",
                            speed: "200",
                            title: "Mbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planType: "Titanium",
                            speed: "500",
                            title: "Mbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
                          ),
                          SizedBox(height: size.height * 0.015),
                          MembershipCard(
                            planType: "Platinum",
                            speed: "1",
                            title: "Gbps",
                            duration: "1 Bulan",
                            isMembership: false,
                            subtitle: "MBPS",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
