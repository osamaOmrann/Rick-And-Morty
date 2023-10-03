class Character{
  late int charId;
  late String name;
  late String status;
  late String image;
  late List<dynamic> origins;
  late String species;
  late List<dynamic> appearance;
  late String gender;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json['id'];
    name = json['name'];
    status = json['status'];
    image = json['image'];
    origins = json['origin'];
    species = json['species'];
    appearance = json['episode'];
    gender = json['gender'];
  }
}