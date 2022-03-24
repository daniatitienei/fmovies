import 'package:flutter/material.dart';
import 'package:fmovies/ui/screens/Home.dart';
import 'package:fmovies/ui/screens/InspectMovie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(color: Color.fromARGB(221, 27, 27, 27)),
        scaffoldBackgroundColor: Color.fromARGB(221, 27, 27, 27),
      ),
      home: const HomeScreen(),
    );
  }
}
