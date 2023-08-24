import 'package:dartz/dartz.dart';
import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

import '../../../core/error/failure.dart';
import '../../../core/use_case/use_case.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameter> {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameter parameter) async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
