import 'package:flutter/material.dart';
import 'ui_view/PageTwo.dart'; 
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) { 
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: MyHomePage(),
);
}
}
class MyHomePage extends StatelessWidget { 
@override
Widget build(BuildContext context) {

return Scaffold( 
appBar: AppBar(
title: Text("Navigator"),
),
body: Row(
mainAxisAlignment: MainAxisAlignment.center, 
children: <Widget>[
MaterialButton(
color: Colors.yellow, 
child: Text("Page 2"), 
onPressed: () {
// dibuat berikutnya
Navigator.push(context, MaterialPageRoute( 
builder: (context) => PageTwo()
)
);
},
),
],
)
);
}
}