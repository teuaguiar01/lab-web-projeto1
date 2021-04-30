import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LOGIN")),
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
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    TextFormField(
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
                  style: TextStyle(fontSize: 20),
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
                  style: TextStyle(fontSize: 20),
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
