import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:mobile_unapps/constant/theme/color_constant.dart";
import "package:mobile_unapps/widget/custom_text_field.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

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
                  vertical: size.height * 0.04,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 28 : 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF263238),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "Silahkan masuk dan lakukan pengisian email dan possword",
                      style: TextStyle(
                        fontSize: isSmallScreen ? 13 : 14,
                        color: const Color(0xFF9E9E9E),
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),

                    CustomTextField(
                      fillColor: Colors.white,
                      controller: emailController,
                      keyboardType: TextInputType.phone,
                      hintText: "Email",
                    ),

                    SizedBox(height: size.height * 0.02),

                    CustomTextField(
                      borderRadius: 12,
                      fillColor: Colors.white,
                      hintText: "Sandi",
                      controller: passwordController,
                      obscureText: !isPasswordVisible,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF9E9E9E),
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),

                    SizedBox(height: size.height * 0.03),

                    SizedBox(
                      width: double.infinity,
                      height: isSmallScreen ? 52 : 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // if (emailController.text.isEmpty ||
                          //     passwordController.text.isEmpty) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text("Mohon isi semua field"),
                          //       backgroundColor: Color(0xFFF44336),
                          //     ),
                          //   );
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text("Login berhasil!"),
                          //       backgroundColor: Color(0xFF4CAF50),
                          //     ),
                          //   );
                          //                               context.push("/main");

                          // }
                          context.push("/home");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.elevatedButtonColor,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: isSmallScreen ? 16 : 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),

                    SizedBox(
                      width: double.infinity,
                      height: isSmallScreen ? 52 : 56,
                      child: OutlinedButton(
                        onPressed: () {
                          context.push("/register");
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF2196F3),
                          side: const BorderSide(
                            color: Color(0xFF2196F3),
                            width: 1.5,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Belum Punya Akun ?",
                          style: TextStyle(
                            fontSize: isSmallScreen ? 16 : 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Pengajuan Pemasangan"),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFF2196F3),
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            "Pengajuan Pemasangan",
                            style: TextStyle(
                              fontSize: isSmallScreen ? 13 : 14,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Lupa Sandi")),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFF2196F3),
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            "Lupa Sandi ?",
                            style: TextStyle(
                              fontSize: isSmallScreen ? 13 : 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
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
