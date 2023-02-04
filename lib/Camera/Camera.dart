import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Camera extends StatelessWidget {

  late File imgfile;
  ImagePicker picker = ImagePicker();
  _openCamera() async{
    XFile? image = await picker.pickImage(source: ImageSource.camera);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(onPressed: (){_openCamera();},child: Text('Heloo'),),
    );
  }
}
