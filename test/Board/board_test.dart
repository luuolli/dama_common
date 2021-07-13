import 'package:dama_common/dama_common.dart';
import 'package:test/test.dart';

void main() {
  test('Initialize board', () {
    var board = initialize();
    board.forEach((peace) {
      print(peace.position);
    });
  });

  test('Swap position', () {
    var board = initialize();
    var positionFrom = Position(row: 2, column: 7);
    var positionTo = Position(row: 3, column: 7);
    var move = Move(
      positionFrom: positionFrom,
      positionTo: positionTo,
      isLady: false,
    );
    board.swap(move);
    board.forEach((peace) {
      print(peace.position);
    });
  });

  test('Capture', () {
    var board = initialize();
    var position = Position(row: 2, column: 7);
    board.capture(position);

    board.forEach((peace) {
      print(peace.position);
    });
  });
}
