import 'package:counter/myprovader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(Provider.of<My_Provader>(context).countere.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
