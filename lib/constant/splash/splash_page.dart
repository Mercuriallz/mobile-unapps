import 'dart:async';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/helper/storage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? timerCheck;

  checkLogin() async {
    final secureStorage = SecureStorageService();
    final checkLogin = await secureStorage.readBool("login") ?? false;
    final checkOnBoard =
        await secureStorage.readBool("onboardingCompleted") ?? false;
    if (kDebugMode) {
      print(checkLogin);
    }
    timerCheck = Timer(const Duration(milliseconds: 1000), () {
      if (checkLogin == false && checkOnBoard == false) {
        context.go("/on-boarding");
      } else if (checkLogin == false && checkOnBoard == true) {
        context.go("/login");
      } else {
        context.go("/home");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  void dispose() {
    timerCheck?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/splash.png", fit: BoxFit.contain),
            ],
          ),
        ),
      ),
    );
  }
}
