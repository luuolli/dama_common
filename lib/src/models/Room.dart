import 'dart:convert';
import 'dart:math';

import '../constants/Typedefs.dart';
import 'models.dart';

/// # Room
/// Room contains two `Players` and one `Board`
class Room {
  final String id;
  late Player? firstPlayer;
  late Player? secondPlayer;
  Board board = initialize();
  bool turn;

  Room({
    required this.id,
    this.firstPlayer,
    this.secondPlayer,
    this.turn = false,
  });

  /// Convert object `Room` into `Map`.
  /// ```json
  /// {
  ///   "id":"roomId",
  ///   "firstPlayer": player.toMap(),
  ///   "secondPlayer": player.toMap(),
  ///   "board": board.toMap(),
  ///   "turn":false
  /// }
  /// ```
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstPlayer': firstPlayer?.toMap(),
      'secondPlayer': secondPlayer?.toMap(),
      'board': board.toMap(),
      'turn': turn,
    };
  }

  /// Convert object `Move` into json `String`.
  /// ```
  /// '{"id":"roomId","firstPlayer":1,"secondPlayer":1,"colTo":1,"isLady":false}'
  /// ```
  String toJson() => json.encode(toMap());

  /// Convert data `Map` into object `Room`
  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map['id'],
      firstPlayer: map['firstPlayer'] != null
          ? Player.fromMap(map['firstPlayer'])
          : null,
      secondPlayer: map['secondPlayer'] != null
          ? Player.fromMap(map['secondPlayer'])
          : null,
      turn: map['turn'],
    );
  }

  /// Get random id for `Room`.
  static String get randomId {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(
      8,
      (index) => _chars[r.nextInt(_chars.length)],
    ).join().toUpperCase();
  }

  /// Add  `Player` in slot if is empty.
  bool addPlayer(Player player) {
    if (firstPlayer == null) {
      firstPlayer = player;
      return true;
    } else if (secondPlayer == null) {
      secondPlayer = player;
      return true;
    }

    return false;
  }

  /// Change turn, toggle true or false.
  ///
  /// Case `true`, firstPlayer.
  /// Case `false`, secondPlayer.
  void changeTurn() {
    turn = !turn;
  }
}
