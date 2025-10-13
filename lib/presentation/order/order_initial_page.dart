import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/presentation/order/order_item.dart';
import 'package:mobile_unapps/widget/background_image.dart';
import 'package:mobile_unapps/widget/custom_back_header.dart';

class OrderInitialPage extends StatelessWidget {
  const OrderInitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.05;

    return Scaffold(
      body: BackgroundImage(
        imagePath: 'assets/images/backgrounds.png',
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Bar
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: padding,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        CustomBackHeader(
                          title: "Order",
                          onBack: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Order",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Produk Unggulan
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: const Text(
                      "Produk Unggulan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final itemWidth = (constraints.maxWidth - 48) / 4;
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              
                                ProductItem(
                                  label: "Uninet\nMembership",
                                  icon: Icons.card_membership,
                                  size: itemWidth,
                                  onTap: () {
                                    context.push("/order/membership");
                                  },
                                ),
                               
                                ProductItem(
                                  label: "Uninet\nBroadband",
                                  icon: Icons.router,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                ),
                                
                                ProductItem(
                                  label: "Dedicate\nInternet",
                                  icon: Icons.devices,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                ),
                               
                                ProductItem(
                                  label: "Cloud\nService",
                                  icon: Icons.cloud,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              
                                ProductItem(
                                  label: "IT\nServices",
                                  icon: Icons.laptop_mac,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                ),
                                SizedBox(
                                  width:
                                      (constraints.maxWidth - itemWidth * 4) /
                                      4,
                                ),
                              
                                ProductItem(
                                  label: "Cyber\nSecurity",
                                  icon: Icons.security,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                ),
                                SizedBox(
                                  width:
                                      (constraints.maxWidth - itemWidth * 4) /
                                      4,
                                ),
                               
                                ProductItem(
                                  label: "Colacation\nData Center",
                                  icon: Icons.storage,
                                  size: itemWidth,
                                  onTap: () {
                                  },
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Daftar Pengajuan Section
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: padding),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0x33FFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withAlpha(77),
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Daftar Pengajuan Pemasangan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Order Card
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                // Icon
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE3F2FD),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.router,
                                    color: Color(0xFF1976D2),
                                    size: 28,
                                  ),
                                ),
                                const SizedBox(width: 12),

                                // Text Content
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Uninet Broadband 30 Mbps",
                                        style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "Lorem ipsum Lorem ipsum is placeholder",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 11,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        "2024-02-02",
                                        style: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Status Badge
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF8E1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    "Proses",
                                    style: TextStyle(
                                      color: Color(0xFFF57C00),
                                      fontSize: 12,
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
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 }
