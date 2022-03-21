import 'package:fmovies/domain/models/movie/CommingSoonMovies.dart';

class Movie {
  String? id;
  String? rank;
  String? rankUpDown;
  String? title;
  String? fullTitle;
  String? year;
  String? image;
  String? crew;
  String? imDbRating;
  String? imDbRatingCount;

  Movie({
    this.id,
    this.rank,
    this.rankUpDown,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
    this.imDbRatingCount,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rank = json['rank'];
    rankUpDown = json['rankUpDown'];
    title = json['title'];
    fullTitle = json['fullTitle'];
    year = json['year'];
    image = json['image'];
    crew = json['crew'];
    imDbRating = json['imDbRating'];
    imDbRatingCount = json['imDbRatingCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['rank'] = rank;
    data['rankUpDown'] = rankUpDown;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['year'] = year;
    data['image'] = image;
    data['crew'] = crew;
    data['imDbRating'] = imDbRating;
    data['imDbRatingCount'] = imDbRatingCount;
    return data;
  }

  Movie.fromCommingSoonMovie(CommingSoonMovie commingSoonMovie) {
    id = commingSoonMovie.id;
    title = commingSoonMovie.title;
    fullTitle = commingSoonMovie.fullTitle;
    year = commingSoonMovie.year;
    image = commingSoonMovie.image;
    imDbRating = commingSoonMovie.imDbRating;
    imDbRatingCount = commingSoonMovie.imDbRatingCount;
  }
}
