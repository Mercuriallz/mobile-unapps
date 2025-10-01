import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_unapps/cubit/auth/login_state.dart';
import 'package:mobile_unapps/helper/dio_service.dart';
import 'package:mobile_unapps/helper/storage.dart';
import 'package:mobile_unapps/model/login_model.dart';
import 'package:mobile_unapps/model/login_request_model.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(LoginRequestModel formData) async {
    emit(LoginLoading());
    final storage = SecureStorageService();

    Map<String, dynamic> data = ({
      "customer_email": formData.customerEmail,
      "customer_password": formData.customerPassword,
    });


    try {
      final dio = await DioService.getInstance();
      final response = await dio.post("/customer/login", data: data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final loginModel = LoginModel.fromJson(response.data);
        final token = loginModel.data?.token!;
        final refreshToken = loginModel.data?.refreshToken;

       await storage.write("token", token ?? "");
       await storage.write("refreshToken", refreshToken ?? "");
      } else {
        emit(LoginError("Login failed. Please try again."));
      }
      emit(LoginSuccess("Login successful!"));
    } catch (e) {
      emit(LoginError("Login failed. Please try again."));
    }
  }
}
