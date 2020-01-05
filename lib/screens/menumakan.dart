import 'package:flutter/material.dart';
import 'package:foodiet/screens/avocado.dart';
import 'package:foodiet/screens/rotibakar.dart';
import 'package:foodiet/screens/icematcha.dart';
import 'package:foodiet/screens/miegoreng.dart';
import 'package:foodiet/screens/juicepurple.dart';
import 'package:foodiet/screens/filletdori.dart';
import 'package:foodiet/screens/spagheti.dart';
import 'package:foodiet/screens/jussawi.dart';

    class MenuMakanScreen extends StatelessWidget {
      static const String routeName = "/menumakan";
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text('Menu Makanan & Minuman'),
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
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow1.jpg'),
          ),
            title: Text('Avocado Toast'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, AvocadoScreen.routeName);
             },
          ),
          ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow2.jpg'),
          ),
            title: Text('Roti Bakar Telur dengan Salad'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context,  RotiBakarScreen.routeName);
             },
          ),
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow3.jpg'),
          ),
            title: Text('Iced Matcha Latte (Low Fat)'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, IceMatchaScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow4.jpg'),
          ),
            title: Text('Mie Goreng Shirataki'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, MieGorengScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow5.jpg'),
          ),
            title: Text('Juice Purple Sweet Potato Lemon Plum'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, JuicePurpleScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow6.jpg'),
          ),
            title: Text('Diet Mayo Fillet Dori'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, FilletDoriScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow7.jpg'),
          ),
            title: Text('Spagheti Whole Wheat Siram Ayam Kari (edisi diet)'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, SpaghetiScreen.routeName);
             },
          ),
           ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/wow8.jpg'),
          ),
            title: Text('Jus Sawi Hijau'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, JusSawiScreen.routeName);
             },
          ),
        ],
      );
            backgroundColor: Colors.orange[50];
    }



