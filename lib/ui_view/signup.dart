import 'package:flutter/material.dart';
import 'package:gebrielyudanuarta_mj5bmalam_tugas5/ui_view/login.dart';

class SignUp extends StatelessWidget { 
@override
Widget build(BuildContext context) { 
return Scaffold(

backgroundColor: Colors.amber, 
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center, 
children: <Widget>[
Container(
padding: EdgeInsets.all(10), 
color: Colors.black87, 
width: 250,
child: TextFormField( 
decoration: InputDecoration(
hintText: "Fullname",
hintStyle: TextStyle(color: Colors.white), 
border: InputBorder.none
),
),
),
SizedBox(height: 10,), 
Container(
padding: EdgeInsets.all(10), 
color: Colors.black87, 
width: 250,
child: TextFormField( 
decoration: InputDecoration(
hintText: "Email",
hintStyle: TextStyle(color: Colors.white), 
border: InputBorder.none
),
),
),
SizedBox(height: 10,), 
Container(
padding: EdgeInsets.all(10), 
color: Colors.black87, 
width: 250,
child: TextFormField( 
decoration: InputDecoration(
hintText: "Password",
hintStyle: TextStyle(color: Colors.white), 
border: InputBorder.none
),
),
),
SizedBox(height: 20,),


MaterialButton(
padding: EdgeInsets.all(20), 
minWidth: 250,
child: Text("REGISTER", style: TextStyle(color: 
Colors.white),),
color: Colors.black,
onPressed: () {},
),
ElevatedButton(
child: Text("Already registered! Login me", style: 
TextStyle(color: Colors.white),),
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