class Manga {
  String name;
  String score;

  Manga({this.name, this.score});

  factory Manga.fromJson(Map<String, dynamic> json) {
    return Manga(
      name: json['_source']['manga']['name'],
      score: json['_score'].toString()
    );
  }
}
