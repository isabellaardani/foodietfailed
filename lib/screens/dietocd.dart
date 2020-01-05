import 'package:flutter/material.dart';

class DietOcdScreen extends StatelessWidget {
  static const String routeName = "/dietocd";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d2.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet OCD (Obsessive Corbuzier’s Diet)',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Diluncurkan sekitar tahun 2013, diet OCD merupakan hasil pengalaman pribadi dari seniman ilusi dan sulap, Deddy Corbuzier. Dalam waktu beberapa bulan, Deddy sanggup membentuk tubuhnya makin berotot. Ia juga merasa tubuhnya lebih bugar dan tampak awet muda.

Diet OCD terinspirasi dari pertemuannya dengan seorang pria di Cina yang masih tampak segar dan kuat meski menapaki usia ke 70 tahun. Rahasianya adalah “puasa” yang hanya minum air putih saja.

Dalam Diet OCD, pelaku diet hanya diperbolehkan makan selama 4,6, atau 8 jam sesuai pilihannya. Kemudian, di luar jam–jam tersebut, para pelaku hanya diperbolehkan minum air putih. Tidak seperti diet yang lain, dalam Diet OCD pelaku bebas mengonsumsi makanan apa pun favoritnya. Namun, setelah rentang waktu habis, ia hanya boleh minum air. Mudah, kan?
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