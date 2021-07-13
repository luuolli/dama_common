import 'dart:convert';

import '../constants/Typedefs.dart';

extension MessagesExtension on Messages {
  MessagesMap toMap() => map((e) => e.toMap()).toList();

  String toJson() => json.encode(toMap());
}
