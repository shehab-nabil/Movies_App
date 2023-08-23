part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  //now playing movies
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  //popular movies
  final List<Movie> popularMovies;
  final RequestState popularMoviesState;
  final String popularMoviesMessage;
  //Top rated
  final List<Movie> topRetedMovies;
  final RequestState topRetedMoviesState;
  final String topRetedMoviesMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.loading,
    this.popularMoviesMessage = '',
    this.topRetedMovies = const [],
    this.topRetedMoviesState = RequestState.loading,
    this.topRetedMoviesMessage = '',
  });
  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestState? popularMoviesState,
    String? popularMoviesMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularMoviesState: popularMoviesState ?? this.popularMoviesState,
      popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
      topRetedMovies: topRatedMovies ?? topRetedMovies,
      topRetedMoviesState: topRatedState ?? topRetedMoviesState,
      topRetedMoviesMessage: topRatedMessage ?? topRetedMoviesMessage,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingState,
        popularMovies,
        popularMoviesState,
        popularMoviesMessage,
        topRetedMovies,
        topRetedMoviesState,
        topRetedMoviesMessage,
      ];
}
