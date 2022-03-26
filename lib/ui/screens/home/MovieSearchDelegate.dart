import 'package:flutter/material.dart';
import 'package:fmovies/data/repository/MovieApiImpl.dart';
import 'package:fmovies/domain/models/movie/SearchTitle.dart';
import 'package:fmovies/ui/screens/home/MovieCard.dart';
import 'package:fmovies/ui/screens/inspect_movie/InspectMovie.dart';

class MovieSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchFuture = MovieApiRepositoryImpl().searchTitle(query);
    return FutureBuilder<SearchTitle>(
      future: searchFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final results = snapshot.data!.results!;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25,
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context, index) {
              final movie = results[index];
              return MovieCard(
                imageUrl: movie.image.toString(),
                title: movie.title.toString(),
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InspectMovie(
                        id: movie.id.toString(),
                      ),
                    ),
                  );
                },
              );
            },
            itemCount: results.length,
          );
        } else {
          return const Center(
            child: Text("No search results"),
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
