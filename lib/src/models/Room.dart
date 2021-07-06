import 'dart:math';

import '../typedefs/Typedefs.dart';
import 'models.dart';

class Room {
  final String id;
  late Player? firstPlayer;
  late Player? secondPlayer;
  Board board = initializeBoard();
  bool turn;

  Room({
    required this.id,
    this.firstPlayer,
    this.secondPlayer,
    this.turn = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstPlayer': firstPlayer?.toMap(),
      'secondPlayer': secondPlayer?.toMap(),
      'turn': turn,
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map['id'],
      firstPlayer:
          map['firstPlayer'] ? Player.fromMap(map['firstPlayer']) : null,
      secondPlayer:
          map['secondPlayer'] ? Player.fromMap(map['secondPlayer']) : null,
      turn: map['turn'],
    );
  }

  static String get randomId {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(
      8,
      (index) => _chars[r.nextInt(_chars.length)],
    ).join().toUpperCase();
  }

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

  void changeTurn() {
    turn = !turn;
  }
}
