import 'package:dama_common/src/models/models.dart';

import '../constants/Typedefs.dart';

/// # Board
/// Initialize List of `Peace`.
Board initialize() {
  var isEmpty = true;
  var peaces = <Peace>[];

  List.generate(
    8,
    (row) {
      List.generate(
        8,
        (column) {
          isEmpty = !isEmpty;
          if (column == 0) isEmpty = !isEmpty;
          if (row < 3 && !isEmpty) {
            var peace = Peace(
              position: Position(row: row, column: column),
              isWhite: true,
            );
            peaces.add(peace);
          } else if (row > 4 && !isEmpty) {
            var peace = Peace(position: Position(row: row, column: column));
            peaces.add(peace);
          }
        },
      );
    },
  );

  return peaces;
}
