library dama_common.typedefs;

import '../models/models.dart';
export '../extensions/extensions.dart';

typedef Players = List<Player>;
typedef Messages = List<Message>;
typedef Board = List<List<Peace?>>;
typedef Rooms = Map<String, Room>;
typedef BoardMap = List<List<Map<String, bool>?>>;
typedef MessagesMap = List<Map<String, dynamic>>;
typedef PlayersMap = List<Map<String, dynamic>>;
