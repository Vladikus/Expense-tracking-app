import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final double amount;
  final DateTime date;
  final String id;

  Transaction(
      {@required this.title, @required this.amount, @required this.date, @required this.id});
}
