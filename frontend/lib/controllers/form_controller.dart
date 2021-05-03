import '../models/user_model.dart';
import '../services/sign_up_service.dart';

class FormController {
  final signUpService = SignUpService();

  final emailRegex = RegExp(
    r"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$",
    caseSensitive: false,
  );

  String isEmailValid(String s) {
    return emailRegex.hasMatch(s) ? null : "Email inválido";
  }

  String isNameValid(String s) {
    return s != null && s.isNotEmpty ? null : "Campo Obrigatório";
  }

  String isPasswordValid(String s) {
    return s != null && s.length > 5
        ? null
        : "Sua senha deve ter mais de 5 caracteres";
  }

  registerUser(UserModel user) => signUpService.registerUser(user);
}
