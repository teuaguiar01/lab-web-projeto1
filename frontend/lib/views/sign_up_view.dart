import 'package:flutter/material.dart';
import 'package:labweb/controllers/form_controller.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final controller = FormController();
  String password = "";
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                        //validator???
                        decoration: InputDecoration(
                          labelText: "Data de Nascimento",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        initialValue: password,
                        onChanged: _setPassword,
                        validator: controller.isPasswordValid,
                        obscureText: isPasswordObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(isPasswordObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
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
                  onPressed: () {
                    _formKey.currentState.validate();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _setPassword(String s) => password = s;
  _toggleIsPasswordObscure() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
