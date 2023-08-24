import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/moives/data/data_source/movies_remote_data_source.dart';
import 'package:movies_app/moives/domain/entities/movie_details.dart';
import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/entities/recommendation.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';
import 'package:movies_app/moives/domain/usecase/get_movie_details_usecase.dart';
import 'package:movies_app/moives/domain/usecase/get_recommendation_usecase.dart';

class MoviesRepo extends BaseMoviesRepo {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepo(this.baseMoviesRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMoviesRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMoviesRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameter parameter) async {
    final result = await baseMoviesRemoteDataSource.getMovieDetails(parameter);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter parameter) async {
    final result =
        await baseMoviesRemoteDataSource.getRecommendation(parameter);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }
}
