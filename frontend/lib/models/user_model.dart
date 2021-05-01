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
    });

    String name;
    String surname;
    String email;
    String password;
    String birth;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        password: json["password"],
        birth: json["birth"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "email": email,
        "password": password,
        "birth": birth,
    };
}
