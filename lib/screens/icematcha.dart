import 'package:flutter/material.dart';

class IceMatchaScreen extends StatelessWidget {
  static const String routeName = "/icematcha";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow3.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Iced Matcha Latte (Low Fat)',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	1 sdt bubuk matcha
•	1/2 gelas low fat milk (bisa diganti almond milk, soy milk dll)
•	1 sdm madu
•	1/4 gelas air panas
•	Es batu


Langkah	
•	Tuang bubuk matcha dalam gelas. Masukkan air panas. Aduk hingga mengental dan berbuih.
•	Pastikan bubuk matcha tidak ada yang menggumpal. Masukan perlahan madu.
•	Jika madu dan matcha sudah menyatu, masukkan susu. Aduk lagi hingga merata.
•	Masukkan es batu, dan sajikan selagi dingin.
•	Note: jika ingin hot matcha latte, tinggal ilangin es batunya. Dan, susunya dipanaskan terlebih dahulu. Selamat menikmati!

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