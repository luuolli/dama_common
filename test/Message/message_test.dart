import 'package:dama_common/src/models/models.dart';
import 'package:test/test.dart';

import '../Mocks/json_mock.dart';

void main() {
  test('from map', () async {
    var map = await jsonToString('Message');
    var message = Message.fromMap(map);

    print(message.toMap());
  });
}
