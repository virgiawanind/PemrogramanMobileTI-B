import 'package:flutter/material.dart'; // material.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis
  // mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //Judul
      debugShowCheckedModeBanner: false, //menghilangkan debug
      theme: ThemeData( // Tema aplikasi.
        primarySwatch: Colors.blue,
        // warna yg digunakan materialApp
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gender Equality (5)'), //Title aplikasi
    );
  }
}
class MyHomePage extends StatefulWidget { //mengextends statefulwidget
  MyHomePage({Key key, this.title}) : super(key: key);

  // widget yang digunakan untuk menampilkan data-data yang dinamis atau data
  // yang kita telah tampilkan sewaktu-waktu dapat mengalami perubahan.
  final String title; // titlenya tidak bisa dirubah

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // fungsi, yang akan menerima Objek yang pada akhirnya akan digabungkan
      // ke dalam status Komponen saat ini.
      _counter++; //menaikkan nilai
    });
  }

  @override
  Widget build(BuildContext context) {
    // Method ini menjalankan setState setiap waktu
    return Scaffold(
      appBar: AppBar(
        // mengambil value dari MyHomePage yg sudah dibuat aplikasi dan
        // mengaturnya menjadi appbar title
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white70, // mengubah warna body
      body: Center(
        // body berada di tengah
        child: Column(
          // Kolom
          mainAxisAlignment: MainAxisAlignment.spaceAround, // mengatur letak text
          children: <Widget>[
            Text(
              'Virgiawan Indrianto 182410102016',
            ),
            Text(
              'Rizal Akbar Arifin 182410102044',
            ),
            Text(
              'Melva Anggraini P. 182410102045',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( //tombol lingkaran +
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
