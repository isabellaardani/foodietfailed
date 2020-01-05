import 'package:flutter/material.dart';

class DietNasiScreen extends StatelessWidget {
  static const String routeName = "/dietnasi";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d9.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Nasi',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Inti utama dari menjaga pola makan adalah menjaga asupan kalori tubuh yang ideal. Setiap tubuh manusia membutuhkan asupan kalori yang berbeda. Untuk memastikan, berkonsultasilah dengan dokter langganan Anda.

Karbohidrat seperti nasi, ternyata menjadi penyumbang tingkat obesitas yang cukup tinggi di tanah air. Maklum saja, masyarakat di Indonesia menjadikan nasi sebagai makanan pokok. Oleh karena itu, tingkat risiko penderita diabetes tipe 1 dan tipe 2 di Indonesia begitu tinggi dan menjadi perenggut nyawa tertinggi nomor dua setelah penyakit jantung.

Mengonsumsi nasi putih yang masih panas sudah menjadi kebiasaan sehari–hari. Bahkan, dilakukan sebanyak 3 kali setiap hari sesuai jam makan. Sebaiknya, dalam satu hari, karbohidrat dapat dikurangi atau diselingi dengan berbagai tipe makanan. Sebagai alternatif, pelaku diet nasi disarankan untuk mengonsumsi nasi merah, gandum, jagung, ubi, ketela, atau kentang.
''',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.orange[300],
          Colors.orangeAccent[400],
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}