import 'package:flutter/material.dart';

class AvocadoScreen extends StatelessWidget {
  static const String routeName = "/avocado";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow1.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Avocado Toast',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	1/2 buah alpukat, slice tipis-tipis
•	2 lembar roti tawar gandum
•	2 buah telur
•	opsional Biji-bijian (Falxseed, sesame seed, sunflower seed),


Langkah	
•	Toast roti. Atau panggang dengan teflon.
•	Jika roti sudah agak mengeras dan kecoklatan. Angkat. Sisihkan.
•	Ceplok telur setengah matang. Sisihkan.
•	Plating. Taruh alpukat di atas roti, lalu tambahkan telur di atasnya. Taburkan biji-bijian. Sajikan.
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