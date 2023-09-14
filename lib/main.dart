import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 home: Scaffold(
 appBar: AppBar(title: Text("Tutorial Membuat Alert")),
 body: LoginPage(),
 ),
 );
 }
}

class LoginPage extends StatefulWidget {
 @override
 _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
 TextEditingController _emailController = TextEditingController();
 TextEditingController _passwordController = TextEditingController();
 @override
 Widget build(BuildContext context) {
 return Center(
 child: Padding(
 padding: const EdgeInsets.all(20),
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 TextFormField(
 controller: _emailController,
 maxLines: 1,
 keyboardType: TextInputType.emailAddress,
 decoration: InputDecoration(
 labelText: "Email",
 hintText: "Masukkan Email",
 prefixIcon: Icon(Icons.mail),
 border: OutlineInputBorder(
 borderRadius: BorderRadius.circular(8.0),
 ),
 ),
 ),
 SizedBox(height: 20),
 TextFormField(
 controller: _passwordController,
 maxLines: 1,
 keyboardType: TextInputType.visiblePassword,
 decoration: InputDecoration(
 labelText: "Password",
 hintText: "Masukkan Password",
 prefixIcon: Icon(Icons.lock),
 border: OutlineInputBorder(
 borderRadius: BorderRadius.circular(8.0),
 ),
 ),
 ),
 SizedBox(height: 25),
 ElevatedButton(
 onPressed: () => submit(
 context,
 _emailController.text,
 _passwordController.text,
 ), 
 child: Text("Login"),
 )
 ],
 ),
 ),
 );
 }

void submit(BuildContext context, String email, String password) {
 if (email.isEmpty || password.isEmpty) {
 final snackBar = SnackBar(
 duration: const Duration(seconds: 5),
 content: Text("Email dan password harus diisi"),
 backgroundColor: Colors.red,
 );
 ScaffoldMessenger.of(context).showSnackBar(snackBar);
 return;
 }
 AlertDialog alert = AlertDialog(
 title: Text("Login Berhasil"),
 content: Container(
 child: Text("Selamat Anda Berhasil login"),
 ),
 actions: [
 TextButton(
 child: Text('Ok'),
 onPressed: () => Navigator.of(context).pop(),
 ),
 ],
 );
 showDialog(context: context, builder: (context) => alert);
 return;
 }
}
