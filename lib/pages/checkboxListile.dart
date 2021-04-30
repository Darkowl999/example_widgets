import 'package:flutter/material.dart';

class CheckboxListileExample extends StatefulWidget {
  CheckboxListileExample({Key key}) : super(key: key);

  @override
  _CheckboxListileExampleState createState() => _CheckboxListileExampleState();
}

class _CheckboxListileExampleState extends State<CheckboxListileExample> {

  var _value=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orangeAccent,
         title: Text("Checkbox listitle example"),
       ),
       body: CheckboxListTile(
         value: _value,
         onChanged: (value){
           setState(() {//es para cambiar el estado del checkbox
             _value = value;
           });
         },
         activeColor: Colors.green,
         checkColor: Colors.black,
         title: Text("Insert title here"),
         subtitle: Text("inser subtitle here"),
         isThreeLine: false,
         dense: true,
         secondary: Icon(Icons.person),
         selected: true,
         selectedTileColor: Colors.yellow,
       )
    );
  }
}