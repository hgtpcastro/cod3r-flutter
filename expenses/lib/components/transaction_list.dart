import 'package:flutter/material.dart';

import 'package:expenses/components/transaction_item.dart';
import 'package:expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function({
    String id,
  }) onRemoveTransaction;

  TransactionList({
    this.transactions,
    this.onRemoveTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Nenhuma transação cadastrada!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: constraints.maxHeight * 0.60,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: this.transactions.length,
            itemBuilder: (ctx, index) {
              final transaction = this.transactions[index];
              return TransactionItem(
                transaction: transaction,
                onRemoveTransaction: onRemoveTransaction,
              );
            },
          );
  }
}
