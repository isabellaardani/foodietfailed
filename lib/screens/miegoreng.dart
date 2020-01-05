import 'package:flutter/material.dart';

class MieGorengScreen extends StatelessWidget {
  static const String routeName = "/miegoreng";

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/wow4.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Mie Goreng Shirataki',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''
Bahan-bahan	
•	1 pack mie shirataki
•	5 bh bawang merah, iris
•	1 bh paprika, iris
•	100 gr baby buncis
•	Secukupnya sawi asin
•	2 butir telur, kocok lepas
•	1/2 sdt merica bubuk
•	3 sdm saus tiram
•	2 sdm kecap manis
•	3 bh rawit merah, potong bulat (opt)


Langkah	
•	Siapkan mie Shirataki, rebus dlm air mendidih yg diberi sdkt garam dan 1 sdm minyak sayur. Stlh matang (lembut) angkat >> tiriskan
•	Siapkan bumbu² dan potongan sayur yg telah dicuci
•	Tumis bawang merah hg kuning lalu masukkan telur buat orak arik baru + paprika, aduk² hg harum + sayuran, masak hg lunak kemudian beri merica bubuk, aduk rata.
•	Masukkan mie Shirataki, aduk hg merata baru + saus tiram dan kecap manis serta 1 sdm kecap ikan jika suka, aduk² masak dg api kecil. Setelah tercampur rata baru besarkan api, masak sebentar lalu matikan apinya.
•	Sajikan panas². Enjoy 😋 

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