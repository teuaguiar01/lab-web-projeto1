import 'package:dio/dio.dart';

import '../models/user_model.dart';

class SignUpService {
  registerUser(UserModel user) async {
    try {
      final dio = Dio();

      Response response = await dio.post(
        "http://localhost:3000/users",
        data: user.toJson(),
      );

      return response.statusCode;
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      return null;
    }
  }
}
