import 'package:flutter/material.dart';
import 'package:moneymate/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Login")),

        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter email'),
                ),

                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter password'),
                ),

                SizedBox(height: 30),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()
                  ),
                  );
                }, child: Text("Login"))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
