@deprecated
import 'package:dama_common/src/models/Position.dart';

import '../typedefs/Typedefs.dart';
import '../models/models.dart';

Board initializeBoard() {
  var isEmpty = true;
  return List.generate(8, (l) {
    return List.generate(
      8,
      (c) {
        isEmpty = !isEmpty;
        if (c == 0) isEmpty = !isEmpty;
        return l < 3 && !isEmpty
            ? Peace(position: Position(row: l, column: c), isWhite: true)
            : (l > 4 && !isEmpty
                ? Peace(
                    position: Position(
                    row: l,
                    column: c,
                  ))
                : null);
      },
    );
  });
}
// extension BoardExtension on Board {
//   void swap(int rowFrom, int columnFrom, int rowTo, columnTo) {
//     this[rowTo][columnTo] = this[rowFrom][columnFrom];
//     this[rowFrom][columnFrom] = null;
//   }

//   void capture(int row, int column) {
//     this[row][column] = null;
//   }

//   List<List<Map<String, bool>?>> get toMap =>
//       map((r) => r.map((c) => c?.toMap()).toList()).toList();
// }
