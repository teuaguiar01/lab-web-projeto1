import '../models/user_model.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  registerUser(UserModel user) async {
    try {
      var baseUrl = Uri.parse("http://localhost:3000/users");
      var response = await http.post(baseUrl, body: user.toJson());
      return response;
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }
}
