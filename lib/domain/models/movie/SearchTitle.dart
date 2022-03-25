class SearchTitle {
  String? searchType;
  String? expression;
  List<Results>? results;
  String? errorMessage;

  SearchTitle(
      {this.searchType, this.expression, this.results, this.errorMessage});

  SearchTitle.fromJson(Map<String, dynamic> json) {
    searchType = json['searchType'];
    expression = json['expression'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['searchType'] = searchType;
    data['expression'] = expression;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class Results {
  String? id;
  String? resultType;
  String? image;
  String? title;
  String? description;

  Results({this.id, this.resultType, this.image, this.title, this.description});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resultType = json['resultType'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['resultType'] = resultType;
    data['image'] = image;
    data['title'] = title;
    data['description'] = description;
    return data;
  }
}
