import 'package:flutter/material.dart';
import 'package:fmovies/data/repository/movie_api_impl.dart';
import 'package:fmovies/domain/models/movie/movie_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<MovieList> movies;

  @override
  void initState() {
    super.initState();
    movies = MovieApiRepositoryImpl().getComingSoonMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<MovieList>(
          future: movies,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.items!.length.toString());
            } else {
              return Text('${snapshot.error}}');
            }
          },
        ),
      ),
    );
  }
}
