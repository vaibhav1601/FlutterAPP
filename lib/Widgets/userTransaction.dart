import 'package:flutter/material.dart';
import 'transaction_List.dart';
import 'newTransaction.dart';
import 'package:flutter_application_demo/model/transction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> mTransactionList = [
    Transaction(id: 't1', title: 'Marathi', amount: 2000, date: DateTime.now()),
    Transaction(id: 't2', title: 'Maths', amount: 6000, date: DateTime.now()),
    Transaction(id: 't3', title: 'History', amount: 7000, date: DateTime.now()),
    Transaction(id: 't4', title: 'Science', amount: 3000, date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Social Science', amount: 2000, date: DateTime.now()),
  ];

  void _addNewTransaction(String mTitle, double mAmount) {
    int mId = 0;
    mId++;
    String _Id = 't' + mId.toString();

    final newTransaction = Transaction(
        id: _Id, title: mTitle, amount: mAmount, date: DateTime.now());

    setState(() {
      mTransactionList.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            NewTransaction(_addNewTransaction),
            TransactionList(mTransactionList),
          ],
        )
      ],
    );
  }
}
