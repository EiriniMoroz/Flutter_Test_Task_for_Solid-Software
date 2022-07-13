import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Task Solid Software',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color start_color = Colors.cyan;
  double start_font_size = 50.0;
  Color start_font_color = Colors.black;


  void changeBackground() {
    Color color = Color.fromARGB(Random().nextInt(256), Random().nextInt(256),
        Random().nextInt(256), Random().nextInt(256));
    setState(() {
      start_color = color;
    });
  }

  void changeFontSize() {
    double width = MediaQuery.of(context).size.width;
    double maxSize = width/10;
    start_font_size = Random().nextDouble()*maxSize+10;
  }

  void changeFontColor() {
    start_font_color = Color.fromARGB(Random().nextInt(256), Random().nextInt(256),
        Random().nextInt(256), Random().nextInt(256));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          changeBackground();
          changeFontSize();
          changeFontColor();
        },
      child: Container(
        color: start_color,
            child: GestureDetector(
                onTap: () {
                  changeBackground();
                  changeFontSize();
                  changeFontColor();
                },
                child: Align(
                  child: Text('Hey there',
                      style: new TextStyle(fontSize: start_font_size, color: start_font_color)),
                  alignment: Alignment.center,
                )

            )

      )
    );

  }
}
