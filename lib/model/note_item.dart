enum EImportance {
  very("Very important"),
  important("Important"),
  medium("Medium importance"),
  not("Not important");

  const EImportance(this.text);
  final String text;
}

class NoteItem {
  String? id;
  String? name;
  DateTime? date;
  EImportance? importance;
  String? category;
  String? comment;

  NoteItem(
      {this.id,
      this.name,
      this.date,
      this.category,
      this.comment,
      this.importance});

  factory NoteItem.fromJson(Map<String, dynamic> parsedJson) {
    return NoteItem(
      id: parsedJson['id'] ?? "",
      name: parsedJson['name'] ?? "",
      date: DateTime.tryParse(parsedJson['date']),
      category: parsedJson['category'] ?? "",
      comment: parsedJson['comment'] ?? "",
      importance: EImportance.values.byName(parsedJson['importance']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "date": date.toString(),
      "comment": comment,
      "category": category,
      "importance": importance!.name,
    };
  }
}
