import 'package:flutter/foundation.dart';
import 'package:mobile_unapps/config/development/env_development.dart';
import 'package:mobile_unapps/config/production/env_production.dart';


class EnvManager {
  static late dynamic _currentEnv;
  
  static Future<void> initialize() async {
    if (kReleaseMode) {
      _currentEnv = EnvProduction();
      // print('Loaded production environment');
    } else {
      _currentEnv = EnvDevelopment();
      // print('Loaded development environment');
    }
  }
  
  static String get apiUrl => _currentEnv.apiUrl;
  
}