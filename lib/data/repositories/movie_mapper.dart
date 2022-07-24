import 'package:movie_on/data/models/movie_response/item.dart';
import 'package:movie_on/data/models/movie_response/movie_response.dart';
import 'package:movie_on/domain/models/movie.dart';
import 'package:movie_on/domain/models/movie.dart';
import 'package:movie_on/framework/mapper.dart';

class MovieMapper implements Mapper<Item, Movie> {
  @override
  Movie convert(Item object) {
    return Movie(
        id: object.id,
        title: object.title,
        fullTitle: object.fullTitle,
        year: object.year,
        releaseState: object.releaseState,
        imageUrl: object.image);
  }
}
