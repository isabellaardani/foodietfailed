import 'package:flutter/material.dart';

class SpaghetiScreen extends StatelessWidget {
  static const String routeName = "/spagheti";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow7.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Spagheti Whole Wheat Siram Ayam Kari (edisi diet)',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	200 gram spagheti whole wheat
•	250 gram ayam dada, potong kecil-kecil
•	1/2 buah bawang bombay
•	5 siung bawang putih
•	1 sdm bubuk kari
•	1/2 sdm bubuk cabai
•	1 sdm oregano
•	3 buah cabe merah, potong serong
•	1 buah wortel, potong memanjang
•	Garam
•	Minyak tropicana slim
•	Margarin (untuk aroma)


Langkah	
•	Rebus spagheti, tiriskan
•	Panaskan minyak dengan margarin, tumis bawang putih, bombay sampai layu. Masukkan wortel, dan cabe merah
•	Masukkan ayam, beri garam, oregano, bubuk kari, cabaim tes rasa
•	Masak hingga ayam matang
•	Tata spagheti dan tuang ayam kari diatasnya

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