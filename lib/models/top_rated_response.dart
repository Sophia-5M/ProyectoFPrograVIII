// To parse this JSON data, do
//
//     final nowPlayingResponse = nowPlayingResponseFromMap(jsonString);

import 'dart:convert';

import 'models.dart';
import 'movie.dart';
export '';

class TopRatedResponse {
  TopRatedResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory TopRatedResponse.fromJson(String str) =>
      TopRatedResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopRatedResponse.fromMap(Map<String, dynamic> json) =>
      TopRatedResponse(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  static Movie fromJson2(Map<String, dynamic> json) {
    return Movie(
      posterPath: json['poster_path'] as String,
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      id: json['id'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toMap() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
