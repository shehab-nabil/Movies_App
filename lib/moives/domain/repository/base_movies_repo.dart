import 'package:movies_app/moives/domain/entities/movies.dart';

abstract class BaseMoviesRepo {
  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();
}
