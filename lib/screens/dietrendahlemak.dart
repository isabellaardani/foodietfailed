import 'package:flutter/material.dart';

class DietRendahLemakScreen extends StatelessWidget {
  static const String routeName = "/dietrendahlemak";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/jenisdiet/d3.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diet Rendah Lemak',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Kebanyakan asumsi masyarakat awam yang beredar selama ini adalah menghindari lemak yang bakal menggelayut di perut dan dianggap menambah bentuk perut yang buncit. Padahal, justru lemak yang akan membantu sistem metabolisme tubuh bekerja maksimal agar pelaku diet tidak mudah merasa kelaparan. Sekitar 35 persen lemak akan diolah untuk menjadi sumber energi dan tenaga tubuh.

Namun, patut diperhatikan agar memilih jenis lemak yang sehat dan menghindari lemak tak jenuh seperti gorengan atau fast food.
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