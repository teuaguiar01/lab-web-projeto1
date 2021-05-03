import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../models/user_model.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  // final dio = Dio(
  //   BaseOptions(
  // baseUrl: "http://localhost:3000/",
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   ),
  // );

  // registerUser(UserModel user) async {
  //   final mock = {
  //     "firstName": "Xande2",
  //     "lastName": "Vieira dos Santos Alves",
  //     "birthdayDate": "22/07/2000",
  //     "email": "danilovieiraalves@hotmail.com",
  //     "username": "alves4",
  //     "password": "123123"
  //   };
  //   try {
  //     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  //         (client) {
  //       // client.findProxy = (uri) {
  //       // return 'PROXY localhost:8888';
  //       // };
  //       // var client = new HttpClient();
  //       // client.get(new Uri.http("localhost:3000"));
  //       SecurityContext sc = SecurityContext();
  //       //file is the path of certificate
  //       HttpClient httpClient = HttpClient(context: sc);
  //       return httpClient;
  //     };
  //     final response = await dio.post("users", data: mock);
  //     return response;
  //   } catch (error, stackTrace) {
  //     print(error);
  //     print(stackTrace);
  //   }
  // }

  registerUser(UserModel user) async {
    final mock = {
      "firstName": "Xande2",
      "lastName": "Vieira dos Santos Alves",
      "birthdayDate": "22/07/2000",
      "email": "danilovieiraalves@hotmail.com",
      "username": "alves6",
      "password": "123123"
    };
    try {
      var baseUrl = Uri.parse("http://localhost:3000/users");
      var response = await http.post(baseUrl, body: mock);
      return response;
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }
}
