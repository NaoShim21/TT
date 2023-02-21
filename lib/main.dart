// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.light().copyWith(
          // Color primario
          primaryColor: Colors.black,
          // AppBar Theme
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 0, 0, 0))),
    );
  }
}
