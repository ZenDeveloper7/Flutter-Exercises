import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Camera App"),
      ),
      body: Center(
        child: _image == null ? Text("No Image") : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optionsDialogBox,
        child: Icon(Icons.add_a_photo),
        tooltip: 'Open Camera',
      ),
    );
  }

  Future<void> _optionsDialogBox() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.all(Radius.circular(15))
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text(
                      'Take a picture',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onTap: openCamera,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Text(
                      'Open Gallery',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onTap: openGallery,
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future openCamera() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  Future openGallery() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }
}
