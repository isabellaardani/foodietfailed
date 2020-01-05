import 'package:flutter/material.dart';

class DietMayoScreen extends StatelessWidget {
  static const String routeName = "/dietmayo";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d8.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Mayo',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Sejak puluhan tahun diet Mayo sudah melanglang buana dikenal seluruh dunia. Banyak pesohor, selebriti hingga tokoh–tokoh terkenal mempraktikkan pola diet Mayo. Pelangsingan ini menargetkan untuk sukses berpuasa tanpa garam selama tiga belas hari.

Selain menghindari makanan asin, diet Mayo juga mewajibkan pelakunya untuk berolahraga ringan secara rutin. Seperti jalan–jalan pagi, naik turun tangga, berjalan kaki, yoga, dan latihan peregangan ringan lainnya.
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