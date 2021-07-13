import 'package:dama_common/dama_common.dart';
import 'package:dama_common/src/models/models.dart';
import 'package:test/test.dart';

import '../Mocks/json_mock.dart';

void main() {
  test('Enter room', () async {
    var map = await jsonToString('EnterRoomMock');
    var player = Player.fromMap(map);
    print(player.toString());
  });

  test('Enter room with client id', () async {
    var map = await jsonToString('EnterRoomMock');
    var player = Player.fromMapWithClientId(map, Player.randomId);
    print(player.toString());
  });

  test('json', () async {
    var map = await jsonToString('Room');
    var room = Room.fromMap(map);
    print(room.toMap());
  });
}
