import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login
import 'home.dart'; // Import halaman home

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi TKJ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Halaman pertama yang ditampilkan adalah halaman login
      routes: {
        '/home': (context) => HomePage(), // Routing ke halaman home
      },
    );
  }
}
