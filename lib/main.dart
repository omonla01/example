
// ignore_for_file: prefer_const_constructors

import 'package:data_connect/dashboard.dart';
import 'package:data_connect/sign_up.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
   theme: ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(148, 188, 250, 146),
   ),

      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/first':(context) => Dashboard(),
        '/second':(context) => SignUp(),

      },
    
    );
     
  }
}
