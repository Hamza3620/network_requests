class BaseBallModel {
  String? rank;
  String? player;
  String? ageThatYear;
  int? hits;
  int? year;
  String? bats;
  int? id;

  BaseBallModel(
      {this.rank,
      this.player,
      this.ageThatYear,
      this.hits,
      this.year,
      this.bats,
      this.id});

  BaseBallModel.fromJson(Map<String, dynamic> json) {
    rank = json['Rank'];
    player = json['Player'];
    ageThatYear = json['AgeThatYear'];
    hits = json['Hits'];
    year = json['Year'];
    bats = json['Bats'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Rank'] = rank;
    data['Player'] = player;
    data['AgeThatYear'] = ageThatYear;
    data['Hits'] = hits;
    data['Year'] = year;
    data['Bats'] = bats;
    data['id'] = id;
    return data;
  }
}
