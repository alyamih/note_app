enum ENotesCount {
  often("Often"),
  sometimes("Sometimes"),
  rarely("Rarely");

  const ENotesCount(this.text);
  final String text;
}

class UserItem {
  String? name;
  ENotesCount? type;
  bool? nootificationOn;

  UserItem({this.name, this.type, this.nootificationOn});

  factory UserItem.fromJson(Map<String, dynamic> parsedJson) {
    return UserItem(
      name: parsedJson['name'] ?? "",
      type: ENotesCount.values.byName(parsedJson['type']),
      nootificationOn: parsedJson['nootificationOn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "type": type!.name,
      "nootificationOn": nootificationOn
    };
  }
}
