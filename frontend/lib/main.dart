import 'package:flutter/material.dart';
import 'package:labweb/controllers/login_controller.dart';
import 'package:labweb/views/sign_up_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(),
        '/signUp': (context) => SignUpView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final controller = LoginController();

  String password = "";
  bool isPasswordObscure = true;
  String user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
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
                      onChanged: (s) => user = s,
                      initialValue: user,
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    TextFormField(
                      initialValue: password,
                      onChanged: (s) => password = s,
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
                  "ENTRAR",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: loginHandle,
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
                onPressed: () => Navigator.pushNamed(context, "/signUp"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  loginHandle() {
    if (_formKey.currentState.validate()) {
      controller.login(user, password);
    }
  }

  _toggleIsPasswordObscure() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
