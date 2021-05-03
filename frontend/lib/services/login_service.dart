import 'package:http/http.dart' as http;

class LoginService {
  login(String user, String password) async {
    try {
      var url = Uri.parse("http://localhost:3000/auth/login");

      final body = {"username": user, "password": password};

      var response = await http.post(url, body: body);
      return response;
      //TODO pop quando der tudo certo
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      //TODO mostrar erro

    }
  }
}
