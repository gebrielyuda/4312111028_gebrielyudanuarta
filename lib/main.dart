import 'package:flutter/material.dart';
import 'package:gebrielyudanuarta_mj5bmalam_tugas5/ui_view/login.dart';
import 'package:gebrielyudanuarta_mj5bmalam_tugas5/ui_view/signup.dart';

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
    // This widget is the root of your application. 
    @override
    Widget build(BuildContext context) { 
     return MaterialApp(
      title: 'Login Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
   class HomePage extends StatelessWidget { 
     @override
     Widget build(BuildContext context) { 
       return Scaffold(
         backgroundColor: Colors.lightBlue, 
         body: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Icon(Icons.android, color: Colors.white,size: 45,), 
              SizedBox(height: 200,),
              Text("Welcome to Flutter", style: TextStyle(color: 
  Colors.white, fontSize: 22)),
              SizedBox(height: 10,),
              Text("Get real-time updates about what", style: 
    TextStyle(color: Colors.white, fontSize: 18)),
              Text("maters to you", style: TextStyle(color: 
  Colors.white, fontSize: 18)),
              SizedBox(height: 20,),
              MaterialButton(
                  minWidth: 210, 
                  color: Colors.white,
                  textColor: Colors.lightBlue,
                  child: Text("Sign Up", style: TextStyle(fontWeight: 
     FontWeight.bold, fontSize: 18),),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: 
      (context) => SignUp()));
            },
            ),
            ElevatedButton(
               child: Text("Log in", style: TextStyle(color: 
    Colors.white, fontWeight: FontWeight.bold,fontSize: 18),),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: 
      (context) => Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}