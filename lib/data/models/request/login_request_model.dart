import 'dart:convert';

class LoginRequestModel {
  final String email;
  final String password;
  LoginRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "password": password,
    };
  }

  factory LoginRequestModel.fromMap(Map<String, dynamic> map) {
    return LoginRequestModel(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory LoginRequestModel.fromJson(String sumber) {
    return LoginRequestModel.fromJson(jsonDecode(sumber));
  }
}
