import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_unapps/constant/theme/color_constant.dart';

class SuccessPage extends StatefulWidget {
  final String? message;
  final int? type;

  const SuccessPage({super.key, this.message, this.type});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 60),

                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Lottie.asset(
                          'assets/lottie/Success.json',
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,
                          repeat: false,
                          frameRate: FrameRate.max,
                        ),
                      ),

                      const SizedBox(height: 40),

                      const Text(
                        "Request Submitted!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF1E293B),
                          letterSpacing: -0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 16),

                      Text(
                        widget.message ??
                            "Your request has been submitted successfully.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 40),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFFE2E8F0),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDCFDF7),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Icon(
                                Icons.verified_user_rounded,
                                color: Color(0xFF059669),
                                size: 32,
                              ),
                            ),

                            const SizedBox(height: 20),

                            Text(
                              widget.type == 1
                                  ? "Clock-in Berhasil"
                                  : widget.type == 2
                                  ? "Clock-out Berhasil"
                                  : widget.type == 3
                                  ? "Request Time Off Berhasil"
                                  : widget.type == 4
                                  ? "Request Cuti Berhasil"
                                  : "Request Berhasil",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1E293B),
                              ),
                            ),

                            const SizedBox(height: 8),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Timeline Steps
                      // Container(
                      //   width: double.infinity,x
                      //   padding: const EdgeInsets.all(24),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(20),
                      //     border: Border.all(
                      //       color: const Color(0xFFE2E8F0),
                      //       width: 1,
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       const Text(
                      //         "What's Next?",
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w700,
                      //           color: Color(0xFF1E293B),
                      //         ),
                      //       ),

                      //       const SizedBox(height: 20),

                      //       _buildTimelineItem(
                      //         icon: Icons.check_circle,
                      //         iconColor: const Color(0xFF059669),
                      //         iconBgColor: const Color(0xFFDCFDF7),
                      //         title: "Clock-in Berhasil",
                      //         subtitle:
                      //             "Your clock-in request has been approved",
                      //         isCompleted: true,
                      //       ),

                      //       const SizedBox(height: 16),

                      //       _buildTimelineItem(
                      //         icon: Icons.schedule,
                      //         iconColor: const Color(0xFFF59E0B),
                      //         iconBgColor: const Color(0xFFFEF3C7),
                      //         title: "Document Verification",
                      //         subtitle: "We're verifying your documents",
                      //         isCompleted: false,
                      //       ),

                      //       const SizedBox(height: 16),

                      //       _buildTimelineItem(
                      //         icon: Icons.phone,
                      //         iconColor: Colors.grey[400]!,
                      //         iconBgColor: Colors.grey[100]!,
                      //         title: "Confirmation Call",
                      //         subtitle: "We'll contact you for appointment",
                      //         isCompleted: false,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryBlue,

                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        context.go("/home");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.home_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            "Back to Home",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
