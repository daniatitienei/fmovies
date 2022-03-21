class MostPopularMovies {
  List<Items>? movies;
  String? errorMessage;

  MostPopularMovies({this.movies, this.errorMessage});

  MostPopularMovies.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      movies = <Items>[];
      json['items'].forEach((v) {
        movies!.add(new Items.fromJson(v));
      });
    }
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (movies != null) {
      data['items'] = movies!.map((v) => v.toJson()).toList();
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class Items {
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

  Items(
      {this.id,
      this.rank,
      this.rankUpDown,
      this.title,
      this.fullTitle,
      this.year,
      this.image,
      this.crew,
      this.imDbRating,
      this.imDbRatingCount});

  Items.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
}