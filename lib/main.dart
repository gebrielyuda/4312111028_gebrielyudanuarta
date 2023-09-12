import 'package:flutter/material.dart';
void main() {
 runApp(MainApp());
}
class MainApp extends StatefulWidget {
 @override
 _MainAppState createState() => _MainAppState();
}


class _MainAppState extends State<MainApp> {
   @override
   Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     appBar: AppBar(title: Text("InkWell"),),
     body: Center(
     child: Ink(
        decoration: BoxDecoration(
             color: Colors.black,
            borderRadius: BorderRadius.circular(24),
        ),

           child: InkWell(
              borderRadius: new BorderRadius.circular(24),
               onTap: () => setState(() {}),
               child: Container(
               width: 100.0,
               height: 100.0,
               alignment: Alignment.center,
                child: Text(
                'InkWell',
                 style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}