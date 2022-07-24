import 'dart:html';

import 'package:movie_on/data/datasources/remote/imdbApi.dart';
import 'package:movie_on/data/repositories/list_movie_mapper.dart';
import 'package:movie_on/domain/models/movie.dart';
import 'package:movie_on/domain/repositories/movie_repository.dart';
import 'package:movie_on/framework/Resource.dart';
import 'package:dio/dio.dart';

class MovieRepositoryImpl implements MovieRepository {
  final ImdbApi _api;

  const MovieRepositoryImpl(this._api)

  @override
  Future<Resource<List<Movie>>> getComingSoonList() async{
    try{

      final httpResponse = await _api.getComingSoon();
      if(httpResponse.response.statusCode == HttpStatus.ok){
        return ResourceSuccess(ListMovieMapper().convert(httpResponse.data));
      }
      return ResourceFailed(
        DioError(
          response: Response(
              data: 'Something went wrong',
              statusCode: 404,
              requestOptions: RequestOptions(path: ''),
            ),
            requestOptions: RequestOptions(path: ''),
        )
      );

    } on DioError catch(e){
        return ResourceFailed(e);
    }
  }
}
