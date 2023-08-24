import 'package:dartz/dartz.dart';
import 'package:movies_app/moives/domain/entities/movie_details.dart';
import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/entities/recommendation.dart';
import 'package:movies_app/moives/domain/usecase/get_movie_details_usecase.dart';
import 'package:movies_app/moives/domain/usecase/get_recommendation_usecase.dart';

import '../../../core/error/failure.dart';

abstract class BaseMoviesRepo {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameter parameter);
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter parameter);
}
