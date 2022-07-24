import 'package:dio/dio.dart';

abstract class Resource<T> {
  final T? data;
  final DioError? error;

  const Resource({this.data, this.error});
}

class ResourceSuccess<T> extends Resource<T> {
  const ResourceSuccess(DioError error) : super(error: error);
}

class ResourceFailed<T> extends Resource<T> {
  const ResourceFailed(DioError error) : super(error: error);
}
