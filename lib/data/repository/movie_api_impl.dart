import 'dart:convert';

import 'package:fmovies/auth/secrets.dart';
import 'package:fmovies/domain/models/movie/movie_list.dart';
import 'package:fmovies/domain/repository/movie_api.dart';
import 'package:fmovies/ui/utils/constants.dart';
import 'package:http/http.dart' as http;

class MovieApiRepositoryImpl extends MovieApiRepository {
  @override
  Future<MovieList> getComingSoonMovies() async {
    final response = await http
        .get(Uri.parse("$MOVIES_API_BASE_URL/ComingSoon/$MOVIES_API_SECRET"));

    if (response.statusCode == 200) {
        return MovieList.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
