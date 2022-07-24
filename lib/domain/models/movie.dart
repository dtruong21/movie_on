// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String? id;
  final String? title;
  final String? fullTitle;
  final String? year;
  final String? releaseState;
  final String? imageUrl;

  const Movie(
      {this.id,
      this.title,
      this.fullTitle,
      this.year,
      this.releaseState,
      this.imageUrl});

  @override
  List<Object> get props {
    return [
      id ?? "",
      title ?? "",
      fullTitle ?? "",
      year ?? "",
      releaseState ?? "",
      imageUrl ?? "",
    ];
  }

  @override
  bool get stringify => true;
  
}
