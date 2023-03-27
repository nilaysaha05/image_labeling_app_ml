import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ImagePicker _imagePicker;
  File? _image;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _imagePicker = ImagePicker();
  }


  _imageFromGallery() async {
    XFile? pickedFile = await _imagePicker.pickImage(source:ImageSource.gallery);
    if(pickedFile!=null)
      {
        setState(() {
          _image = File(pickedFile.path);
        });
      }

  }

  _imageFromCamera() async {
    XFile? pickedFile = await _imagePicker.pickImage(source:ImageSource.camera);

      setState(() {
        _image = File(pickedFile!.path);
      });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                color: Colors.grey,
                child: _image ==null ? const Icon(
                  Icons.image,
                  size: 100,
                ) : Image.file(_image!),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _imageFromGallery,
              child: const Text("Gallery"),
            ),
            ElevatedButton(
              onPressed: _imageFromCamera,
              child: const Text("Camera"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Results will show here'),
          ],
        ),
      ),
    );
  }
}
