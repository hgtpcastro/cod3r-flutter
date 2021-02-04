import 'dart:math';

import 'package:flutter/material.dart';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tênis de corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 211.30, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Conta de água', value: 211.30, date: DateTime.now()),
    Transaction(
        id: 't4', title: 'Conta de net', value: 211.30, date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Conta de tv', value: 98.90, date: DateTime.now()),
    Transaction(
        id: 't6', title: 'Conta netflix', value: 211.30, date: DateTime.now()),
    Transaction(
        id: 't7', title: 'Conta oi', value: 211.30, date: DateTime.now()),
    Transaction(
        id: 't8', title: 'Conta vivo', value: 211.30, date: DateTime.now()),
  ];

  _addNewTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
