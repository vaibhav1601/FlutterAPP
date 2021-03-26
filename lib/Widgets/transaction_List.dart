import 'package:flutter/material.dart';
import 'package:flutter_application_demo/model/transction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> mTransaction;

  TransactionList(this.mTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: mTransaction.map((tx) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple,
                      width: 2,
                      style: BorderStyle.solid)),
              child: Text(
                '\₹${tx.amount}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              padding: EdgeInsets.all(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${tx.title}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat.yMMMEd().format(tx.date),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ));
      }).toList(),
    );
  }
}
