import 'package:flutter/material.dart';
import 'package:foodiet/screens/tentang.dart';

import 'package:foodiet/screens/dietketogenik.dart';
import 'package:foodiet/screens/dietocd.dart';
import 'package:foodiet/screens/dietrendahlemak.dart';
import 'package:foodiet/screens/dietplain.dart';
import 'package:foodiet/screens/dietketofastosis.dart';
import 'package:foodiet/screens/dietdadaayam.dart';
import 'package:foodiet/screens/dietfood.dart';
import 'package:foodiet/screens/dietmayo.dart';
import 'package:foodiet/screens/dietnasi.dart';


    class JenisDietScreen extends StatelessWidget {
      static const String routeName = "/jenisdiet";
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text('Jenis Diet'),
      ),
            body: BodyLayout(),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

 Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d1.jpg'),
          ),
            title: Text('Diet Ketogenik'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietKetogenikScreen.routeName);
             },
          ),
          ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d2.jpg'),
          ),
            title: Text('Diet OCD (Obsessive Corbuzier’s Diet)'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietOcdScreen.routeName);
             },
          ),
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d3.jpg'),
          ),
            title: Text('Diet Rendah Lemak'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietRendahLemakScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d4.jpg'),
          ),
            title: Text('Diet Plain/Tawar'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietPlainScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d5.jpg'),
          ),
            title: Text('Diet Ketofastosis'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietKetofastosisScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d6.jpg'),
          ),
            title: Text('Diet Dada Ayam dan Nasi Merah'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietDadaAyamScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d7.jpg'),
          ),
            title: Text('Diet Food Combining'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietFoodScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d8.jpg'),
          ),
            title: Text('Diet Mayo'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietMayoScreen.routeName);
             },
          ),
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/jenisdiet/d9.jpg'),
          ),
            title: Text('Diet Nasi'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, DietNasiScreen.routeName);
             },
          ),
        ],
      );
    }



