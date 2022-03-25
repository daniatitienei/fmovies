import 'package:fmovies/domain/models/movie/CommingSoonMovies.dart';
import 'package:fmovies/domain/models/movie/MostPopularMovies.dart';
import 'package:fmovies/domain/models/movie/Movie.dart';
import 'package:fmovies/domain/models/movie/SearchTitle.dart';

abstract class MovieApiRepository {
  Future<CommingSoonMovies> getComingSoonMovies();
  Future<MostPopularMovies> getMostPopularMovies();
  Future<Movie> getMovieById(String id);
  Future<SearchTitle> searchTitle(String expression);
}
