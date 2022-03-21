import 'package:fmovies/domain/models/movie/Movie.dart';

class MostPopularMovies {
  List<Movie>? movies;
  String? errorMessage;

  MostPopularMovies({this.movies, this.errorMessage});

  MostPopularMovies.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      movies = <Movie>[];
      json['items'].forEach((v) {
        movies!.add(Movie.fromJson(v));
      });
    }
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (movies != null) {
      data['items'] = movies!.map((v) => v.toJson()).toList();
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}
