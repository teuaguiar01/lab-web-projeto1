class FormController {
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
}
