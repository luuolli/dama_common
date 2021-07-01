import '../typedefs/Typedefs.dart';

extension MessagesExtension on Messages {
  MessagesMap toMap() {
    return map((e) => e.toMap()).toList();
  }
}
