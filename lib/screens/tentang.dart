import 'package:flutter/material.dart';

class TentangScreen extends StatelessWidget {
  static const String routeName = "/tentang";

  @override 
  Widget build(BuildContext context) {
    //Now we need multiple widgets into a parent = "Container" widget
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text("Tentang Foodiet",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )),
                  ),
                  //Need to add space below this Text ?
                  
                ],
              ),
          ),
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 2.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
            fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );
    }
    
    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(10.0),
      //How to show long text ?
      child: new Text('''Siapa yang tak menginginkan tubuh yang langsing dan indah?
Pasti semua orang menginginkan tubuh seperti itu. Cara yang paling ampuh untuk mendapatkannya adalah dengan program diet dan olahraga rutin.
Sayangnya, tidak semua orang bisa konsisten dalam mempertahankan program penurunan berat badan mereka, terutama untuk diet.
Mereka lebih memilih untuk makan makanan favoritnya daripada menjalankan program dietnya.
Pada akhrinya, mereka menyesal sendiri karena tidak bisa konsisten pada dietnya.
Nah, guna menghindari hal itu, aplikasi ini cocok sekali untuk kamu yang kebingungan dengan menu diet sehari - hari kamu.

Foodiet adalah aplikasi yang berisikan resep menu makanan untuk diet yang sehat. Aplikasi ini juga memberikan keterangan lengkap resep, gambar masakan, bahan - bahan yang akan digunakan untuk dimasak, dan langkah - langkah pembuatannya.
Di aplikasi ini juga kita dapat mengetahui jenis - jenis diet yang baik dan benar. Semua menu makanan yang ada di aplikasi Foodiet sudah diperhitungkan jumlah kalorinya sehingga dapat membantumu agar berat badanmu bisa turun dan kamu dapat menjalankan diet yang lebih sehat.



              Isabella Ardani - 2019 ©All rights reservd.''',
        style: new TextStyle(
            color: Colors.grey[850],
            fontSize: 16.0
        )
      ),
    );
    
    //build function returns a "Widget"
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange[300],
          title: new Text('Tentang Foodiet'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'assets/images/about.jpg',
              fit: BoxFit.cover
            ),
            //You can add more widget bellow
            titleSection,
            bottomTextSection
          ],
        )
      )
      
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange[300],
          title: new Text('Tentang Foodiet'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'assets/images/charity1.jpg',
              fit: BoxFit.cover
            ),
            //You can add more widget bellow
            titleSection,
            bottomTextSection
          ],
        )
      )
      
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange[300],
          title: new Text('Tentang Foodiet'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'assets/images/charity1.jpg',
              fit: BoxFit.cover
            ),
            //You can add more widget bellow
            titleSection,
            bottomTextSection
          ],
        )
      )
      
    );//Widget with "Material design"
  }
}
