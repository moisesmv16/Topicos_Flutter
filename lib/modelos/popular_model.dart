// Generated by https://quicktype.io

class TopLevel {//Popular model
  String? backdropPath;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  double? voteAverage;
  int? voteCount;

  TopLevel({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

 factory TopLevel.fromMap(Map<String,dynamic>map){
  return TopLevel(
    backdropPath: map['backdrop:path'],
    id: map['id'],
    originalLanguage: map['original_language'],
    originalTitle: map['original_title'],
    overview: map['overview'],
    popularity: map['popularity'],
    posterPath: map['poster_path'],
    releaseDate: map['release_date'],
    title: map['title'],
    voteAverage: map['vote_average'],
    voteCount: map['vote_count'],
  );
 }
}
