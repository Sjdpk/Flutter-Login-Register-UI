import 'package:authscreen/Register/register.dart';
import 'package:authscreen/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'Siginin/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authscreen UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      // home: WelcomePage(),
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => SignIn(),
        '/register': (context) => Register(),
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
