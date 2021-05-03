import 'package:flutter/material.dart';
import 'package:labweb/controllers/form_controller.dart';

import '../models/user_model.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final controller = FormController();
  bool isPasswordObscure = true;
  final model = UserModel();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    signUpHandle() {
      if (_formKey.currentState.validate()) {
        controller.registerUser(model);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cadastro",
            style: TextStyle(color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: model.name,
                        onChanged: (s) => model.name = s,
                        validator: controller.isNameValid,
                        decoration: InputDecoration(
                          labelText: "Nome",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        initialValue: model.surname,
                        onChanged: (s) => model.surname = s,
                        validator: controller.isNameValid,
                        decoration: InputDecoration(
                          labelText: "Sobrenome",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        initialValue: model.email,
                        onChanged: (s) => model.email = s,
                        validator: controller.isEmailValid,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        initialValue: model.birth,
                        onChanged: (s) => model.birth = s,
                        decoration: InputDecoration(
                          labelText: "Data de Nascimento",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        onChanged: (s) => model.username = s,
                        initialValue: model.username,
                        decoration: InputDecoration(
                          labelText: "Usuário",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        onChanged: (s) => model.password = s,
                        initialValue: model.password,
                        validator: controller.isPasswordValid,
                        obscureText: isPasswordObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: _toggleIsPasswordObscure,
                          ),
                          labelText: "Senha",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  autofocus: true,
                  child: Text(
                    "CADASTRAR",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: signUpHandle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _toggleIsPasswordObscure() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
