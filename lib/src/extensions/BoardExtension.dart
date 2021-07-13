import 'dart:convert';

import '../models/models.dart';
import '../constants/Typedefs.dart';

extension BoardExtension on Board {
  /// Swap position of `Peace`
  void swap(Move play) {
    firstWhere((peace) => peace.position == play.positionFrom).position =
        play.positionTo;
  }

  /// Capture `Peace` of `Board`
  void capture(Position position) {
    removeWhere((peace) => peace.position == position);
  }

  /// Convert object `Board` into `Map`.
  /// ```json
  /// [
  ///   [
  ///     peace.toMap(),
  ///     ...
  ///   ],
  ///   ...
  /// ]
  /// ```
  BoardMap toMap() {
    return map((peace) => peace.toMap()).toList();
  }

  /// Convert object `Board` into `String` json.
  String toJson() => json.encode(toMap());
}
