import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepo);

  Future<List<Movie>> excute() async {
    return await baseMoviesRepo.getNowPlaying();
  }
}
