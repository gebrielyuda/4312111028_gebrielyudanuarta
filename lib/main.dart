import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
void main() {
  runApp(const MyApp());
}
//tess ya pak
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gebriel Yudanuarta/MJ 5B Karyawan')
      ),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return GiffyDialog.image (
                  Image.network('assets/img/google-jacket.gif',
                   height: 200,
                  fit: BoxFit.cover,
                  ),
                  title: Text('Men Wearing Jakets',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100),
                  ),
                  content: Text('This is a men wearning jakets',
                  textAlign: TextAlign.center,
                  ), 
          actions: [
         TextButton(
           onPressed: () => Navigator.pop (context, 'CANCEL'),
           child: const Text('CANCEL',
           textAlign: TextAlign.center,
           ),
         ),
         TextButton(
           onPressed: () => Navigator.pop(context,'OK'),
           child: const Text('OK',
           textAlign: TextAlign.center,
           ),
                    ),
                  ]
                );
              } 
            );
          },
        ),
      ),
    );
  }
}