import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastExample extends StatefulWidget {
  ToastExample({Key key}) : super(key: key);

  @override
  _ToastExampleState createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.yellow,
         title: Text("Toast Example"),
       ),
       body: SafeArea(
         child: Container(
           child: Center(
             child: RaisedButton(
               child: Text("Show me toast"),
               onPressed:()=> Fluttertoast.showToast(msg: 'Im toast hello',toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.BOTTOM
               ),
             ),
           ),
         ),
       ),
    );
  }
}