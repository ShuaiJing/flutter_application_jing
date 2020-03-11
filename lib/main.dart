import 'package:flutter/material.dart';
import 'package:jing/screens/browser_screen.dart';
import 'package:jing/screens/home_screen.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 采坑入门',
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: const Color(0xFFEEEEEE),
        primaryTextTheme: const TextTheme(
          title: TextStyle(
            color: Color(0xFF011F3F),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        Browser.routeName: (_) => Browser(),
      },
    );
  }


}