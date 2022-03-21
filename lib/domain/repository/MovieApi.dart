import 'package:fmovies/domain/models/movie/CommingSoonMovies.dart';
import 'package:fmovies/domain/models/movie/MostPopularMovies.dart';
import 'package:http/http.dart' as http;

abstract class MovieApiRepository {
  Future<CommingSoonMovies> getComingSoonMovies();
  Future<MostPopularMovies> getMostPopularMovies();
}