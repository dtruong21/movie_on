import 'package:movie_on/data/models/movie_response/movie_response.dart';
import 'package:movie_on/data/repositories/movie_mapper.dart';
import 'package:movie_on/domain/models/movie.dart';
import 'package:movie_on/framework/mapper.dart';

class ListMovieMapper implements Mapper<MovieResponse, List<Movie>> {
  @override
  List<Movie> convert(MovieResponse object) {
    List<Movie> movies = [];
    for (var item in object.items!) {
      movies.add(MovieMapper().convert(item));
    }
    return movies;
  }
}
