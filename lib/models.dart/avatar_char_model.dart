class AvatarCharacters {
  int? id;
  String? name;
  String? image;
  Bio? bio;
  PhysicalDescription? physicalDescription;
  PersonalInformation? personalInformation;
  PoliticalInformation? politicalInformation;
  ChronologicalInformation? chronologicalInformation;

  AvatarCharacters(
      {this.id,
      this.name,
      this.image,
      this.bio,
      this.physicalDescription,
      this.personalInformation,
      this.politicalInformation,
      this.chronologicalInformation});

  AvatarCharacters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    bio = json['bio'] != null ? new Bio.fromJson(json['bio']) : null;
    physicalDescription = json['physicalDescription'] != null
        ? new PhysicalDescription.fromJson(json['physicalDescription'])
        : null;
    personalInformation = json['personalInformation'] != null
        ? new PersonalInformation.fromJson(json['personalInformation'])
        : null;
    politicalInformation = json['politicalInformation'] != null
        ? new PoliticalInformation.fromJson(json['politicalInformation'])
        : null;
    chronologicalInformation = json['chronologicalInformation'] != null
        ? new ChronologicalInformation.fromJson(
            json['chronologicalInformation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    if (this.bio != null) {
      data['bio'] = this.bio!.toJson();
    }
    if (this.physicalDescription != null) {
      data['physicalDescription'] = this.physicalDescription!.toJson();
    }
    if (this.personalInformation != null) {
      data['personalInformation'] = this.personalInformation!.toJson();
    }
    if (this.politicalInformation != null) {
      data['politicalInformation'] = this.politicalInformation!.toJson();
    }
    if (this.chronologicalInformation != null) {
      data['chronologicalInformation'] =
          this.chronologicalInformation!.toJson();
    }
    return data;
  }
}

class Bio {
  List<String>? alternativeNames;
  String? nationality;
  String? ethnicity;
  List<String>? ages;
  String? born;
  List<String>? died;

  Bio(
      {this.alternativeNames,
      this.nationality,
      this.ethnicity,
      this.ages,
      this.born,
      this.died});

  Bio.fromJson(Map<String, dynamic> json) {
    alternativeNames = json['alternativeNames'].toString() as List<String>?;
    nationality = json['nationality'];
    ethnicity = json['ethnicity'];
    ages = json['ages'].cast<String>();
    born = json['born'];
    died = json['died'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alternativeNames'] = this.alternativeNames;
    data['nationality'] = this.nationality;
    data['ethnicity'] = this.ethnicity;
    data['ages'] = this.ages;
    data['born'] = this.born;
    data['died'] = this.died;
    return data;
  }
}

class PhysicalDescription {
  String? gender;
  String? eyeColor;
  String? hairColor;
  String? skinColor;

  PhysicalDescription(
      {this.gender, this.eyeColor, this.hairColor, this.skinColor});

  PhysicalDescription.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    eyeColor = json['eyeColor'];
    hairColor = json['hairColor'];
    skinColor = json['skinColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['eyeColor'] = this.eyeColor;
    data['hairColor'] = this.hairColor;
    data['skinColor'] = this.skinColor;
    return data;
  }
}

class PersonalInformation {
  String? loveInterst;
  List<String>? allies;
  List<String>? enemies;
  List<String>? weaponsOfChoice;
  List<String>? fightingStyles;

  PersonalInformation(
      {this.loveInterst,
      this.allies,
      this.enemies,
      this.weaponsOfChoice,
      this.fightingStyles});

  PersonalInformation.fromJson(Map<String, dynamic> json) {
    loveInterst = json['loveInterst'];
    allies = json['allies'].cast<String>();
    enemies = json['enemies'].cast<String>();
    weaponsOfChoice = json['weaponsOfChoice'].cast<String>();
    fightingStyles = json['fightingStyles'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loveInterst'] = this.loveInterst;
    data['allies'] = this.allies;
    data['enemies'] = this.enemies;
    data['weaponsOfChoice'] = this.weaponsOfChoice;
    data['fightingStyles'] = this.fightingStyles;
    return data;
  }
}

class PoliticalInformation {
  List<String>? profession;
  List<String>? position;
  String? predecessor;
  String? successor;
  List<String>? affiliations;

  PoliticalInformation(
      {this.profession,
      this.position,
      this.predecessor,
      this.successor,
      this.affiliations});

  PoliticalInformation.fromJson(Map<String, dynamic> json) {
    profession = json['profession'].cast<String>();
    position = json['position'].cast<String>();
    predecessor = json['predecessor'];
    successor = json['successor'];
    affiliations = json['affiliations'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profession'] = this.profession;
    data['position'] = this.position;
    data['predecessor'] = this.predecessor;
    data['successor'] = this.successor;
    data['affiliations'] = this.affiliations;
    return data;
  }
}

class ChronologicalInformation {
  String? firstAppearance;
  List<String>? lastAppearance;
  List<String>? voicedBy;

  ChronologicalInformation(
      {this.firstAppearance, this.lastAppearance, this.voicedBy});

  ChronologicalInformation.fromJson(Map<String, dynamic> json) {
    firstAppearance = json['firstAppearance'];
    lastAppearance = json['lastAppearance'].cast<String>();
    voicedBy = json['voicedBy'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstAppearance'] = this.firstAppearance;
    data['lastAppearance'] = this.lastAppearance;
    data['voicedBy'] = this.voicedBy;
    return data;
  }
}
