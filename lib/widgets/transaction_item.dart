import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';


class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.transaction
,
    @required this.deleteTx,
  }) : super(key: key);

  final Transaction transaction;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        child: ListTile(
        leading: CircleAvatar(
          radius: 40, 
          child: Padding(
            padding: EdgeInsets.all(12),
              child: FittedBox(child: Text('\$${transaction.amount}'))),),
        title: Text('${transaction.title}'),
        subtitle: Text(DateFormat.yMMMMd().format(transaction.date)),
        trailing: MediaQuery.of(context).size.width > 400 ? FlatButton.icon(onPressed: () => deleteTx(transaction.id), icon: Icon(Icons.delete), label: Text('Delete'), textColor: Theme.of(context).errorColor,) :  IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () => deleteTx(transaction.id),
        ),  
      ),
    );
  }
}