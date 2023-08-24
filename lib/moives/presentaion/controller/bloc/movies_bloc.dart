import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/use_case/use_case.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/moives/domain/entities/movies.dart';
import 'package:movies_app/moives/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_app/moives/domain/usecase/get_top_rated_movies_usecase.dart';
import '../../../domain/usecase/get_now_playing_movies_usecase.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase(NoParameter());
    result.fold(
        (l) => emit(state.copyWith(
            nowPlayingMessage: l.message, nowPlayingState: RequestState.error)),
        (r) => emit(state.copyWith(
            nowPlayingState: RequestState.loaded, nowPlayingMovies: r)));
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase(NoParameter());
    result.fold(
        (l) => emit(state.copyWith(
            popularMoviesMessage: l.message,
            popularMoviesState: RequestState.error)),
        (r) => emit(state.copyWith(
            popularMoviesState: RequestState.loaded, popularMovies: r)));
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase(NoParameter());
    result.fold(
        (l) => emit(state.copyWith(
            topRatedMoviesMessage: l.message,
            topRatedMoviesState: RequestState.error)),
        (r) => emit(state.copyWith(
            topRatedMoviesState: RequestState.loaded, topRatedMovies: r)));
  }
}
