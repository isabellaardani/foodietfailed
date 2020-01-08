import 'package:flutter/material.dart';
import 'package:foodiet/screens/menumakan.dart';
import 'package:foodiet/screens/jenisdiet.dart';
import 'package:foodiet/screens/tentang.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomeScreen extends StatefulWidget {
  @override 
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context){
    var headerChild = DrawerHeader(child: Text("MENU"));
    var aboutChild = AboutListTile(
      child: Text("Versi Aplikasi"),
      applicationName: "FOODIET",
      applicationVersion: "v1.0.0",
      applicationIcon: Icon(Icons.adb),
      icon: Icon(Icons.info));
    ListTile getNavItem(var icon, String s, String routeName){
    return ListTile(
      leading: Icon(icon),
      title: Text(s),
      onTap: () {
        setState(() {
          //pop closes the drawer
          Navigator.of(context) .pop();
          //navigate to the route
          Navigator.of(context) .pushNamed(routeName);
        });
      },
      ); 
    }
  var myNavChildren = [
    headerChild,
       getNavItem(Icons.home, "Home", "/"),
    getNavItem(Icons.search, "Resep Makanan & Minuman", MenuMakanScreen.routeName),
    getNavItem(Icons.category, "Jenis Diet", JenisDietScreen.routeName),
    getNavItem(Icons.book, "Tentang Foodiet", TentangScreen.routeName),
    aboutChild
  ];
  
  ListView listView = ListView(children: myNavChildren);

  return Drawer(
    child: listView,
  );
  }

  @override 
  Widget build(BuildContext context){
    Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/home1.jpg'),
          AssetImage('assets/images/home2.jpg'),
          AssetImage('assets/images/home3.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 0.5,
        dotColor: Colors.orange[400],
      ),
    );
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.orange[300],
        title:  Text("Home"),
      ),
      
      
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
           new Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: new Text("",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        )),
                  ),
           
           new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text("  FOODIET",
                        style: new TextStyle(
                          color: Colors.orange[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )),
                  ),
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(6.0),
                    child: new Text('''  Siapa yang tak menginginkan tubuh yang langsing dan indah? Pasti semua orang menginginkan tubuh seperti itu. Cara yang paling ampuh untuk mendapatkannya adalah dengan program diet dan olahraga rutin. Sayangnya, tidak semua orang bisa konsisten dalam mempertahankan program penurunan berat badan mereka, terutama untuk diet.
''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text("  Alasan Diet Itu Penting",
                        style: new TextStyle(
                          color: Colors.orange[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )),
                  ),
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Diet dapat menghindarkan dari dementia dan alzheimer

Memang benar. Bahwa diet dapat menghindarkan Anda dari resiko terserang penyakit dementia atau alzheimer. Dengan menjaga berat badan tetap seimbang, makan nutrisi sehat serta berolahraga, otak akan tetap aktif dan menjalankan fungsinya dengan baik. Inilah mengapa orang-orang yang menjalankan diet dan diimbangi olahraga selalu terlihat fresh dan tidak pelupa. Mereka juga umumnya jarang terkena sakit flu atau tenggorokan.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),
          

          
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Diet menurunkan resiko terkena kanker

American Cancer Society menyarankan agar wanita memperhatikan dengan benar berat badan dan kandungan nutrisi makanan yang diasup. Mereka yang mendapatkan nutrisi sesuai kebutuhan dan menjaga berat badannya akan cenderung jauh dari resiko terkena kanker, terutama kanker payudara.
Mereka yang terserang kanker, umumnya adalah yang menderita problem berat badan dan menjalani lifestyle yang buruk.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),

                 
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Diet membantu penyembuhan lebih cepat
                    
Para ilmuwan percaya bahwa diet akan membatasi lemak di dalam tubuh dan membuatnya tetap pada jumlah normal. Yang artinya saat lemak jumlahnya normal, maka immune tubuh akan tetap terjaga dengan baik. Sehingga saat Anda sakit, proses penyembuhannya akan lebih cepat.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),

          
         
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Diet menyehatkan jantung
                    
Dan percaya atau tidak, diet memang jauh membuat jantung jadi lebih sehat. Jumlah lemak dan kolesterol dalam tubuh harus dijaga seimbang sehingga tidak mengganggu kesehatan jantung.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),
          

          
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Diet meningkatkan mood
                    
Apabila Anda tergolong mudah berubah mood, maka yang perlu Anda lakukan adalah menjalankan diet. Diet ini sangat berpengaruh terhadap mood seseorang dan dapat membuat orang jadi lebih rileks serta percaya diri.

Hal ini tak hanya bicara soal penampilan, tetapi juga bicara soal kesehatan yang sangat penting bagi tubuh Anda.

Namun ingat lagi, bahwa diet bukanlah tidak makan. Diet justru mengatur dan menyeimbangkan nutrisi apa saja yang memang dibutuhkan tubuh dan diperbolehkan masuk ke dalam tubuh. Untuk hasil yang terbaik, selalu iringi diet dengan olahraga agar tubuh tetap bugar.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),
          

         
          new Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: new Text('''Memang benar. Bahwa diet dapat menghindarkan Anda dari resiko terserang penyakit dementia atau alzheimer. Dengan menjaga berat badan tetap seimbang, makan nutrisi sehat serta berolahraga, otak akan tetap aktif dan menjalankan fungsinya dengan baik. Inilah mengapa orang-orang yang menjalankan diet dan diimbangi olahraga selalu terlihat fresh dan tidak pelupa. Mereka juga umumnya jarang terkena sakit flu atau tenggorokan.''',
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0
                        )),
                  ),
          

         
          
        ],
      ),

      backgroundColor: Colors.orange[50],
        //Set the nav drawer
        drawer: getNavDrawer(context),
    );
  }

}
