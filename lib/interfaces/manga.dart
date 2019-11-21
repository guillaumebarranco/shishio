class Manga {
  String name;
  String score;
  String mainHero;
  String description;
  String author;
  String type;
  String country;
  bool isFinished;

  Manga(
      {this.name,
      this.description,
      this.mainHero,
      this.author,
      this.type,
      this.country,
      this.isFinished,
      this.score});

  factory Manga.fromJson(Map<String, dynamic> json) {
    return Manga(
        name: json['_source']['manga']['name'],
        description: json['_source']['manga']['description'],
        mainHero: json['_source']['manga']['mainHero']['name'],
        author: json['_source']['manga']['authors'][0]['name'],
        type: json['_source']['manga']['type'],
        country: json['_source']['manga']['type'],
        isFinished: json['_source']['manga']['isFinished'],
        score: json['_score'].toString());
  }
}
