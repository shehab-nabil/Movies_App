class ApiConstants {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = '854b49811de33d94f56bc9da6fbc7682';

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';

  static String movieDetailsPath(int movieId) =>
      '$baseUrl/movie/$movieId?api_key=$apiKey';

  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";
  //now playing
  static const nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  //popular
  static const popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  //top movies
  static const topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
}
