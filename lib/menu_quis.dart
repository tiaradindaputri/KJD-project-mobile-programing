import 'package:flutter/material.dart';
import 'menu_materi.dart'; // Pastikan file ini ada dan class MateriPage terdefinisi di sana
import 'menu_akun.dart'; // Pastikan file ini ada dan class AkunPage terdefinisi di sana

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuisPage(),
    );
  }
}

class QuisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quis'),
        backgroundColor: Color(0xFFFFA726),
      ),
      body: Column(
        children: [
          // Bagian Profil dan Judul
          Container(
            color: Colors.orangeAccent,
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Tempat untuk Foto Profil (kosong)
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(height: 10),
                // Nama Profil
                Text(
                  'Tiara Dinda Putri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                // Judul Materi
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Menerapkan K3LH di lingkungan kerja',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),

          // Bagian Isi Konten
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ayo test pemahaman kamu tentang materi menerapkan K3LH di lingkungan kerja!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  // Tombol Mulai Quis
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                      // Navigasi ke halaman kuis bisa ditambahkan di sini
                    },
                    child: Text('Mulai Quis'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      backgroundColor: Colors.tealAccent[400],
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFCC80),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Materi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          // Navigasi berdasarkan item yang dipilih
          switch (index) {
            case 0: // Beranda
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => QuisPage()), // Ubah jika perlu ke halaman Beranda
              );
              break;
            case 1: // Materi
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()), // Pastikan MateriPage terdefinisi
              );
              break;
            case 2: // Quis
              // Halaman ini sudah di Quis
              break;
            case 3: // Akun
              
          }
        },
      ),
    );
  }
}

       