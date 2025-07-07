import 'package:flutter/material.dart';

void main() {
  runApp(FinanceApplication());
}

class LightMode {
  static const black = Color(0xFF272926);
  static const white = Colors.white;
}

class DarkMode {
  static const black = Color(0xFF272926);
  static const white = Colors.white;
}

class FinanceApplication extends StatefulWidget {
  const FinanceApplication({super.key});

  @override
  State<FinanceApplication> createState() => _FinanceApplicationState();
}

class _FinanceApplicationState extends State<FinanceApplication> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: isLightMode ? LightMode.white : DarkMode.black,
          foregroundColor: isLightMode ? LightMode.black : DarkMode.white,
        ),

        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            color: isLightMode ? LightMode.black : DarkMode.white,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            color: isLightMode ? LightMode.black : DarkMode.white,
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            color: isLightMode ? LightMode.black : DarkMode.white,
          ),
        ),
      ),

      home: Scaffold(
        backgroundColor: isLightMode ? LightMode.white : DarkMode.black,

        appBar: AppBar(
          title: Text("Money Mate"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isLightMode = !isLightMode;
                });
              },
              icon:
                  isLightMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            ),
          ],
        ),

        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Hello" , style: TextStyle(color: isLightMode ? LightMode.black : DarkMode.white , fontSize: 24)),
              Text("Hello" , style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}
