import 'package:chat_app/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[700],
        textTheme: TextTheme(titleSmall:
        TextStyle(fontWeight: FontWeight.bold)

        ),
        primaryTextTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        primaryIconTheme: IconThemeData(
          color: Colors.white
        )

      ),
      home: Home(),
    );
  }
}
