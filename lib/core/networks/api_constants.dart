class ApiConstants {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = '854b49811de33d94f56bc9da6fbc7682';
  static const nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
}
