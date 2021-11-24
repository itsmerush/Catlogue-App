// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //zdebugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
