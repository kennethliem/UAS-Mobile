import 'package:flutter/material.dart';
import 'package:jobseeker/Login/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobseeker App by Ken',
      theme: ThemeData.light(),
      home: LoginPage(),
    );
  }
}
