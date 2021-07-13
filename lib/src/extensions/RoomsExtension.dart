import '../constants/Typedefs.dart';

export 'BoardExtension.dart' show BoardExtension;
export 'PlayersExtension.dart' show PlayersExtension;

/// ## Extensions to `Rooms`
/// ``` dart
/// rooms.toMap()
/// ```
/// ``` dart
/// rooms.removePlayer(String id)
/// ```
extension RoomExtension on Rooms {
  /// Convert Rooms into map
  List<Map<String, dynamic>> toMap() {
    return entries.map((room) => room.value.toMap()).toList();
  }

  /// Remove player from any room
  List<String>? removePlayer(String id) {
    var roomIds = <String>[];
    forEach((key, value) {
      if (value.firstPlayer?.id == id) {
        value.firstPlayer = null;
        roomIds.add(key);
      }
      if (value.secondPlayer?.id == id) {
        value.secondPlayer = null;
        roomIds.add(key);
      }
    });
    return roomIds.isEmpty ? null : roomIds;
  }
}
