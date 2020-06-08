import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              "Anasayfa",
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
          ),
          Stack(children: [
            
            Container(
            height: MediaQuery.of(context).size.height*0.7585,
            width: MediaQuery.of(context).size.width*0.6,
            ///rwidth: 385,
            child: GridView.count(
              crossAxisCount: 2,

              children: [
              HomePageCard("assets/dna_test.jpg", "Medical Share Aracılığı Verilerinin Toplandığı Genom Projesi Sonuçlandı."),
              HomePageCard("assets/covid19.jpg", "Covid-19 Tedavisi için Yapılan Araştırmadan Güzel Haber. "),
              HomePageCard("assets/kanser.jpg", "Kanser Tedavisi İçin Çalışma Yapan A şirketi Veri Toplamada Rekor Kırdı."),
              HomePageCard("assets/dna_test.jpg", "Medical Share Aracılığı Verilerinin Toplandığı Genom Projesi Sonuçlandı."),
              HomePageCard("assets/covid19.jpg", "Covid-19 Tedavisi için Yapılan Araştırmadan Güzel Haber. "),
              HomePageCard("assets/kanser.jpg", "Kanser Tedavisi İçin Çalışma Yapan A şirketi Veri Toplamada Rekor Kırdı.")

            ],),
          ),
          Positioned(right: 0,bottom: 10 ,child: FloatingActionButton(onPressed: (){},backgroundColor: Colors.indigo[400], child:Icon(Icons.attach_file)))
          ],),
          
        ]
      ),
    );
  }
}

class HomePageCard extends StatelessWidget 
{
  String cardString;
  String cardImageName;
  HomePageCard(this.cardImageName, this.cardString);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0, bottom: 60.0, left: 10.0, right: 65.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white70),
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
         
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Container(
              
              decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white70),
            borderRadius: BorderRadius.circular(6),
            color: Colors.indigo[400],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
                ),
                height: 200,
                width: 438,
                child: Image.asset(cardImageName, fit: BoxFit.cover,),
            ),

                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(cardString, style: TextStyle(fontSize:16, color: Colors.black), ),
                  ),
                ),

                IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: (){print("Paylaş buton");})

          ],
        ),
      ),
    );
  }
}


class HomePageButton extends StatelessWidget {
  
  HomePageButton(this.buttonIcon, this.name){}
  final IconData buttonIcon;
  final String name;
  Widget buttonFunction(){

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white70),
          borderRadius: BorderRadius.circular(6),
          color: Colors.indigo[400],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 125,
        height: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Icon(buttonIcon, ),
            SizedBox(height:13),
            Text(name, style: TextStyle(fontSize:16),)
          ]
        )
        );
  }
}
