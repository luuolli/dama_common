import '../models/models.dart';
import '../typedefs/Typedefs.dart';

extension BoardExtension on Board {
  void swap(Play play) {
    this[play.rowTo][play.colTo] = this[play.rowFrom][play.colFrom];
    this[play.rowFrom][play.colFrom] = null;
  }

  void capture(int row, int column) {
    this[row][column] = null;
  }
}
