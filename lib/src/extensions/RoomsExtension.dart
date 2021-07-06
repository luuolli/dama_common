import 'package:dama_common/src/models/Room.dart';

import '../typedefs/Typedefs.dart';
export 'BoardExtension.dart' show BoardExtension;
export 'PlayersExtension.dart' show PlayersExtension;

extension RoomExtension on Rooms {
  String get randomId {
    return 'randomId';
  }

  List<Map<String, dynamic>> toMap() {
    return entries.map((room) => room.value.toMap()).toList();
  }

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
