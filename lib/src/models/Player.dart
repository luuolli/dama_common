import 'dart:convert';

class Player {
  final String id;
  final String username;
  final String roomId;
  Player({
    required this.id,
    required this.username,
    required this.roomId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'roomId': roomId,
    };
  }

  factory Player.fromMap(Map<String, dynamic> map, [String clientId = '']) {
    return Player(
      id: clientId,
      username: map['username'],
      roomId: map['roomId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Player.fromJson(String source, [String clientId = '']) =>
      Player.fromMap(json.decode(source), clientId);

  @override
  String toString() => 'Player(id: $id, username: $username, roomId: $roomId)';
}
