import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // untuk membuka file PDF dari aplikasi

// Metode utama untuk menjalankan aplikasi
void main() {
  runApp(MyApp());
}

// StatelessWidget untuk struktur utama
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KJD App',
      theme: ThemeData(
        primarySwatch: Colors.orange, // Warna tema sesuai dengan desain
      ),
      home: HomeScreen(),
    );
  }
}

// StatefulWidget untuk elemen-elemen interaktif
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Fungsi untuk membuka file PDF (menggunakan URL, kamu bisa ganti dengan path file lokal)
  void _openPdf(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak bisa membuka $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KJD - Komputer dan Jaringan Dasar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian untuk Materi Semester 1
            Text(
              'Semester 1',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildClickableItem('Menerapkan K3LH di lingkungan kerja', 'https://example.com/k3lh_semester1.pdf'),
            _buildClickableItem('Menerapkan perakitan komputer', 'https://example.com/perakitan_semester1.pdf'),
            _buildClickableItem('Menerapkan pengujian perakitan komputer', 'https://example.com/pengujian_semester1.pdf'),
            // Tambahkan item lainnya untuk materi semester 1...
            SizedBox(height: 20),

            // Bagian untuk Materi Semester 2
            Text(
              'Semester 2',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildClickableItem('Menerapkan instalasi jaringan komputer', 'https://example.com/instalasi_jaringan_semester2.pdf'),
            _buildClickableItem('Menerapkan pengalamatan IP pada jaringan komputer', 'https://example.com/ip_addressing_semester2.pdf'),
            // Tambahkan item lainnya untuk materi semester 2...
          ],
        ),
      ),

      // Navigasi bawah sesuai dengan ikon dalam desain
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        selectedItemColor: Colors.orange, // Warna oranye sesuai dengan desain
      ),
    );
  }

  // Widget untuk item yang dapat diklik dan membuka file PDF
  Widget _buildClickableItem(String title, String pdfUrl) {
    return GestureDetector(
      onTap: () => _openPdf(pdfUrl), // Memanggil fungsi untuk membuka PDF
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.blue), // Teks dapat diklik dengan warna biru
        ),
      ),
    );
  }
}
