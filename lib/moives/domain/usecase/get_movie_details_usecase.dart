// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/moives/domain/entities/movie_details.dart';

import '../../../core/use_case/use_case.dart';
import '../repository/base_movies_repo.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetails, MovieDetailsParameter> {
  final BaseMoviesRepo baseMoviesRepo;

  GetMovieDetailsUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameter parameter) async {
    return await baseMoviesRepo.getMovieDetails(parameter);
  }
}

class MovieDetailsParameter extends Equatable {
  final int movieId;

  const MovieDetailsParameter({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
