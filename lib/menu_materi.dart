import 'package:flutter/material.dart';
import 'menu_quis.dart'; // Pastikan file ini ada dan class QuisPage terdefinisi di sana

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MateriPage(), // Halaman awal
    );
  }
}

class MateriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
        backgroundColor: Color(0xFFFFA726),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Color(0xFFE0E0E0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, size: 40, color: Colors.grey[700]),
                ),
                SizedBox(width: 16),
                Text(
                  'Tiara Dinda Putri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Materi Title
            Text(
              'Menerapkan K3LH di lingkungan kerja',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),

            // Materi Content
            Text(
              'K3LH adalah singkatan dari Kesehatan, Keselamatan, dan Lingkungan Hidup...'
              'Ini mencakup segala upaya yang dilakukan perusahaan untuk melindungi dan '
              'meningkatkan kesehatan, keselamatan, dan kualitas lingkungan hidup bagi '
              'karyawan yang bekerja di tempat kerja. Implementasi K3LH bertujuan '
              'untuk menciptakan lingkungan kerja yang aman, sehat, dan ramah lingkungan.....',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),

            // Button Baca Selengkapnya
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Tindakan saat tombol "Baca Selengkapnya" diklik
                },
                child: Text(
                  'Baca selengkapnya...',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFA726),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
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
                MaterialPageRoute(builder: (context) => MateriPage()),
              );
              break;
            case 1: // Materi
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => QuisPage()),
              );
              
              break;
            case 2: // Quis
              // Tambahkan navigasi ke halaman Quis
              break;
            case 3: // Akun
              // TODO: Tambahkan navigasi ke halaman Akun
              break;
          }
        },
      ),
    );
  }
}
