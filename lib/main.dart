import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AccessCameraPage(),
    );
  }
}

  class AccessCameraPage extends StatefulWidget {
    @override
    _AccessCameraPageState createState() => _AccessCameraPageState();
}

  class _AccessCameraPageState extends State<AccessCameraPage> {
   File? _image;
   //digunakan untuk menampung image

        Future<void> openCamera() async { //fuction openCamera();
          final pickedImage =
            await ImagePicker().pickImage(source: ImageSource.camera);

          setState(() { // tempat untuk set state image
              _image = File(pickedImage!.path);
 });
}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Access Camera"),
      ),
      body: Container(
          child: Center(
            child: _image == null ? Text("No Image") : Image.file(_image!),
          ),
        ), 
        floatingActionButton: FloatingActionButton(
            child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
            backgroundColor: Colors.green,
            onPressed: () {
            openCamera();
          }),
    );
  }
}