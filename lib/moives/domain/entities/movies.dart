// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String title;
  final int id;
  final String backdropPath;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.title,
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.genreIds,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props {
    return [
      title,
      id,
      backdropPath,
      overview,
      genreIds,
      voteAverage,
      releaseDate,
    ];
  }
}
