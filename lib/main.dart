import 'package:flutter/material.dart';
import 'package:moneymate/screens/login_screen.dart';

void main() {
  runApp(FinanceApplication());
}

class FinanceApplication extends StatefulWidget {
  const FinanceApplication({super.key});

  @override
  State<FinanceApplication> createState() => _FinanceApplicationState();
}

class _FinanceApplicationState extends State<FinanceApplication> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
