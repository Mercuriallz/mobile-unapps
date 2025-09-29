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
          final sid = await storage.read("sid");

          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          if (sid != null) {
            options.headers["Cookie"] = "sid=$sid";
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

  // static Future<bool> _refreshToken() async {
  //   final storage = SecureStorageService();
  //   final refreshToken = await storage.read("refreshToken");

  //   if (refreshToken == null) return false;

  //   try {
  //     final response = await _instance!.post(
  //       EnvManager.apiUrl,
  //       data: {"refreshToken": refreshToken},
  //     );

  //     if (response.statusCode == 200) {
  //       final data = response.data["data"];
  //       final newToken = data["token"];
  //       final newRefreshToken = data["refreshToken"];

  //       await storage.write("token", newToken);
  //       await storage.write("refreshToken", newRefreshToken);
  //       return true;
  //     }
  //   } catch (e) {
  //     print("Refresh token gagal: $e");
  //   }
  //   return false;
  // }

  static void clearInstances() {
    _instance = null;
  }
}
