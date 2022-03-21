import 'package:flutter/material.dart';

class InspectMovie extends StatefulWidget {
  InspectMovie({Key? key}) : super(key: key);

  @override
  State<InspectMovie> createState() => _InspectMovieState();
}

class _InspectMovieState extends State<InspectMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("inspect"),
    );
  }
}
