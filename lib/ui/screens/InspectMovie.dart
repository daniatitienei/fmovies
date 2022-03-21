import 'package:flutter/material.dart';
import 'package:fmovies/domain/models/movie/Movie.dart';

class InspectMovie extends StatelessWidget {
  const InspectMovie({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(movie.fullTitle.toString()),
      ),
    );
  }
}
