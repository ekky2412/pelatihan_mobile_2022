import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ImagePickerHome extends StatefulWidget {
  const ImagePickerHome({Key? key}) : super(key: key);

  @override
  _ImagePickerHomeState createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome> {
  String _imagePath = "";
  final ImagePicker _picker = ImagePicker();
  Future<String> getImage(bool isCamera) async{
    final XFile? image;
    if(isCamera){
      image = await _picker.pickImage(source: ImageSource.camera);
    } else {
      image = await _picker.pickImage(source: ImageSource.gallery);
    }
    return image!.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: () async {
                  _imagePath = await getImage(false);
                  setState(() {

                  });
                },
                icon: Icon(Icons.insert_drive_file)),
            SizedBox(height: 10,),
            IconButton(
                onPressed: () async {
                  _imagePath = await getImage(true);
                  setState(() {

                  });
                },
                icon: Icon(Icons.camera_alt)),
            _imagePath.isEmpty ? Container() : Image.file(File(_imagePath),height: 300, width: 300,),
          ],
        ),
      ),
    );
  }
}
