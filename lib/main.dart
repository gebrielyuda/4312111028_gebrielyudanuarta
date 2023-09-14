import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(
      MaterialApp(
        builder: FToastBuilder(),
        home: MyApp(),
        navigatorKey: navigatorKey,
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24.0,
          ),
          ElevatedButton(
 onPressed: () {
 // Langkah 3
 Fluttertoast.showToast(
 msg: "THE toast message",
 toastLength: Toast.LENGTH_SHORT,
 timeInSecForIosWeb: 1,
 backgroundColor: Colors.black,
 textColor: Colors.white,
 fontSize: 16.0,
 );
 },
 child: const Text(
 'Show Toast Message',
 style: TextStyle(fontSize: 24),
 ),
),

        ],
      ),
    );
  }
}