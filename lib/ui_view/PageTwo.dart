import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         MaterialButton(
         color: Colors.lightBlue,
         child: Text("Kembali Menggunakan Pop"),
         onPressed: () {
          Navigator.pop(context);
         },
         )
        ],
      ));
  }
}