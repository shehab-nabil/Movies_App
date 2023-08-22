import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetTopRatedMoviesUseCase(this.baseMoviesRepo);

  Future<List<Movie>> excute() async {
    return await baseMoviesRepo.getTopRatedMovies();
  }
}
