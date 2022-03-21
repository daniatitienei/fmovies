import 'package:fmovies/domain/models/movie/coming_soon.dart';
import 'package:fmovies/domain/models/movie/most_popular.dart';
import 'package:http/http.dart' as http;

abstract class MovieApiRepository {
  Future<CommingSoonMovies> getComingSoonMovies();
  Future<MostPopularMovies> getMostPopularMovies();
}