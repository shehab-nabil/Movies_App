import 'package:get_it/get_it.dart';
import 'package:movies_app/moives/data/data_source/movies_remote_data_source.dart';
import 'package:movies_app/moives/data/repository/movies_repo.dart';
import 'package:movies_app/moives/domain/repository/base_movies_repo.dart';
import 'package:movies_app/moives/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_app/moives/domain/usecase/get_top_rated_movies_usecase.dart';

import '../../moives/domain/usecase/get_now_playing_movies_usecase.dart';
import '../../moives/presentaion/controller/bloc/movies_bloc.dart';

// final servicesLocator = GetIt.instance;
final GetIt servicesLocator = GetIt.instance;

class ServicesLocator {
  void init() {
    //Bloc

    servicesLocator.registerFactory(() =>
        MoviesBloc(servicesLocator(), servicesLocator(), servicesLocator()));

    // use cases
    servicesLocator.registerLazySingleton(
        () => GetNowPlayingMoviesUseCase(servicesLocator()));
    servicesLocator.registerLazySingleton(
        () => GetPopularMoviesUseCase(servicesLocator()));
    servicesLocator.registerLazySingleton(
        () => GetTopRatedMoviesUseCase(servicesLocator()));
    // repository
    servicesLocator.registerLazySingleton<BaseMoviesRepo>(
        () => MoviesRepo(servicesLocator()));

    // data source
    servicesLocator.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesRemoteDataSource());
  }
}
