import 'dart:convert';

class Play {
  final int rowFrom;
  final int rowTo;
  final int colFrom;
  final int colTo;
  final bool isLady;

  Play({
    required this.rowFrom,
    required this.rowTo,
    required this.colFrom,
    required this.colTo,
    required this.isLady,
  });

  Map<String, dynamic> toMap() {
    return {
      'rowFrom': rowFrom,
      'rowTo': rowTo,
      'colFrom': colFrom,
      'colTo': colTo,
      'isLady': isLady,
    };
  }

  factory Play.fromMap(Map<String, dynamic> map) {
    return Play(
      rowFrom: map['rowFrom'],
      rowTo: map['rowTo'],
      colFrom: map['colFrom'],
      colTo: map['colTo'],
      isLady: map['isLady'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Play.fromJson(String source) => Play.fromMap(jsonDecode(source));
}
