// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.name,
    this.surname,
    this.email,
    this.password,
    this.birth,
    this.username,
  });

  String name;
  String surname;
  String email;
  String password;
  String birth;
  String username;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["firstName"],
        surname: json["lastName"],
        email: json["email"],
        password: json["password"],
        birth: json["birthdayDate"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": name,
        "lastName": surname,
        "email": email,
        "password": password,
        "birthdayDate": birth,
        "username": username,
      };
}
