import 'dart:convert';

import 'package:dama_common/src/models/Position.dart';

/// # Peace
/// Peace of `Board`
class Peace {
  Position position;
  bool isWhite = false;
  bool isLady = false;

  Peace({
    required this.position,
    this.isWhite = false,
    this.isLady = false,
  });

  /// Convert peace into lady
  void changeLady() {
    isLady = true;
  }

  /// Convert data `Map` into object `Peace`
  factory Peace.fromMap(Map<String, dynamic> map) {
    return Peace(
      position: Position.fromMap(map['position']),
      isWhite: map['isWhite'],
      isLady: map['isLady'],
    );
  }

  /// Convert `String` json into object `Peace`
  factory Peace.fromJson(String source) => Peace.fromMap(json.decode(source));

  /// Convert object `Peace` into `Map`
  /// ```json
  /// {
  ///   "position":{
  ///     "row":1,
  ///     "column":1,
  ///   },
  ///   "isWhite":false,
  ///   "isLady":false
  /// }
  /// ```
  Map<String, dynamic> toMap() {
    return {
      'position': position.toMap(),
      'isWhite': isWhite,
      'isLady': isLady,
    };
  }

  /// Convert object `Peace` into json `String`
  /// ```
  /// '{"position":{"row":1,"column":1,},"isWhite":false,"isLady":false}'
  /// ```
  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Peace(position: $position, isWhite: $isWhite, isLady: $isLady)';
  }
}
