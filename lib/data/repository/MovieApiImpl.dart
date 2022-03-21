import 'dart:convert';

import 'package:fmovies/auth/Secrets.dart';
import 'package:fmovies/domain/models/movie/CommingSoonMovies.dart';
import 'package:fmovies/domain/models/movie/MostPopularMovies.dart';
import 'package:fmovies/domain/repository/MovieApi.dart';
import 'package:fmovies/ui/utils/constants.dart';
import 'package:http/http.dart' as http;

class MovieApiRepositoryImpl extends MovieApiRepository {
  @override
  Future<CommingSoonMovies> getComingSoonMovies() async {
    final response = await http
        .get(Uri.parse("$MOVIES_API_BASE_URL/ComingSoon/$MOVIES_API_SECRET"));

    if (response.statusCode == 200) {
        return CommingSoonMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Future<MostPopularMovies> getMostPopularMovies() async {
    final response = await http
        .get(Uri.parse("$MOVIES_API_BASE_URL/MostPopularMovies/$MOVIES_API_SECRET"));

    if (response.statusCode == 200) {
        return MostPopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
