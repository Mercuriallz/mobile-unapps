import 'package:flutter/material.dart';
import 'package:mobile_unapps/widget/custom_text_field.dart';

class SetPasswordPage extends StatefulWidget {
  const SetPasswordPage({super.key});

  @override
  State<SetPasswordPage> createState() => _SetPasswordPageState();
}

class _SetPasswordPageState extends State<SetPasswordPage> {
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();

  bool agreeToTerms = false;

  @override
  void dispose() {
    passwordController.dispose();
    retypePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/splash.png",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1565C0),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "UNINET",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 8,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(maxHeight: size.height * 0.65),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                  vertical: size.height * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sandi",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 24 : 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF263238),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "Tentukan sandi, pastikan berisi huruf besar dan angka",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 12 : 13,
                        color: const Color(0xFF9E9E9E),
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),

                    CustomTextField(
                      controller: passwordController,
                      keyboardType: TextInputType.name,
                      hintText: "Sandi",
                      borderRadius: 12,
                     
                    ),
                    SizedBox(height: size.height * 0.018),

                    CustomTextField(
                      controller: retypePasswordController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Konfirmasi Sandi",
                      borderRadius: 12,
                     
                    ),

                 
                    SizedBox(height: size.height * 0.02),

                  

                    SizedBox(
                      width: double.infinity,
                      height: isSmallScreen ? 50 : 54,
                      child: ElevatedButton(
                        onPressed: () {
                          if (passwordController.text.isEmpty ||
                              retypePasswordController.text.isEmpty
                              ) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Mohon isi semua field"),
                                backgroundColor: Color(0xFFF44336),
                              ),
                            );
                          } else if (!agreeToTerms) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Pastikan data sudah benar"),
                                backgroundColor: Color(0xFFF44336),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Pendaftaran berhasil!"),
                                backgroundColor: Color(0xFF4CAF50),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2196F3),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Lanjutkan",
                          style: TextStyle(
                            fontSize: isSmallScreen ? 15 : 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
