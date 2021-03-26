import 'package:flutter/material.dart';
import 'userTransaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransation;
  final mTitle = TextEditingController();
  final mTotalAmount = TextEditingController();

  NewTransaction(this.addNewTransation);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: mTitle,
              // onChanged: (val) => mTitle = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: mTotalAmount,
              // onChanged: (val) => mTotalAmount = val,
            ),
            FlatButton(
                child: Text('Add Transaction'),
                textColor: Colors.purple,
                onPressed: () {
                  addNewTransation(
                      mTitle.text, double.parse(mTotalAmount.text));
                }),
          ],
        ),
      ),
    );
  }
}
