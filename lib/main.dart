import 'package:flutter/material.dart';
import 'menu_login.dart';  // Impor file login
import 'menu_beranda.dart'; // Impor file beranda
import 'menu_materi.dart'; // Impor file materi
import 'menu_quis.dart'; // impor file quis
import 'menu_akun.dart'; // import file akun


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Menampilkan halaman login pertama kali
    );
  }
}
