import 'package:flutter/material.dart';
import 'package:labweb/controllers/form_controller.dart';
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
  final controller = FormController();
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
                      validator: controller.isPasswordValid,
                      decoration: InputDecoration(
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
                  "LOGIN",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
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
}
