import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/moives/domain/entities/recommendation.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

import '../../../core/use_case/use_case.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameter> {
  final BaseMoviesRepo baseMoviesRepo;

  GetRecommendationUseCase(this.baseMoviesRepo);
  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameter parameter) async {
    return await baseMoviesRepo.getRecommendation(parameter);
  }
}

class RecommendationParameter extends Equatable {
  final int movieId;

  const RecommendationParameter({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
