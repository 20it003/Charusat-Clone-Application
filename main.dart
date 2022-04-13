import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt_prac_codepur/home_page.dart';
import 'package:yt_prac_codepur/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => Login_page(),
      },
    );
  }
}
