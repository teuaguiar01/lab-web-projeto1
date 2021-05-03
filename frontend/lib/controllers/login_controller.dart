import 'package:labweb/services/login_service.dart';

class LoginController {
  final loginService = LoginService();

  String isNameValid(String s) {
    return s != null && s.isNotEmpty ? null : "Usuário inválido";
  }

  String isPasswordValid(String s) {
    return s != null && s.length > 5
        ? null
        : "Sua senha deve ter mais de 5 caracteres";
  }

  login(String user, String password) => loginService.login(user, password);
}
