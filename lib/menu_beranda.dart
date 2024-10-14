import 'package:flutter/material.dart';
import 'menu_materi.dart'; // Impor halaman materi

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BerandaPage(),
    );
  }
}

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA726), // Warna oranye pada bagian atas
        elevation: 0, // Menghilangkan shadow di bawah AppBar
      ),
      body: Column(
        children: [
          // Bagian Header: Nama dan Foto
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Color(0xFFFFA726), // Warna oranye bagian header
            child: Row(
              children: [
                // Bagian Foto (kosong sesuai permintaan)
                CircleAvatar(
                  radius: 30, // Ukuran lingkaran foto
                  backgroundColor: Colors.grey[300], // Warna placeholder
                  child: Icon(Icons.person, size: 40, color: Colors.grey[700]), // Ikon pengguna sementara
                ),
                SizedBox(width: 16),
                // Nama pengguna
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tiara Dinda Putri',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'KJD',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Judul Besar
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            color: Color(0xFFFFA726), // Warna oranye latar belakang judul
            child: Center(
              child: Text(
                'Komputer dan jaringan dasar kelas 10 tkj semester 1 dan 2',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Menyelaraskan teks ke tengah
              ),
            ),
          ),
          // Bagian Materi
          Expanded(
            child: Container(
              color: Color(0xFFE0E0E0), // Warna abu-abu untuk latar belakang materi
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Materi Semester 1
                    Text(
                      'Semester 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    ..._buildSemester1Content(), // Isi materi semester 1

                    SizedBox(height: 16),
                    // Materi Semester 2
                    Text(
                      'Semester 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    ..._buildSemester2Content(), // Isi materi semester 2
                  ],
                ),
              ),
            ),
          ),
          // Bagian Menu Bawah
          BottomNavigationBar(
            backgroundColor: Color(0xFFFFCC80), // Warna kuning oranye
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda', // Label untuk Beranda
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Materi', // Label untuk Materi
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.quiz),
                label: 'Quis', // Label untuk Quis
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Akun', // Label untuk Akun
              ),
            ],
            selectedItemColor: Colors.black, // Warna untuk item yang dipilih
            unselectedItemColor: Colors.grey[600], // Warna untuk item yang tidak dipilih
            showSelectedLabels: true, // Menampilkan label item yang dipilih
            showUnselectedLabels: true, // Menampilkan label item yang tidak dipilih
            onTap: (index) {
              // Navigasi berdasarkan item yang dipilih
              switch (index) {
                case 0: // Beranda
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BerandaPage()),
                  );
                  break;
                case 1: // Materi
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MateriPage()), // Pindah ke halaman Materi
                  );
                  break;
                case 2: // Quis
                  // TODO: Navigasi ke halaman Quis
                  break;
                case 3: // Akun
                  // TODO: Navigasi ke halaman Akun
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}

  // Fungsi untuk membuat konten semester 1
  List<Widget> _buildSemester1Content() {
    return [
      '1. Menerapkan K3LH di lingkungan kerja',
      '2. Menerapkan perakitan komputer',
      '3. Menerapkan pengujian perakitan komputer',
      '4. Menerapkan konfigurasi seting BIOS komputer',
      '5. Menerapkan instalasi sistem operasi',
      '6. Menerapkan instalasi driver perangkat keras komputer',
      '7. Menerapkan instalasi software aplikasi',
      '8. Menerapkan perawatan perangkat keras komputer',
      '9. Menganalisis permasalahan pada perangkat keras',
      '10. Menganalisis permasalahan pada instalasi software aplikasi',
    ].map((text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(text, style: TextStyle(fontSize: 14, color: Colors.black)), // Menambahkan warna teks
    )).toList();
  }

  // Fungsi untuk membuat konten semester 2
  List<Widget> _buildSemester2Content() {
    return [
      '1. Menerapkan instalasi jaringan komputer',
      '2. Menerapkan pengalamatan IP pada jaringan komputer',
      '3. Menerapkan sumber daya berbagi pakai pada jaringan komputer',
      '4. Menerapkan instalasi koneksi internet pada workstation',
      '5. Mengevaluasi desain jaringan lokal (LAN)',
      '6. Menerapkan instalasi jaringan lokal (LAN)',
      '7. Menerapkan perawatan jaringan lokal (LAN)',
      '8. Menganalisis permasalahan pada jaringan lokal (LAN)',
    ].map((text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(text, style: TextStyle(fontSize: 14, color: Colors.black)), // Menambahkan warna teks
    )).toList();
  }
