import 'package:dio/dio.dart';

class LoginService {
  login(String user, String password) async {
    try {
      final dio = Dio();

      final body = {"username": user, "password": password};

      Response response =
          await dio.post("http://localhost:3000/auth/login", data: body);
      return response.statusCode;
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }
}
