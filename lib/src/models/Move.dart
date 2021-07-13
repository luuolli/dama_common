import 'dart:convert';

import 'package:dama_common/dama_common.dart';

/// # Move
/// Movement made by `Player`
class Move {
  final Position positionFrom;
  final Position positionTo;
  final bool isLady;

  Move({
    required this.positionFrom,
    required this.positionTo,
    required this.isLady,
  });

  /// Convert object `Move` into `Map`.
  /// ```json
  /// {
  ///   "rowFrom":1,
  ///   "rowTo":1,
  ///   "colFrom":1,
  ///   "colTo":1,
  ///   "isLady":false
  /// }
  /// ```
  Map<String, dynamic> toMap() {
    return {
      'positionFrom': positionFrom.toMap(),
      'positionTo': positionTo.toMap(),
      'isLady': isLady,
    };
  }

  /// Convert object `Move` into `Map`.
  /// ```json
  /// {
  ///   "rowFrom":1,
  ///   "rowTo":1,
  ///   "colFrom":1,
  ///   "colTo":1,
  ///   "isLady":false
  /// }
  /// ```
  String toJson() => json.encode(toMap());

  /// Convert data `Map` into object `Move`
  factory Move.fromMap(Map<String, dynamic> map) {
    return Move(
      positionFrom: Position.fromMap(map['positionFrom']),
      positionTo: Position.fromMap(map['positionTo']),
      isLady: map['isLady'],
    );
  }

  /// Convert `String` json into object `Move`.
  factory Move.fromJson(String source) => Move.fromMap(jsonDecode(source));

  @override
  String toString() =>
      'Move(positionFrom: ${positionFrom.toMap()}, positionTo:${positionTo.toMap()} isLady:$isLady)';
}
