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
        id: json["id"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        voteAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
      );
}
