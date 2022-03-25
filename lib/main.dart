import 'package:flutter/material.dart';
import 'package:fmovies/ui/screens/home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviely',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        appBarTheme: const AppBarTheme(color: Color.fromARGB(221, 27, 27, 27)),
        scaffoldBackgroundColor: const Color.fromARGB(221, 27, 27, 27),
      ),
      home: const HomeScreen(),
    );
  }
}
