import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';
import 'myprovader.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      /// HOW CAN UES THE PROVIDER  as parent for CounterPro ///

      home: ChangeNotifierProvider <My_Provader>(
          create: (_)=>  My_Provader() ,
          child: CounterPro()),
    );
  }
}

class CounterPro extends StatelessWidget{
  int n =0;
  @override
  Widget build(BuildContext context) {
    print("n= ${n++}");
    return Scaffold(
      appBar: AppBar(
        title:  Text('Dem'),
        backgroundColor: Color(0XFF9A96AF),
      ),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF9A96AF),
        child:  Icon(Icons.add),
        onPressed: () {
        /// used the funcation in provider ///
          /// لازم احدد البروفيدر الي اقصده ///
          Provider.of<My_Provader>(context,listen: false).increment();

        },
      ),
    );
  }
}
