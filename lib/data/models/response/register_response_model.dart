import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
// {
//     "email": "nico@gmail.com",
//     "password": "123456",
//     "name": "Nicolas",
//     "avatar": "https://api.lorem.space/image/face?w=640&h=480",
//     "role": "customer",
//     "id": 13,
//     "creationAt": "2023-06-11T04:32:59.000Z",
//     "updatedAt": "2023-06-11T04:32:59.000Z"
// }

// class RegisterResponseModel {
//   String? email;
//   String? password;
//   String? name;
//   String? avatar;
//   String? role;
//   int? id;
//   String? createdAt;
//   String? updatedAt;
//   RegisterResponseModel({
//     this.email,
//     this.password,
//     this.name,
//     this.avatar,
//     this.role,
//     this.id,
//     this.createdAt,
//     this.updatedAt,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'email': email,
//       'password': password,
//       'name': name,
//       'avatar': avatar,
//       'role': role,
//       'id': id,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//     };
//   }

//   factory RegisterResponseModel.fromMap(Map<String, dynamic> map) {
//     return RegisterResponseModel(
//       email: map['email'] as String,
//       password: map['password'] as String,
//       name: map['name'] as String,
//       avatar: map['avatar'] as String,
//       role: map['role'] as String,
//       id: map['id'] as int,
//       createdAt: map['createdAt'] as String,
//       updatedAt: map['updatedAt'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory RegisterResponseModel.fromJson(String source) =>
//       RegisterResponseModel.fromMap(
//           json.decode(source) as Map<String, dynamic>);
// }

// To parse this JSON data, do
// //
// final registerResponseModel = registerResponseModelFromMap(jsonString);

class RegisterResponseModel {
  String? email;
  String? password;
  String? name;
  String? avatar;
  String? role;
  int? id;
  DateTime? creationAt;
  DateTime? updatedAt;

  RegisterResponseModel({
    this.email,
    this.password,
    this.name,
    this.avatar,
    this.role,
    this.id,
    this.creationAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
        "name": name,
        "avatar": avatar,
        "role": role,
        "id": id,
        "creationAt": creationAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

  factory RegisterResponseModel.fromMap(Map<String, dynamic> json) =>
      RegisterResponseModel(
          email: json["email"],
          password: json["password"],
          name: json["name"],
          avatar: json["avatar"],
          role: json["role"],
          id: json["id"],
          creationAt: json["creationAt"] == null
              ? null
              : DateTime.parse(json["creationAt"]),
          updatedAt: json["updatedAt"] == null
              ? null
              : DateTime.parse(json["updatedAt"]));

  String toJson() => json.encode(toMap());

  factory RegisterResponseModel.fromJson(String str) =>
      RegisterResponseModel.fromMap(json.decode(str));
}
