import 'package:flutter/material.dart';

class DietKetogenikScreen extends StatelessWidget {
  static const String routeName = "/dietketogenik";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d1.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Ketogenik',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Pada walnya diet ketogenik diperuntukkan bagi para penderita epilepsi terutama anak–anak. Diet ini mengandung banyak lemak yang untuk menjaga asupan nutrisi. Perbandingannya mencapai 80 persen lemak, 15 persen protein, dan 5 persen karbohidrat.

Pastinya, lemak akan sangat berguna untuk meningkatkan perkembangan metabolisme tubuh. Terlebih bagi anak–anak yang sedang dalam masa pertumbuhan. Beberapa menu yang disarankan di antaranya seperti es krim, sosis, udang, ikan tuna, daging dan telur.

Sebagai selingan ada juga sayuran dan buah-buahan. Bagi masyarakat yang ingin tubuh langsing ideal, diet ketogenik bisa menjadi alternatif pilihan.
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