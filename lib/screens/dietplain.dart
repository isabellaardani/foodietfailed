import 'package:flutter/material.dart';

class DietPlainScreen extends StatelessWidget {
  static const String routeName = "/dietplain";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d4.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Plain / Tawar',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bila ada pepatah, ibarat sayur tanpa garam yang berasa hambar, maka pelaku diet plain atau diet tawar akan terus melakukan pola makan sehat yang satu ini. Banyak orang yang mengeluh susah menurunkan berat badan meski telah melakukan berbagai cara. Tapi, mereka lupa bahwa gula dan garam adalah salah satu pemicu kenaikan berat badan.

Oleh karena itu, muncul diet plain atau diet tawar yang tidak menambahkan esensi rasa ke dalam makanan. Makanan untuk diet plain hanya direbus atau dikukus dan mengandalkan rasa asli dari cita rasa makanan tersebut. Karena tidak mengandung rasa apa pun di lidah, diharapkan para pelaku diet bisa lebih mudah mengendalikan pola konsumsi makan yang lebih terkendali.
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