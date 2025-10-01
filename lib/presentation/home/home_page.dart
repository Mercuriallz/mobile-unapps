import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentBannerPage = 0;
  final PageController _bannerController = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/backgrounds.png",
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                      vertical: 12,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFE0E0E0),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              color: Color(0xFF757575),
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Andrew",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF263238),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF757575),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Customer",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.notifications_outlined,
                              color: Color(0xFF263238),
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.28,
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView(
                            controller: _bannerController,
                            onPageChanged: (index) {
                              setState(() {
                                _currentBannerPage = index;
                              });
                            },
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    "assets/images/banner1.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    "assets/images/banner2.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentBannerPage == index
                                    ? Colors.white
                                    : Colors.white.withAlpha(128),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Pemesanan clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.receipt_long_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Pemesanan",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Tiket clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.confirmation_num_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Tiket",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Live Chat clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.email_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Live Chat",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("WhatsApp clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.chat_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "WhatsApp",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Speed Test clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.speed_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Speed Test",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("FAQ clicked")),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.help_outline,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "FAQ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Dokumentasi clicked"),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: isSmallScreen ? 56 : 64,
                                    height: isSmallScreen ? 56 : 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        isSmallScreen ? 28 : 32,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.description_outlined,
                                      size: isSmallScreen ? 28 : 32,
                                      color: const Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Dokumentasi",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 11 : 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 72),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                    ),
                    child: const Text(
                      "Tagihan Terdekat",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                       
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                child: Image.asset(
                                  "assets/images/spark.png",
                                  fit: BoxFit.fill,
                                  height: 180,
                                  width: double.infinity,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "UNINET",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                      fontSize: 72,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    "Mbps",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const Divider(height: 1, color: Colors.grey),

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Periode Layanan",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        "17 Mei 2024 - 17 Juni 2024",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[700],
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: const Text(
                                          "Besic Membership",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 20),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 7,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: const Text(
                                        "Aktif",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    _buildInfoRow(
                                      "Tanggal Tagihan :",
                                      "17 Juni 2024",
                                    ),
                                    const SizedBox(height: 8),
                                    _buildInfoRow(
                                      "Jatuh tempo",
                                      ": 19 Juni 2024",
                                    ),
                                    const SizedBox(height: 8),
                                    _buildInfoRow(
                                      "Jumlah Total",
                                      ": Rp. 250.000",
                                      isBold: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Layananku",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            "Lihat",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Uninet",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF00BFA5),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text(
                                      "Membership",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "UNINET",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFE0E0E0),
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "100",
                                style: TextStyle(
                                  fontSize: 72,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263238),
                                  height: 0.9,
                                ),
                              ),
                              SizedBox(width: 8),
                              Padding(
                                padding: EdgeInsets.only(bottom: 14),
                                child: Text(
                                  "Mbps",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            decoration: BoxDecoration(
                              color: const Color(0xFF2196F3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  "Silver",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "1 Bulan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: TextStyle(fontSize: 14, color: Colors.black87)),
        const SizedBox(width: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ), 
      ],
    );
  }

  @override
  void dispose() {
    _bannerController.dispose();
    super.dispose();
  }
}
