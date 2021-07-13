import 'dart:convert';

/// # Posiotion
/// Position of `Peace` in `Board`.
class Position {
  final int row;
  final int column;

  Position({
    required this.row,
    required this.column,
  });

  /// Convert object `Position` into `Map`.
  /// ```json
  /// {
  ///   "row":1,
  ///   "column":1,
  /// }
  /// ```
  Map<String, dynamic> toMap() {
    return {
      'row': row,
      'column': column,
    };
  }

  /// Convert data `Map` into object `Position`.
  factory Position.fromMap(Map<String, dynamic> map) {
    return Position(
      row: map['row'] as int,
      column: map['column'] as int,
    );
  }

  /// Convert object `Position` into json `String`.
  /// ```
  /// '{"row":1,"column":1}'
  /// ```
  String toJson() => json.encode(toMap());

  /// Convert `String` json into object `Position`.
  factory Position.fromJson(String source) {
    return Position.fromMap(json.decode(source));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Position && other.row == row && other.column == column;
  }

  @override
  String toString() => 'Position(row: $row, column: $column)';
}
