import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/constant/on_boarding/on_boarding_model.dart';
import 'package:mobile_unapps/constant/on_boarding/on_boarding_page.dart';
import 'package:mobile_unapps/helper/storage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingData> _pages = [
    OnboardingData(
      title: "Uninet Sebagai Pelopor pertama Internet di indonesia",
      description:
          "Bergabunglah dengan Uninet dan nikmati layanan internet terbaik yang dapat diandalkan setiap saat",
      svgAsset: "assets/images/onboarding1.png",
    ),
    OnboardingData(
      title: "Uninet memiliki Service lengkap untuk kebutuhan Internet",
      description:
          "Uninet menawarkan berbagai keunggulan layanan yang memenuhi semua kebutuhan Anda, dari kecepatan tinggi hingga dukungan pelanggan yang responsif.",
      svgAsset: "assets/images/onboarding2.png",
    ),
    OnboardingData(
      title: "Uninet Membership banyak keuntungan yang kamu dapatkan",
      description:
          "Dapatkan keuntungan lebih dengan menjadi member Uninet - nikmati berbagai hadiah menarik dan manfaat eksklusif!",
      svgAsset: "assets/images/onboarding3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    data: _pages[index],
                    isSmallScreen: isSmallScreen,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
                vertical: size.height * 0.03,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: _currentPage == index ? 32 : 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? const Color(0xFF2196F3)
                              : const Color(0xFFBDBDBD),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  SizedBox(
                    width: double.infinity,
                    height: isSmallScreen ? 48 : 56,
                    child: ElevatedButton(
                      onPressed: () {
                        final secureStorage = SecureStorageService();

                        if (_currentPage < _pages.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Selamat datang di Uninet!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                          secureStorage.writeBool('onboardingCompleted', true);

                          context.go("/login");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2196F3),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: Text(
                        "Lanjutkan",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 16 : 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
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

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
