class Movie {
  final String title;
  final int id;
  final String backdropPath;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;

  Movie(
      {required this.title,
      required this.id,
      required this.backdropPath,
      required this.overview,
      required this.genreIds,
      required this.voteAverage});
}
