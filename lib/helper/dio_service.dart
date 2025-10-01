import 'package:dio/dio.dart';
import 'package:mobile_unapps/config/env_manager.dart'; // Punya kamu sendiri
import 'package:mobile_unapps/helper/storage.dart';

class DioService {
  static Dio? _instance;

  static Future<Dio> getInstance() async {
    if (_instance != null) return _instance!;

    _instance = Dio(
      BaseOptions(
        followRedirects: false,
        validateStatus: (status) => status! < 600,
        baseUrl: EnvManager.apiUrl, // pakai env manager yg sudah ada
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );

    _instance!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final storage = SecureStorageService();
          final token = await storage.read("token");

          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
        

          handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final storage = SecureStorageService();
            await storage.delete("token");
            await storage.delete("refreshToken");

            // misalnya pakai navigator atau cubit
            // Navigator.of(navigatorKey.currentContext!).pushReplacementNamed("/login");
          }

          handler.next(error);
        },
      ),
    );

    return _instance!;
  }

 

  static void clearInstances() {
    _instance = null;
  }
}
