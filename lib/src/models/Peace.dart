import 'package:dama_common/src/models/Position.dart';

class Peace {
  Position position;
  bool isWhite = false;
  bool isLady = false;

  void changeLady() {
    isLady = true;
  }

  Peace({
    required this.position,
    this.isWhite = false,
    this.isLady = false,
  });
}
