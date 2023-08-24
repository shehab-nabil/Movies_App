import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/moives/domain/entities/movie_details.dart';
import 'package:movies_app/moives/domain/usecase/get_movie_details_usecase.dart';
import 'package:movies_app/moives/domain/usecase/get_recommendation_usecase.dart';

import '../../../../../core/utils/enums.dart';
import '../../../../domain/entities/recommendation.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetailsEvent);
    on<GetMovieRecommendationEvent>(_getMovieRecommendationEvent);
  }

  FutureOr<void> _getMovieDetailsEvent(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameter(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
              movieDetailsMessage: l.message,
              movieDetailsState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
            movieDetailsState: RequestState.loaded, movieDetail: r)));
  }

  FutureOr<void> _getMovieRecommendationEvent(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getRecommendationUseCase(
        RecommendationParameter(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
            recommendationMessage: l.message,
            recommendationState: RequestState.error)),
        (r) => emit(state.copyWith(
            recommendationState: RequestState.loaded, recommendation: r)));
  }
}
