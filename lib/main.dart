 import 'package:flutter/material.dart';
 import 'login.dart';

 void main(){
   runApp(
     new MaterialApp(
       theme: ThemeData(
         primarySwatch: Colors.indigo,
       ),
       title: "Login",
       home: Login(),
     )
   );
 }