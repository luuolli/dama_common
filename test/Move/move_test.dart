import 'package:dama_common/src/models/models.dart';
import 'package:test/test.dart';

import '../Mocks/json_mock.dart';

void main() {
  test('Move peace', () async {
    var map = await jsonToString('Move');
    var move = Move.fromMap(map);

    print(move.toMap());
  });
}
