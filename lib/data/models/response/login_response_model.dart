//pertama buat data constructornya dulu

import 'dart:convert';

class LoginResponseModel {
  final String accessToken;
  final String refreshToken;
  LoginResponseModel({
    required this.accessToken,
    required this.refreshToken,
  });

//lalu buat map nya yang bentuknya {"":""}
  Map<String, dynamic> toMap() {
    return {
      "accessToken": accessToken,
      "refreshToken": refreshToken,
    };
  }

//lalu buat factory
  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      accessToken: map['access_token'] ?? '',
      refreshToken: map['refresh_token'] ?? '',
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory LoginResponseModel.fromJson(String sumber) {
    return LoginResponseModel.fromMap(json.decode(sumber));
  }
}
