import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/widget/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  bool agreeToTerms = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
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
                      "Pendaftaran Akun",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 24 : 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF263238),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "Lakukan pengisian data diri anda. Pastikan semua data sesuai dengan benar",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 12 : 13,
                        color: const Color(0xFF9E9E9E),
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),

                    CustomTextField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      hintText: "Nama Lengkap",
                      borderRadius: 12,
                     
                    ),
                    SizedBox(height: size.height * 0.018),

                    CustomTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                      borderRadius: 12,
                     
                    ),
                    SizedBox(height: size.height * 0.018),

                    CustomTextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      hintText: "No. Handphone",
                      borderRadius: 12,
                   
                    ),
                    SizedBox(height: size.height * 0.02),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            value: agreeToTerms,
                            onChanged: (value) {
                              setState(() {
                                agreeToTerms = value ?? false;
                              });
                            },
                            activeColor: const Color(0xFF2196F3),
                            side: const BorderSide(
                              color: Color(0xFFE0E0E0),
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Pastikan semua terisi dengan benar",
                            style: TextStyle(
                              fontSize: isSmallScreen ? 12 : 13,
                              color: const Color(0xFF757575),
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.025),

                    SizedBox(
                      width: double.infinity,
                      height: isSmallScreen ? 50 : 54,
                      child: ElevatedButton(
                        onPressed: () {
                          if (nameController.text.isEmpty ||
                              emailController.text.isEmpty ||
                              phoneController.text.isEmpty) {
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
                           context.push("/register/set-password");
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
