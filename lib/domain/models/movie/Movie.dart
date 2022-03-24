// ignore_for_file: void_checks

class Movie {
  String? id;
  String? title;
  String? originalTitle;
  String? fullTitle;
  String? type;
  String? year;
  String? image;
  String? releaseDate;
  String? runtimeMins;
  String? runtimeStr;
  String? plot;
  String? plotLocal;
  bool? plotLocalIsRtl;
  String? awards;
  String? directors;
  List<DirectorList>? directorList;
  String? writers;
  List<WriterList>? writerList;
  String? stars;
  List<StarList>? starList;
  List<Actor>? actor;
  void fullCast;
  String? genres;
  List<GenreList>? genreList;
  String? companies;
  List<CompanyList>? companyList;
  String? countries;
  List<CountryList>? countryList;
  String? languages;
  List<LanguageList>? languageList;
  String? contentRating;
  String? imDbRating;
  String? imDbRatingVotes;
  String? metacriticRating;
  Ratings? ratings;
  void wikipedia;
  void posters;
  Images? images;
  Trailer? trailer;
  BoxOffice? boxOffice;
  String? tagline;
  String? keywords;
  List<String>? keywordList;
  List<Similars>? similars;
  void tvSeriesInfo;
  void tvEpisodeInfo;
  void errorMessage;

  Movie(
      {this.id,
      this.title,
      this.originalTitle,
      this.fullTitle,
      this.type,
      this.year,
      this.image,
      this.releaseDate,
      this.runtimeMins,
      this.runtimeStr,
      this.plot,
      this.plotLocal,
      this.plotLocalIsRtl,
      this.awards,
      this.directors,
      this.directorList,
      this.writers,
      this.writerList,
      this.stars,
      this.starList,
      this.actor,
      this.fullCast,
      this.genres,
      this.genreList,
      this.companies,
      this.companyList,
      this.countries,
      this.countryList,
      this.languages,
      this.languageList,
      this.contentRating,
      this.imDbRating,
      this.imDbRatingVotes,
      this.metacriticRating,
      this.ratings,
      this.wikipedia,
      this.posters,
      this.images,
      this.trailer,
      this.boxOffice,
      this.tagline,
      this.keywords,
      this.keywordList,
      this.similars,
      this.tvSeriesInfo,
      this.tvEpisodeInfo,
      this.errorMessage});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    originalTitle = json['originalTitle'];
    fullTitle = json['fullTitle'];
    type = json['type'];
    year = json['year'];
    image = json['image'];
    releaseDate = json['releaseDate'];
    runtimeMins = json['runtimeMins'];
    runtimeStr = json['runtimeStr'];
    plot = json['plot'];
    plotLocal = json['plotLocal'];
    plotLocalIsRtl = json['plotLocalIsRtl'];
    awards = json['awards'];
    directors = json['directors'];
    if (json['directorList'] != null) {
      directorList = <DirectorList>[];
      json['directorList'].forEach((v) {
        directorList!.add(DirectorList.fromJson(v));
      });
    }
    writers = json['writers'];
    if (json['writerList'] != null) {
      writerList = <WriterList>[];
      json['writerList'].forEach((v) {
        writerList!.add(WriterList.fromJson(v));
      });
    }
    stars = json['stars'];
    if (json['starList'] != null) {
      starList = <StarList>[];
      json['starList'].forEach((v) {
        starList!.add(StarList.fromJson(v));
      });
    }
    if (json['actorList'] != null) {
      actor = <Actor>[];
      json['actorList'].forEach((v) {
        actor!.add(Actor.fromJson(v));
      });
    }
    fullCast = json['fullCast'];
    genres = json['genres'];
    if (json['genreList'] != null) {
      genreList = <GenreList>[];
      json['genreList'].forEach((v) {
        genreList!.add(GenreList.fromJson(v));
      });
    }
    companies = json['companies'];
    if (json['companyList'] != null) {
      companyList = <CompanyList>[];
      json['companyList'].forEach((v) {
        companyList!.add(CompanyList.fromJson(v));
      });
    }
    countries = json['countries'];
    if (json['countryList'] != null) {
      countryList = <CountryList>[];
      json['countryList'].forEach((v) {
        countryList!.add(CountryList.fromJson(v));
      });
    }
    languages = json['languages'];
    if (json['languageList'] != null) {
      languageList = <LanguageList>[];
      json['languageList'].forEach((v) {
        languageList!.add(LanguageList.fromJson(v));
      });
    }
    contentRating = json['contentRating'];
    imDbRating = json['imDbRating'];
    imDbRatingVotes = json['imDbRatingVotes'];
    metacriticRating = json['metacriticRating'];
    ratings =
        json['ratings'] != null ? Ratings.fromJson(json['ratings']) : null;
    wikipedia = json['wikipedia'];
    posters = json['posters'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    trailer =
        json['trailer'] != null ? Trailer.fromJson(json['trailer']) : null;
    boxOffice = json['boxOffice'] != null
        ? BoxOffice.fromJson(json['boxOffice'])
        : null;
    tagline = json['tagline'];
    keywords = json['keywords'];
    keywordList = json['keywordList'].cast<String>();
    if (json['similars'] != null) {
      similars = <Similars>[];
      json['similars'].forEach((v) {
        similars!.add(Similars.fromJson(v));
      });
    }
    tvSeriesInfo = json['tvSeriesInfo'];
    tvEpisodeInfo = json['tvEpisodeInfo'];
    errorMessage = json['errorMessage'];
  }
}

class DirectorList {
  String? id;
  String? name;

  DirectorList({this.id, this.name});

  DirectorList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Actor {
  String? id;
  String? image;
  String? name;
  String? asCharacter;

  Actor({this.id, this.image, this.name, this.asCharacter});

  Actor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    asCharacter = json['asCharacter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['asCharacter'] = asCharacter;
    return data;
  }
}

class GenreList {
  String? key;
  String? value;

  GenreList({this.key, this.value});

  GenreList.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class Ratings {
  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  String? imDb;
  String? metacritic;
  String? theMovieDb;
  String? rottenTomatoes;
  String? filmAffinity;
  String? errorMessage;

  Ratings(
      {this.imDbId,
      this.title,
      this.fullTitle,
      this.type,
      this.year,
      this.imDb,
      this.metacritic,
      this.theMovieDb,
      this.rottenTomatoes,
      this.filmAffinity,
      this.errorMessage});

  Ratings.fromJson(Map<String, dynamic> json) {
    imDbId = json['imDbId'];
    title = json['title'];
    fullTitle = json['fullTitle'];
    type = json['type'];
    year = json['year'];
    imDb = json['imDb'];
    metacritic = json['metacritic'];
    theMovieDb = json['theMovieDb'];
    rottenTomatoes = json['rottenTomatoes'];
    filmAffinity = json['filmAffinity'];
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imDbId'] = imDbId;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['type'] = type;
    data['year'] = year;
    data['imDb'] = imDb;
    data['metacritic'] = metacritic;
    data['theMovieDb'] = theMovieDb;
    data['rottenTomatoes'] = rottenTomatoes;
    data['filmAffinity'] = filmAffinity;
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class Images {
  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  List<Items>? items;
  String? errorMessage;

  Images(
      {this.imDbId,
      this.title,
      this.fullTitle,
      this.type,
      this.year,
      this.items,
      this.errorMessage});

  Images.fromJson(Map<String, dynamic> json) {
    imDbId = json['imDbId'];
    title = json['title'];
    fullTitle = json['fullTitle'];
    type = json['type'];
    year = json['year'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imDbId'] = imDbId;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['type'] = type;
    data['year'] = year;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class Items {
  String? title;
  String? image;

  Items({this.title, this.image});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    return data;
  }
}

class Trailer {
  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  String? videoId;
  String? videoTitle;
  String? videoDescription;
  String? thumbnailUrl;
  Null? uploadDate;
  String? link;
  String? linkEmbed;
  String? errorMessage;

  Trailer(
      {this.imDbId,
      this.title,
      this.fullTitle,
      this.type,
      this.year,
      this.videoId,
      this.videoTitle,
      this.videoDescription,
      this.thumbnailUrl,
      this.uploadDate,
      this.link,
      this.linkEmbed,
      this.errorMessage});

  Trailer.fromJson(Map<String, dynamic> json) {
    imDbId = json['imDbId'];
    title = json['title'];
    fullTitle = json['fullTitle'];
    type = json['type'];
    year = json['year'];
    videoId = json['videoId'];
    videoTitle = json['videoTitle'];
    videoDescription = json['videoDescription'];
    thumbnailUrl = json['thumbnailUrl'];
    uploadDate = json['uploadDate'];
    link = json['link'];
    linkEmbed = json['linkEmbed'];
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imDbId'] = imDbId;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['type'] = type;
    data['year'] = year;
    data['videoId'] = videoId;
    data['videoTitle'] = videoTitle;
    data['videoDescription'] = videoDescription;
    data['thumbnailUrl'] = thumbnailUrl;
    data['uploadDate'] = uploadDate;
    data['link'] = link;
    data['linkEmbed'] = linkEmbed;
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class BoxOffice {
  String? budget;
  String? openingWeekendUSA;
  String? grossUSA;
  String? cumulativeWorldwideGross;

  BoxOffice(
      {this.budget,
      this.openingWeekendUSA,
      this.grossUSA,
      this.cumulativeWorldwideGross});

  BoxOffice.fromJson(Map<String, dynamic> json) {
    budget = json['budget'];
    openingWeekendUSA = json['openingWeekendUSA'];
    grossUSA = json['grossUSA'];
    cumulativeWorldwideGross = json['cumulativeWorldwideGross'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['budget'] = budget;
    data['openingWeekendUSA'] = openingWeekendUSA;
    data['grossUSA'] = grossUSA;
    data['cumulativeWorldwideGross'] = cumulativeWorldwideGross;
    return data;
  }
}

class Similars {
  String? id;
  String? title;
  String? image;
  String? imDbRating;

  Similars({this.id, this.title, this.image, this.imDbRating});

  Similars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imDbRating = json['imDbRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['imDbRating'] = imDbRating;
    return data;
  }
}

class StarList {
  String? id;
  String? name;

  StarList({this.id, this.name});

  StarList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class CountryList {
  String? key;
  String? value;

  CountryList({this.key, this.value});

  CountryList.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class WriterList {
  String? id;
  String? name;

  WriterList({this.id, this.name});

  WriterList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class CompanyList {
  String? id;
  String? name;

  CompanyList({this.id, this.name});

  CompanyList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class LanguageList {
  String? key;
  String? value;

  LanguageList({this.key, this.value});

  LanguageList.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}
