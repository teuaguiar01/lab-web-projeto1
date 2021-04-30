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
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Página Inicial")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Navegue aqui para página de cadastro',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 50),
            Container(
              height: 70,
              width: 210,
              child: ElevatedButton(
                autofocus: true,
                child: Text(
                  "CADASTRAR",
                  style: TextStyle(fontSize: 25),
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
