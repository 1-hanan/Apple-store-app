import 'package:apple/page/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:apple/page/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          toolbarHeight: 65,
          backgroundColor: Color.fromARGB(255, 10, 33, 49),
          foregroundColor: Colors.white,
          centerTitle: true,
        )
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

