import 'dart:convert';

class Item {
  String? id;
  String? title;
  String? fullTitle;
  String? year;
  String? releaseState;
  String? image;
  dynamic runtimeMins;
  dynamic runtimeStr;
  dynamic plot;
  dynamic contentRating;
  dynamic imDbRating;
  dynamic imDbRatingCount;
  dynamic metacriticRating;
  dynamic genres;
  List<dynamic>? genreList;
  dynamic directors;
  List<dynamic>? directorList;
  dynamic stars;
  List<dynamic>? starList;

  Item({
    this.id,
    this.title,
    this.fullTitle,
    this.year,
    this.releaseState,
    this.image,
    this.runtimeMins,
    this.runtimeStr,
    this.plot,
    this.contentRating,
    this.imDbRating,
    this.imDbRatingCount,
    this.metacriticRating,
    this.genres,
    this.genreList,
    this.directors,
    this.directorList,
    this.stars,
    this.starList,
  });

  @override
  String toString() {
    return 'Item(id: $id, title: $title, fullTitle: $fullTitle, year: $year, releaseState: $releaseState, image: $image, runtimeMins: $runtimeMins, runtimeStr: $runtimeStr, plot: $plot, contentRating: $contentRating, imDbRating: $imDbRating, imDbRatingCount: $imDbRatingCount, metacriticRating: $metacriticRating, genres: $genres, genreList: $genreList, directors: $directors, directorList: $directorList, stars: $stars, starList: $starList)';
  }

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        id: data['id'] as String?,
        title: data['title'] as String?,
        fullTitle: data['fullTitle'] as String?,
        year: data['year'] as String?,
        releaseState: data['releaseState'] as String?,
        image: data['image'] as String?,
        runtimeMins: data['runtimeMins'] as dynamic,
        runtimeStr: data['runtimeStr'] as dynamic,
        plot: data['plot'] as dynamic,
        contentRating: data['contentRating'] as dynamic,
        imDbRating: data['imDbRating'] as dynamic,
        imDbRatingCount: data['imDbRatingCount'] as dynamic,
        metacriticRating: data['metacriticRating'] as dynamic,
        genres: data['genres'] as dynamic,
        genreList: data['genreList'] as List<dynamic>?,
        directors: data['directors'] as dynamic,
        directorList: data['directorList'] as List<dynamic>?,
        stars: data['stars'] as dynamic,
        starList: data['starList'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'fullTitle': fullTitle,
        'year': year,
        'releaseState': releaseState,
        'image': image,
        'runtimeMins': runtimeMins,
        'runtimeStr': runtimeStr,
        'plot': plot,
        'contentRating': contentRating,
        'imDbRating': imDbRating,
        'imDbRatingCount': imDbRatingCount,
        'metacriticRating': metacriticRating,
        'genres': genres,
        'genreList': genreList,
        'directors': directors,
        'directorList': directorList,
        'stars': stars,
        'starList': starList,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Item.fromJson(String data) {
    return Item.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}
