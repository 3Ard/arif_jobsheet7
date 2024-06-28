import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Nama Mahasiswa',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Nama Mahasiswa',
          style: TextStyle(color: Colors.white), // Ubah warna teks judul
        ),
        backgroundColor: Color.fromARGB(255, 0, 191, 255), // Ubah warna latar belakang judul
        elevation: 100, // Tambahkan elevasi untuk bayangan di bawah judul
      ),
      body: StateTeksUtama(),
    ),
  ));
}

class StateTeksUtama extends StatefulWidget {
  const StateTeksUtama({Key? key}) : super(key: key);

  @override
  _StateTeksUtamaState createState() => _StateTeksUtamaState();
}

class _StateTeksUtamaState extends State<StateTeksUtama> {
  final List<String> listNama = [
    'Arif Ardi Antoro',
    'Awan Restu Listyanto',
    'Deni Setiadi',
    'Yusuf Jauhar A.',
    'Latif Kamaludin',
    'Alisha Nathania Septianty'
  ];
  final List<String> listNIM = [
    'STI202102246',
    'STI202102395',
    'STI202102464',
    'STI202102390',
    'STI202102264',
    'STI202102228'
  ];
  final List<Color> listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Color.fromARGB(255, 26, 0, 120),
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Color.fromARGB(255, 8, 0, 120)
  ];

  int currentIndex = 0;

  void changeName() {
    setState(() {
      currentIndex = (currentIndex + 1) % listNama.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.lightBlueAccent],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset.fromDirection(-14.5, -52.5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    listNama[currentIndex],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: listWarna[currentIndex],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'NIM: ${listNIM[currentIndex]}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: changeName,
                    child: Text('Ganti Nama'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
