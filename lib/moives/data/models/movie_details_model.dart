import 'package:movies_app/moives/data/models/genres_model.dart';
import 'package:movies_app/moives/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.genres,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          backdropPath: json['backdrop_path'],
          id: json['id'],
          genres: List<GenresModel>.from(
              json['genres'].map((e) => GenresModel.fromJson(e))),
          overview: json['overview'],
          releaseDate: json['release_date'],
          runtime: json['runtime'],
          title: json['title'],
          voteAverage: json['vote_average'].toDouble());
}
