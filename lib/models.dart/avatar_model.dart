class AvatarInfoModel {
  String? synopsis;
  String? yearsAired;
  List<String>? genres;
  List<Creators>? creators;
  int? id;

  AvatarInfoModel(
      {this.synopsis, this.yearsAired, this.genres, this.creators, this.id});

  AvatarInfoModel.fromJson(Map<String, dynamic> json) {
    synopsis = json['synopsis'];
    yearsAired = json['yearsAired'];
    genres = json['genres'].cast<String>();
    if (json['creators'] != null) {
      creators = <Creators>[];
      json['creators'].forEach((v) {
        creators!.add(Creators.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['synopsis'] = synopsis;
    data['yearsAired'] = yearsAired;
    data['genres'] = genres;
    if (creators != null) {
      data['creators'] = creators!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    return data;
  }
}

class Creators {
  String? name;
  String? url;

  Creators({this.name, this.url});

  Creators.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
