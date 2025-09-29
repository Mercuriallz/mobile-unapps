import 'package:flutter/material.dart';

import 'package:mobile_unapps/config/env_manager.dart';
import 'package:mobile_unapps/constant/route/app_router.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvManager.initialize();
  runApp(
    MaterialApp.router(
      
      routerConfig: router,
      theme: ThemeData(useMaterial3: false,
      
      ),
      debugShowCheckedModeBanner: false,
    
    ),
  );
}
