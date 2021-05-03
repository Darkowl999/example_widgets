import 'package:example_widgets/pages/checkboxListile.dart';
import 'package:example_widgets/pages/multiselectflutter.dart';
import 'package:example_widgets/pages/multiselectformfield.dart';
import 'package:example_widgets/pages/toast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("widgets Example"),
      ),
      body: Center(
        child: buildColumn(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("MODAL"),
            onPressed:()=> _onButtonPressed(),
          ),
          Text(
            _selectedItem,
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            child: Text("ImagePicker"),
          ),
           RaisedButton(
            child: Text("ToastExample"),
            onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            //este navigator es para la ruta//
                            builder: (context) => ToastExample()),
                      );
                    },

          ),
          SizedBox(height: 10),
            RaisedButton(
            child: Text("CheckboxListile"),
            onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            //este navigator es para la ruta//
                            builder: (context) =>CheckboxListileExample()),
                      );
                    },

          ),
            RaisedButton(
            child: Text("Multiselect Example"),
            onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            //este navigator es para la ruta//
                            builder: (context) =>MultiselectExample()),
                      );
                    },

          ),
          RaisedButton(
            child: Text("Multiselect 2"),
            onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            //este navigator es para la ruta//
                            builder: (context) =>Multi()),
                      );
                    },

          ),

          
          
        ],
      );
  }
  
  void _onButtonPressed(){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('cooling'),
            onTap: ()=> _selecItem('cooling'),
          )
      );

    });
  }

  void _selecItem(String item){
    Navigator.pop(context);
    setState(() {
      _selectedItem=item;
    });
  }

}
