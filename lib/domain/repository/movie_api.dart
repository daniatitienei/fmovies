import 'package:fmovies/domain/models/movie/movie_list.dart';
import 'package:http/http.dart' as http;

abstract class MovieApiRepository {
  Future<MovieList> getComingSoonMovies();
}