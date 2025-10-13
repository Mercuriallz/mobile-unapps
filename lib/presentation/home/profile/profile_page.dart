import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/helper/storage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final secureStorage = SecureStorageService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            secureStorage.deleteAll();
            context.go("/login");
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
