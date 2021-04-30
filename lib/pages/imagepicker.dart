import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePicker extends StatefulWidget {
  ImagePicker({Key key}) : super(key: key);

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  //cosas que usare para el splash
  File file;

 /* void pickImage(int file) async {
    PickedFile pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (file == 1) {
        file1 = File(pickedFile.path);
      } else {
        file2 = File(pickedFile.path);
      }
    });
  }*/



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.green,
       ),
       body: SafeArea(
         child: Container(
           child:Column(
             children: [
               RaisedButton(
                 child: Text("image picker"),
                
               ),
               RaisedButton(
                 child:Text("Toast Example"),
               ),
             ],
           )
         )
       ),
    );
  }
}