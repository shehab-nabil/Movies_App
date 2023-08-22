import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  Future<List<Movie>> excute() async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
