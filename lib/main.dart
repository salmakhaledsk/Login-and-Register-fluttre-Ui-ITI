
import 'package:flutter/material.dart';
import 'package:salmakhaled_day2/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //SingUp(),
          // SingIn(),
          RestSingUP(),
    );
  }
}
