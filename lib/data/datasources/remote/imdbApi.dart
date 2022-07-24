import 'package:movie_on/data/models/movie_response/movie_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../../framework/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'imdbApi.g.dart';

@RestApi(baseUrl: kApiDomain)
abstract class ImdbApi {
  factory ImdbApi(Dio dio, {String baseUrl}) = _ImdbApi;

  @GET("/en/API/ComingSoon/{key_api}")
  Future<HttpResponse<MovieResponse>> getComingSoon(
      {@Path("lang") String lang = "en",
      @Path("key_api") String kApi = kApiKey});
}
