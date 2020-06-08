import 'package:flutter/material.dart';
import 'package:medical_share_web/pages/homePage.dart';
import 'package:medical_share_web/pages/notificationsPage.dart';
import 'package:medical_share_web/pages/transactionHistoryPage.dart';
import 'package:medical_share_web/pages/walletPage.dart';
import 'view/bottombar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MRM Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Anasayfa",
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: "İşlemler",
      iconData: Icons.loop,
      //color: Colors.purple,
      color: Color(0xff6a097d)
    ),
    BarItem(
      text: "Uyarılar",
      iconData: Icons.notifications,
      color: Color(0xff27496d),
    ),
    BarItem(
      text: "Cüzdan",
      iconData: Icons.account_balance_wallet,
      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarState createState() =>
      _BottomBarState();
}

class _BottomBarState
    extends State<BottomBar> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedBarIndex) {
      case 0:
        page = HomePage();
        break;
      case 1:
        page = TransactionHistory(); 
        break;
      case 2:
        page = NotificationPage(widget.barItems[0].color);
        break;
      case 3: 
        page = WalletPage();
        break;
      default:
    }
    return Scaffold(
      body: AnimatedContainer(
        color: widget.barItems[selectedBarIndex].color,
        duration: const Duration(milliseconds: 300),
        child: Center(child: page)
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
            fontSize: 20.0,
            iconSize: 30.0
          ),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}