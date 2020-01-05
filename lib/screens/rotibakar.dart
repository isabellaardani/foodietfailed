import 'package:flutter/material.dart';

class RotiBakarScreen extends StatelessWidget {
  static const String routeName = "/rotibakar";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow2.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Roti Bakar Telur dengan Salad',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	2 lembar roti tawar gandum
•	1 buah telur
•	Salad (campuran selada, tomat dan apel), resep di postingan sebelumnya


Langkah	
•	Panggang roti. Jika sudah matang, sisihkan. Jika ingin roti kriuk-kriuk, usahakan taruh roti di saringan (kayak yang biasa dipake buat ngangkat goreng-gorengan itu lho biar panasnya ilang dulu baru taruh piring).
•	Panaskan teflon, ceplok telor tanpa pake minyak. Angkat setengah matang, atau sesuai selera.
•	Sajikan dengan salad. Yummm!

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