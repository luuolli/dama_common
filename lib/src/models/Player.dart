import 'dart:convert';

import 'dart:math';

/// # Player
class Player {
  final String id;
  final String username;
  final String roomId;

  Player({
    required this.id,
    required this.username,
    required this.roomId,
  });

  /// Get random id for `Room`.
  static String get randomId {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(
      16,
      (index) => _chars[r.nextInt(_chars.length)],
    ).join().toUpperCase();
  }

  /// Convert object `Player` into `Map`.
  /// ```json
  /// {
  ///   "id":"clientId",
  ///   "username":"username",
  ///   "roomid":"roomId"
  /// }
  /// ```
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'roomId': roomId,
    };
  }

  /// Convert object `Player` into json `String`.
  /// ```
  /// '{"id":"clientId","username":"username","roomid":"roomId"}'
  /// ```
  String toJson() => json.encode(toMap());

  /// Convert `Map` json into object `Player`
  ///
  /// `clientId` paramter clientId.
  factory Player.fromMapWithClientId(
    Map<String, dynamic> map,
    String clientId,
  ) {
    return Player(
      id: clientId,
      username: map['username'],
      roomId: map['roomId'],
    );
  }

  /// Convert `String` json into object `Player`
  ///
  /// `clientId` paramter clientId.
  factory Player.fromJsonWithClientId(String source, String clientId) {
    return Player.fromMapWithClientId(
      json.decode(source),
      clientId,
    );
  }

  /// Convert `Map` json into object `Player`
  factory Player.fromMap(Map<String, dynamic> map) {
    return Player(
      id: map['id'],
      username: map['username'],
      roomId: map['roomId'],
    );
  }

  /// Convert `String` json into object `Player`
  factory Player.fromJson(String source) => Player.fromMap(json.decode(source));

  @override
  String toString() => 'Player(id: $id, username: $username, roomId: $roomId)';
}
