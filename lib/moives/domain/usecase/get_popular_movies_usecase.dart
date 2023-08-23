import 'package:dartz/dartz.dart';
import 'package:movies_app/core/use_case/use_case.dart';
import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase extends BaseUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, List<Movie>>> call() async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
