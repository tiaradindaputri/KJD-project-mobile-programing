import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: Text(
            'Akun',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Bagian atas (foto profil dan info akun)
          Container(
            color: Colors.orangeAccent,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              children: [
                // Placeholder untuk foto profil
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: 20),
                // Informasi akun (nama dan email)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tiara Dinda Putri',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'tiaradindaputri54@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Bagian opsi
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildAccountOption('Bantuan'),
                  _buildAccountOption('Kebijakan Privasi'),
                  _buildAccountOption('Persyaratan Layanan'),
                  _buildAccountOption('Logout'),
                ],
              ),
            ),
          ),

          // Navigasi Bawah
          Container(
            color: Colors.orangeAccent,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBottomNavigationItem(Icons.home, 'beranda'),
                _buildBottomNavigationItem(Icons.article, 'materi'),
                _buildBottomNavigationItem(Icons.quiz, 'quis'),
                _buildBottomNavigationItem(Icons.account_circle, 'akun'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat opsi di bagian akun
  Widget _buildAccountOption(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.black),
      onTap: () {
        // Aksi ketika opsi ditekan
      },
    );
  }

  // Fungsi untuk membuat item navigasi bawah
  Widget _buildBottomNavigationItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
