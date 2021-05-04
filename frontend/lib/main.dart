import 'package:flutter/material.dart';
import 'package:labweb/views/home_view.dart';
import 'package:labweb/views/login_view.dart';
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
        '/': (context) => LoginView(),
        '/signUp': (context) => SignUpView(),
        '/home': (context) => HomeView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
