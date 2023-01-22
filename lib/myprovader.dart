
import 'package:flutter/material.dart';

/// يتم تخزين الحاله state فيه
class My_Provader  with ChangeNotifier{

int countere=0;

/// الداله الي يتم استدعاها عند الضغط عليها

 void increment (){

   countere++;
     ///to here the change in state
   notifyListeners();
 }
/// end the coding the provider
}