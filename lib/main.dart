import 'package:flutter/material.dart';
void main() => runApp(const SnackBarDemo());
class SnackBarDemo extends StatelessWidget {
 const SnackBarDemo({super.key});
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'SnackBar Demo',
 home: Scaffold(
 appBar: AppBar(
 title: const Text('SnackBar Demo'),
 ),
 body: const SnackBarPage(),
 ),
 );
 }
}
class SnackBarPage extends StatelessWidget {
 const SnackBarPage({super.key});
 @override
 Widget build(BuildContext context) {
 return Center(
 child: ElevatedButton(
 onPressed: () {
 final snackBar = SnackBar(
 content: const Text('Yay! A SnackBar!'),
 action: SnackBarAction(
 label: 'Undo',
 onPressed: () {
 },
 ),
 );
 ScaffoldMessenger.of(context).showSnackBar(snackBar);
 },
 child: const Text('Show SnackBar'),
 ),
 );
 }
}
