import '../constants/Typedefs.dart';

extension PlayersExtension on Players {
  PlayersMap toMap() {
    return map((p) => p.toMap()).toList();
  }
}
