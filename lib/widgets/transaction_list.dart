import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_item.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  TransactionsList({this.transactions, this.deleteTx});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionItem(transaction: transactions[index], deleteTx: deleteTx);
        },
        itemCount: transactions.length,
        // child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        // listOfTransactions.map((tx) {
        //   return UserTransaction(
        //     amount: tx.amount,
        //     title: tx.title,
        //     date: tx.date,
        //     );}).toList(),

        // ),
      ),
    );
  }
}


