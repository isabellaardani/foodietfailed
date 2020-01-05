import 'package:flutter/material.dart';

class DietDadaAyamScreen extends StatelessWidget {
  static const String routeName = "/dietdadaayam";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d6.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Dada Ayam dan Nasi Merah',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Untuk mendapatkan tubuh yang langsing dan ideal bebas lemak, tubuh harus lebih banyak mengonsumsi serat. Para pelaku diet percaya, serat membantu melancarkan pencernaan dan pembuangan kotoran, sehingga perut tidak akan tampil membuncit.

Dalam diet yang satu ini, seolah pelaku diet “dimanjakan” dengan kelezatan menu nasi merah dan dada ayam. Bahkan, dianjurkan untuk mengatur pola jam makan hingga 5 sampai 6 kali per hari. Tentu saja, porsinya harus diperhitungkan sesuai kebutuhan kalori tubuh, ya.
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