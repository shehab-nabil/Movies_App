import 'package:movies_app/moives/domain/entities/movies.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.title,
      required super.id,
      required super.backdropPath,
      required super.overview,
      required super.genreIds,
      required super.voteAverage,
      required super.releaseDate});
  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      title: json['title'],
      id: json['id'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      voteAverage: json['vote_average'],
      releaseDate: json['release_date']);
}
