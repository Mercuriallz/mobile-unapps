class LoginRequestModel {
  String? customerPassword;
  String? customerEmail;

  LoginRequestModel({this.customerPassword, this.customerEmail});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    customerPassword = json['customer_password'];
    customerEmail = json['customer_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customer_password'] = customerPassword;
    data['customer_email'] = customerEmail;
    return data;
  }
}