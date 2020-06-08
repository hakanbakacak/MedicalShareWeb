import 'package:flutter/material.dart';

List<double> transactionAmount = [10.0, 14.4, -125.50, 5.3, 45.2, -100.0, 12.3];
List<String> transactionMessage = [
  "A Laboratuvarı Veri İsteği",
  "B Araştırma Merkezi Veri İsteği",
  "Nakit Avans Veri İsteği",
  "D Şirketi Veri İsteği",
  "Fatura Ödemesi Veri İsteği",
  "F Üniversitei Veri İsteği",
  "G Projesi Veri İsteği"
];

class NotificationPage extends StatelessWidget {
  Color pageColor;
  NotificationPage(this.pageColor) {}
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              "Bildirimler",
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: transactionAmount.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: TransactionCard(transactionAmount[index],
                        transactionMessage[index], pageColor),
                  );
                }),
          )
        ]));
  }
}

class TransactionCard extends StatefulWidget {
  TransactionCard(this.money, this.message, this.pageColor) {}
  Color pageColor;
  double money;
  String message;
  //String signedMoney;
  @override
  _TransactionCardState createState() => _TransactionCardState(money, message);
}

class _TransactionCardState extends State<TransactionCard> {
  double money;
  String message;
  var moneyColor = Colors.white;
  DateTime date = DateTime.now();
  _TransactionCardState(double _money, String _message) {
    money = _money;
    message = _message;
    if (money > 0)
      moneyColor = Colors.green[400];
    else
      moneyColor = Colors.white70;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white70),
          borderRadius: BorderRadius.circular(6),
          color: Color(0xff2B5C99),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
          ),
          //color: Color(0xff76A5A5)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(date.day.toString(),
                            style:
                                TextStyle(fontSize: 24, color: Colors.white70)),
                        Text(date.month.toString(),
                            style:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                        Text(date.year.toString(),
                            style:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                      ])),
                  Container(
                    child: VerticalDivider(
                        color: Colors.white10, thickness: 0.1, width: 0.4),
                    height: 45,
                    color: Colors.white,
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      date.hour.toString() + "." + date.minute.toString(),
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      message,
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xff27496d),
                    ),
                    backgroundColor: Colors.white70,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
