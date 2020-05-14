import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
final List<Transaction> transactions = [
  Transaction(id: '1', title: 'New shoes', amount: 99.99, date: DateTime.now()),
  Transaction(id: '2', title: 'groceries', amount: 53.47, date: DateTime.now())
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.amber,
            child: Container(
              width: double.infinity,
              child: Text('CHART!'),
            ),
          ),
         Column(children: transactions.map((transaction) {
           return Card(child: Text(transaction.title),);
         }).toList(),)
        ],
      ),
    );
  }
}
