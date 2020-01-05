import 'package:flutter/material.dart';

class DietFoodScreen extends StatelessWidget {
  static const String routeName = "/dietfood";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d7.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Food Combining',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Banyak orang yang mengklaim tubuh makin sehat dan jarang didekati penyakit setelah menerapkan pola diet food combining (FC). Dalam diet FC, pelaku diet bebas menentukan sendiri makanan yang ingin dikonsumsi. Para pakar percaya bahwa di dalam tubuh manusia sebenarnya ada kondisi pH atau keasaman darah yang harus dipertahankan tetap netral.

Oleh karena itu, hadir diet FC sebagai solusi. Pelaku diet FC hanya diperkenankan memakan sayuran dan buah atau bersama protein (daging, ikan, telur). Demikian juga untuk karbohidrat, hanya boleh dikonsumsi bersamaan dengan sayuran. Yang harus diperhatikan adalah menghindari makan bersamaan antara karbohidrat dan protein. Karena pH darah akan menjadi kurang stabil dan meningkatkan berat badan.
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