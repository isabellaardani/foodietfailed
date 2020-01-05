import 'package:flutter/material.dart';
import 'package:foodiet/screens/menumakan.dart';
import 'package:foodiet/screens/jenisdiet.dart';
import 'package:foodiet/screens/home.dart';
import 'package:foodiet/screens/tentang.dart';

import 'package:foodiet/screens/avocado.dart';
import 'package:foodiet/screens/rotibakar.dart';
import 'package:foodiet/screens/icematcha.dart';
import 'package:foodiet/screens/miegoreng.dart';
import 'package:foodiet/screens/juicepurple.dart';
import 'package:foodiet/screens/filletdori.dart';
import 'package:foodiet/screens/spagheti.dart';
import 'package:foodiet/screens/jussawi.dart';

import 'package:foodiet/screens/dietketogenik.dart';
import 'package:foodiet/screens/dietocd.dart';
import 'package:foodiet/screens/dietrendahlemak.dart';
import 'package:foodiet/screens/dietplain.dart';
import 'package:foodiet/screens/dietketofastosis.dart';
import 'package:foodiet/screens/dietdadaayam.dart';
import 'package:foodiet/screens/dietfood.dart';
import 'package:foodiet/screens/dietmayo.dart';
import 'package:foodiet/screens/dietnasi.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // kalau () kosong berarti boleh NULL, kalau (BuildContext=1) berarti tdk blh NULL
    routes: <String, WidgetBuilder>{
      MenuMakanScreen.routeName: (BuildContext context) => MenuMakanScreen(), //parameter wajib isi
      JenisDietScreen.routeName: (BuildContext context) => JenisDietScreen(),
      TentangScreen.routeName: (BuildContext context) => TentangScreen(),
      AvocadoScreen.routeName: (BuildContext context) => AvocadoScreen(),
      RotiBakarScreen.routeName: (BuildContext context) => RotiBakarScreen(),
      IceMatchaScreen.routeName: (BuildContext context) => IceMatchaScreen(),
      MieGorengScreen.routeName: (BuildContext context) => MieGorengScreen(),
      JuicePurpleScreen.routeName: (BuildContext context) => JuicePurpleScreen(),
      FilletDoriScreen.routeName: (BuildContext context) => FilletDoriScreen(),
      SpaghetiScreen.routeName: (BuildContext context) => SpaghetiScreen(),
      JusSawiScreen.routeName: (BuildContext context) => JusSawiScreen(),
      DietKetogenikScreen.routeName: (BuildContext context) => DietKetogenikScreen(),
      DietOcdScreen.routeName: (BuildContext context) => DietOcdScreen(),
      DietRendahLemakScreen.routeName: (BuildContext context) => DietRendahLemakScreen(),
      DietPlainScreen.routeName: (BuildContext context) => DietPlainScreen(),
      DietKetofastosisScreen.routeName: (BuildContext context) => DietKetofastosisScreen(),
      DietDadaAyamScreen.routeName: (BuildContext context) => DietDadaAyamScreen(),
      DietFoodScreen.routeName: (BuildContext context) => DietFoodScreen(),
      DietMayoScreen.routeName: (BuildContext context) => DietMayoScreen(),
      DietNasiScreen.routeName: (BuildContext context) => DietNasiScreen(),
    },
  ));
}