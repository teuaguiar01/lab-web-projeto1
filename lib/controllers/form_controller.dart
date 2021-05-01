class FormController {
  final emailRegex = RegExp(r'^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,}$');

  String isEmailValid(String s) {
    return emailRegex.hasMatch(s) ? "" : "Email inválido";
  }

  String isNameValid(String s) {
    return s != null && s.isNotEmpty ? "" : "Campo Obrigatório"; 
  }

  String isPasswordValid(String s) {
    return s != null && s.length > 5 ? "" : "Sua senha deve ter mais de 5 caracteres"; 
  }

}
