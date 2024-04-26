import 'package:appstor/home/cart.dart';
import 'package:appstor/home/homescreen.dart';
import 'package:appstor/home/new.dart';
import 'package:appstor/home/notificationscreen.dart';
import 'package:appstor/home/profile.dart';
import 'package:appstor/login/email.dart';
import 'package:appstor/login/login.dart';
import 'package:appstor/login/sign_in.dart';
import 'package:appstor/login/message.dart';
import 'package:appstor/login/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splash_screen(),
        '/signin': (context) => signinpage(),
        '/login': (context) => loginpage(),
        '/forgotpassword': (context) => forgotpassword(),
        '/message': (context) => textmessage(),
        '/home': (context) => HomePage(),
        '/notification': (context) => Notificationscreen(),
        '/profile': (context) => Profilescreen(),
        '/cart': (context) => cartpage(),
        '/myapp': (context) => app(),
        '/details': (context) => details(),
      },
    );
  }
}
