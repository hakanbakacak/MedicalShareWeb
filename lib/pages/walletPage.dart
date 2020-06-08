import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding: const EdgeInsets.only(top:50.0, left: 50.0, right: 50.0, bottom: 50.0),
            child: WalletStateShower(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WalletIconButton(Icons.account_balance, "Hesabıma Aktar"),
              SizedBox(width:70),
              WalletIconButton(Icons.payment, "Ödeme Yap"),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WalletIconButton(Icons.present_to_all, "MSC Yolla"),
              SizedBox(width: 70),
              WalletIconButton(Icons.settings, "Ayarlar"),
            ],
          )
        ]));
  }
}

class WalletStateShower extends StatelessWidget {
  const WalletStateShower({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
          color: Color(0xff98D7C2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        //width: 360,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Toplam Medical Share Coin:", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, fontFamily: 'roboto'),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.only(left:14.0, right: 12),
                child: CircleAvatar(child:Icon(Icons.healing, color: Colors.teal, size: 30,), backgroundColor: Colors.white,),
              ),
              Text("245.33", style: TextStyle(fontSize:30),)
            ],)
            
          ],
        )
        );
  }
}

class WalletIconButton extends StatelessWidget {
  
  WalletIconButton(this.buttonIcon, this.name){}
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
          color: Color(0xff98D7C2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 500,
        height: 150,
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
