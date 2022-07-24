import 'package:movie_on/domain/models/movie.dart';
import 'package:movie_on/framework/Resource.dart';

abstract class MovieRepository {
  Future<Resource<List<Movie>>> getComingSoonList();
}
