import 'package:flutter/material.dart';

class FilletDoriScreen extends StatelessWidget {
  static const String routeName = "/filletdori";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow6.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Mayo Fillet Dori',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	1 sisi fillet ikan dori
•	3 lembar sawi putih
•	1 buah kentang ukuran sedang
•	2 siung bawang putih


Langkah	
•	Panaskan sedikit olive oil. geprek bawang putih, tumis sebentar. Masukkan Fillet ikan dori dan panggang hingga matang.
•	Cuci bersih kulit kentang, tapi kalo mau dikupas jg boleh. saya lebih suka dgn kulitnya. Potong kentang membentuk kentang wedges, atau sesuai selera juga gapapa. Panggang pada teflon, ditambah sedikit minyak olive oil.
•	Potong sawi, rebus sebentar. Kalau saya lebih suka ditumis karena rasanya lebih manis.

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