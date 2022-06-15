import 'package:d_day_app/main_screen.dart';
import 'package:d_day_app/screen1.dart';
import 'package:flutter/material.dart';
import 'package:d_day_app/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 0,
    );
    return PageView(
      children: [
        Main_screen(),
        Screen1(),
      ],
    );
  }
}
